# _root_.RCLike.complexLinearIsometryEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cbbd8ed4f6d9bf0a1430d2958fe8801e3217596200ff9ec352c56ae58d1a974",
  "kind": "def",
  "lexical_name": "_root_.RCLike.complexLinearIsometryEquiv",
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
  "slug": "root-rclike-complexlinearisometryequiv--30c2b9da18020aa8f01e6d7b",
  "source": {
    "blob": "706e8d34ac3d40b14fcf7246d953fd6964408261",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 411,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant36c55b3cf65b410972ed631abef1cb74c397327c8ccb30952dc5941c59c0d930.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30c2b9da18020aa8f01e6d7bff1b2e3e203dec0e55a29dc47ae40117d9ad74ee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant36c55b3cf65b410972ed631abef1cb74c397327c8ccb30952dc5941c59c0d930.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cbbd8ed4f6d9bf0a1430d2958fe8801e3217596200ff9ec352c56ae58d1a974`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.RCLike.complexLinearIsometryEquiv {𝕜 : Type*} [RCLike 𝕜]
    (h : RCLike.im (RCLike.I : 𝕜) = 1) : 𝕜 ≃ₗᵢ[ℝ] ℂ where
  map_smul' _ _ := by simp [RCLike.smul_re, RCLike.smul_im, ofReal_mul]; ring
  norm_map' _ := by
    rw [← sq_eq_sq₀ (by positivity) (by positivity), ← normSq_eq_norm_sq, ← RCLike.normSq_eq_def',
      RCLike.normSq_apply]
    simp [normSq_add]
  __ := RCLike.complexRingEquiv h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant36c55b3cf65b410972ed631abef1cb74c397327c8ccb30952dc5941c59c0d930.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant36c55b3cf65b410972ed631abef1cb74c397327c8ccb30952dc5941c59c0d930.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `706e8d34ac3d40b14fcf7246d953fd6964408261` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
