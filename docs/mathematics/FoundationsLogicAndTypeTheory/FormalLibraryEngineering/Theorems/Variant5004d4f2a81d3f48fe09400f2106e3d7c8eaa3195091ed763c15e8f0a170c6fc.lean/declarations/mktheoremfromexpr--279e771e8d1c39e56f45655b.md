# mkTheoremFromExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ad00bbd2a89ff813253b1d7b83c85be5744c67d962fca1e39af09f9f3bfb6fb",
  "kind": "def",
  "lexical_name": "mkTheoremFromExpr",
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
  "slug": "mktheoremfromexpr--279e771e8d1c39e56f45655b",
  "source": {
    "blob": "46a348406fecc28002a9f23519348b5c80aa515d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:279e771e8d1c39e56f45655b86533e198d5478288ce3d35d5171d85a1e9f9766",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ad00bbd2a89ff813253b1d7b83c85be5744c67d962fca1e39af09f9f3bfb6fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkTheoremFromExpr (e : Expr) : MetaM Theorem := do
  let (pattern, (rhs, adaptation)) ← mkPatternFromExprWithKey e [] selectEqKey (zetaReduceLHSOnly := true)
  let expr ← wrapProof pattern.varTypes.size e adaptation
  let perm := isPerm pattern.varTypes.size pattern.pattern rhs
  return { expr, pattern, rhs, perm }

/--
Environment extension storing a set of `Sym.Simp` theorems.
Each named set gets its own extension, created by `registerSymSimpAttr`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46a348406fecc28002a9f23519348b5c80aa515d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
