# naturalScaleSquareModulusCongruenceL1_of_uniformPerFibre

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dd1a764-1373-23ce-0a7d-5326e30e37ad",
  "kind": "theorem",
  "lexical_name": "naturalScaleSquareModulusCongruenceL1_of_uniformPerFibre",
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
  "slug": "naturalscalesquaremoduluscongruencel1-of-uniformperfibre--a02a4862f0b578f4dfceb4fd",
  "source": {
    "blob": "4917db8c9c95ada18c0c14f579fc4e21a7448eff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 206,
    "path": "GRWTSK/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a02a4862f0b578f4dfceb4fda8200f06d12252b5bd5417e9aad5b46a1df6ca51",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dd1a764-1373-23ce-0a7d-5326e30e37ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem naturalScaleSquareModulusCongruenceL1_of_uniformPerFibre
    (hAP : UniformDyadicSquareModulusMertensTwoPointAP) :
    DyadicNaturalScaleSquareModulusCongruenceL1 := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hAP δ hδ
  refine ⟨2 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j b hb
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  let B : ℝ := C * (X ^ δ)
  have hB : 0 ≤ B := by
    dsimp [B]
    positivity
  have hL1 :
      mertensEndpointCrossCongruenceL1Mass b ≤ (b : ℝ) * B :=
    mertensEndpointCrossCongruenceL1Mass_le_endpoint_mul hB
      (fun d hd => by
        dsimp [B, X]
        exact hscale j b d hb hd)
  have hbI := Finset.mem_Ico.mp hb
  have hb2X : (b : ℝ) ≤ 2 * X := by
    dsimp [X]
    rw [pow_succ] at hbI
    exact_mod_cast (by simpa [Nat.mul_comm] using Nat.le_of_lt hbI.2 :
      b ≤ 2 * 2 ^ j)
  calc
    mertensEndpointCrossCongruenceL1Mass b ≤ (b : ℝ) * B := hL1
    _ ≤ (2 * X) * B :=
      mul_le_mul_of_nonneg_right hb2X hB
    _ = (2 * C) * X * (X ^ δ) := by
      dsimp [B]
      ring
    _ = (2 * C) * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      rfl

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensEndpointCrossCongruenceFibre_eq_zero_of_endpoint_le_square
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_reciprocalEndpointDrop_Ico
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_naturalScale
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleSquareModulusCongruenceL1_of_uniformPerFibre
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4917db8c9c95ada18c0c14f579fc4e21a7448eff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
