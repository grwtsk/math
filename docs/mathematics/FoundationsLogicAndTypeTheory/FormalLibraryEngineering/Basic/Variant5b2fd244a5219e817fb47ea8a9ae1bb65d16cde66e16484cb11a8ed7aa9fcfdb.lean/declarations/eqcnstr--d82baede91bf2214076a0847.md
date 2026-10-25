# eqCnstr?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9d057ccfa9482c65d29ecf71db6460b753a87c8fa15e31db59d13719745053f",
  "kind": "def",
  "lexical_name": "eqCnstr?",
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
  "slug": "eqcnstr--d82baede91bf2214076a0847",
  "source": {
    "blob": "860020d15b203eeb3a2fd7047cd4734278118fa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d82baede91bf2214076a0847aa8438ac8ff6925d5f3a8e98e744936da69543b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9d057ccfa9482c65d29ecf71db6460b753a87c8fa15e31db59d13719745053f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def eqCnstr? (e : Expr) : M (Option (Int.Internal.Linear.Expr × Int.Internal.Linear.Expr)) := OptionT.run do
  let_expr Eq α a b ← e | failure
  let_expr Int ← α | failure
  let a ← toLinearExpr a
  let b ← toLinearExpr b
  match a, b with
  /-
  We do not want to convert `x = y` into `x + -1*y = 0`.
  Similarly, we don't want to convert `x = 3` into `x + -3 = 0`.
  `grind` and other tactics have better support for this kind of equalities.
  -/
  | .var _, .var _ | .var _, .num _ | .num _, .var _ => failure
  | _, _ => return (a, b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `860020d15b203eeb3a2fd7047cd4734278118fa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
