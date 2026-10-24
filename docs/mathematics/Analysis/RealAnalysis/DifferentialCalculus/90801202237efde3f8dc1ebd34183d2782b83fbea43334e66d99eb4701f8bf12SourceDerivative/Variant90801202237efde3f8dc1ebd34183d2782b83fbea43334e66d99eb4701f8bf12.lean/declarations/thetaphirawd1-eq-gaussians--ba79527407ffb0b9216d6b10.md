# thetaPhiRawD1_eq_gaussians

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d322c9779e5e2552b1183bad2c6a9f6340c90e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 418,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:287ffbb7-d2b7-ed53-4411-34088218a1a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e75b4cb-9bb6-bf1e-3c85-3136c0231f7a",
  "kind": "theorem",
  "lexical_name": "thetaPhiRawD1_eq_gaussians",
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
  "slug": "thetaphirawd1-eq-gaussians--ba79527407ffb0b9216d6b10",
  "source": {
    "blob": "2d322c9779e5e2552b1183bad2c6a9f6340c90e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 418,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba79527407ffb0b9216d6b102db72d67e2eb376f9f021b503fa14b01c0e0cb8c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e75b4cb-9bb6-bf1e-3c85-3136c0231f7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiRawD1_eq_gaussians (t : ℝ) :
    thetaPhiRawD1 t =
      (30 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
      (15 * Real.pi) * thetaGaussianSum 2 5 t -
      (8 * Real.pi ^ 3) * thetaGaussianSum 6 13 t := by
  unfold thetaPhiRawD1
  simp_rw [thetaPhiTermDeriv_eq_gaussians]
  rw [((thetaGaussianTerm_summable 4 9 t).mul_left (30 * Real.pi ^ 2) |>.sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left (15 * Real.pi))).tsum_sub
      ((thetaGaussianTerm_summable 6 13 t).mul_left (8 * Real.pi ^ 3)),
    ((thetaGaussianTerm_summable 4 9 t).mul_left (30 * Real.pi ^ 2)).tsum_sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left (15 * Real.pi)),
    tsum_mul_left, tsum_mul_left, tsum_mul_left]
  rfl

/-- Absolute integrability of every polynomially weighted actual source derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d322c9779e5e2552b1183bad2c6a9f6340c90e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
