# getExplicitRelArgCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a75cb0dcfadf02cf691048b77ed13caca66b139ee4525ac262ec08a82a363c7",
  "kind": "def",
  "lexical_name": "getExplicitRelArgCore",
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
  "slug": "getexplicitrelargcore--26ede4e72cfa26b8e1619752",
  "source": {
    "blob": "af968bb0e174464397aca3c7d2a2121cf9ccb0e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variantc0f3b3d051d3493ba51217856ab1f8c2c9fb1ac383150ce0585c515ea1766590.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26ede4e72cfa26b8e16197528d908f10c090fcfa199d08939556bf29319587c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variantc0f3b3d051d3493ba51217856ab1f8c2c9fb1ac383150ce0585c515ea1766590.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a75cb0dcfadf02cf691048b77ed13caca66b139ee4525ac262ec08a82a363c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getExplicitRelArgCore (tgt rel x z : Expr) : MetaM (Expr × Expr) := do
  match rel with
  | Expr.app rel' _ => do
    let check: Bool ← do
      try
        let folded ← mkAppM' rel' #[x, z]
        isDefEq folded tgt
      catch _ =>
        pure false
    if !check then
      return (rel, x)
    else
      getExplicitRelArgCore tgt rel' x z
  | _ => return (rel ,x)

/--
`trans` applies to a goal whose target has the form `t ~ u` where `~` is a transitive relation,
that is, a relation which has a transitivity lemma tagged with the attribute [trans].

* `trans s` replaces the goal with the two subgoals `t ~ s` and `s ~ u`.
* If `s` is omitted, then a metavariable is used instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variantc0f3b3d051d3493ba51217856ab1f8c2c9fb1ac383150ce0585c515ea1766590.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variantc0f3b3d051d3493ba51217856ab1f8c2c9fb1ac383150ce0585c515ea1766590.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af968bb0e174464397aca3c7d2a2121cf9ccb0e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
