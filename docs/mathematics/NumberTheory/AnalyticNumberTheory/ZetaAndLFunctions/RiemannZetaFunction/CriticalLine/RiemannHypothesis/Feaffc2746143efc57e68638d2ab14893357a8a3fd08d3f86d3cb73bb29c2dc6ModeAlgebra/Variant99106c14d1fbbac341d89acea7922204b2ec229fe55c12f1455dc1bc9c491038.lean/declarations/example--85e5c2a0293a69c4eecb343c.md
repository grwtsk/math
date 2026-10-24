# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1cbb8bdcb3bd12db3a1ee8ac4c73e6e7409e3abf37b233711f7b10a4762fb77",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--85e5c2a0293a69c4eecb343c",
  "source": {
    "blob": "e3ea16111db0752f400800faa1f36522ee4aa510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12,
    "line": 10,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Feaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6ModeAlgebra/Variant99106c14d1fbbac341d89acea7922204b2ec229fe55c12f1455dc1bc9c491038.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85e5c2a0293a69c4eecb343c97a774ebcf9d437fe47299cbbe5d3e6406574c55",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Feaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6ModeAlgebra/Variant99106c14d1fbbac341d89acea7922204b2ec229fe55c12f1455dc1bc9c491038.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1cbb8bdcb3bd12db3a1ee8ac4c73e6e7409e3abf37b233711f7b10a4762fb77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–12.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (y : ℝ) (h : 2*y-3≠0) :
  -15+30*y-8*y^2 = (2*y-3)*(9+12/(2*y-3)-4*y) := by
  linear_combination -12 * (mul_inv_cancel₀ h)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Feaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6ModeAlgebra/Variant99106c14d1fbbac341d89acea7922204b2ec229fe55c12f1455dc1bc9c491038.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Feaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6ModeAlgebra/Variant99106c14d1fbbac341d89acea7922204b2ec229fe55c12f1455dc1bc9c491038.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3ea16111db0752f400800faa1f36522ee4aa510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
