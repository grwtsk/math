# sourcedChainComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4763ad1b696eeaa18bb5d52e7d9268fb31979d4e14511ed3daf50452710005da",
  "kind": "def",
  "lexical_name": "sourcedChainComplex",
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
  "slug": "sourcedchaincomplex--e565071c5dcabe7ba0fb5c97",
  "source": {
    "blob": "725364f5acc11389b94be1957b1ce53e810014bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 86,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e565071c5dcabe7ba0fb5c97a396b47fe5530006994dc700ca8985f8274d29b3",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4763ad1b696eeaa18bb5d52e7d9268fb31979d4e14511ed3daf50452710005da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sourcedChainComplex (k : ℕ) :
    ChainComplex (ModuleCat ℤ) ℕ :=
  ChainComplex.mk
    (ModuleCat.of ℤ ℤ)
    (ModuleCat.of ℤ (OneCellChains k))
    (ModuleCat.of ℤ ℤ)
    (ModuleCat.ofHom (differentialOne k))
    (ModuleCat.ofHom (differentialTwo k))
    (sourcedShortComplex k).zero
    (fun _ => ⟨0, 0, by simp⟩)

/-- The degree-zero chain group really is the selected one-vertex Z. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `725364f5acc11389b94be1957b1ce53e810014bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
