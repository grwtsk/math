# explicitArgs?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8c58a5ef5d6bcb62b3f47b3ecc86856fad30e09d375107eced8a564c0b177ce",
  "kind": "def",
  "lexical_name": "explicitArgs?",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "explicitargs--4d49bf8edcabde785761ba79",
  "source": {
    "blob": "62f2f061fd441a40d57b44032a8c50c23d9101a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant5c1fc8d77f5253f4ca1eb57fd9793008bbbfcdbb305a4e3191453e5b66e0ceca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d49bf8edcabde785761ba79ea3be9c379cb856f1858ee34a07dd723905e9e87",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant5c1fc8d77f5253f4ca1eb57fd9793008bbbfcdbb305a4e3191453e5b66e0ceca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8c58a5ef5d6bcb62b3f47b3ecc86856fad30e09d375107eced8a564c0b177ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def explicitArgs? (ty : Expr) : Option (Nat × Nat) := go ty 0 0 none where
  /-- Walk down the binders of `ty`, where `idx` is the index of the current argument, `num` the
  number of explicit arguments seen so far and `lastIdx?` the index of the last one. -/
  go : Expr → Nat → Nat → Option Nat → Option (Nat × Nat)
    | .mdata _ ty, idx, num, lastIdx? => go ty idx num lastIdx?
    | .forallE _ _ body bi, idx, num, lastIdx? =>
      if bi.isExplicit then go body (idx + 1) (num + 1) (some idx)
      else go body (idx + 1) num lastIdx?
    | _, _, num, lastIdx? => lastIdx?.map (num, ·)

/-- Find the bundling map `FooCat.of` to use for the type `ty`, along with its number of explicit
arguments.

Before unfolding `ty`, we check its head constant `FooCat`, since a category can be reducibly
defined in terms of another one while still having its own `of`: `Profinite` reduces to
`CompHausLike _`, yet `↧X : Profinite` should be `Profinite.of X`, not `CompHausLike.of _ X`.
If no `.of` is found for the non-unfolded `ty`, we unfold it and try again. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant5c1fc8d77f5253f4ca1eb57fd9793008bbbfcdbb305a4e3191453e5b66e0ceca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant5c1fc8d77f5253f4ca1eb57fd9793008bbbfcdbb305a4e3191453e5b66e0ceca.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62f2f061fd441a40d57b44032a8c50c23d9101a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
