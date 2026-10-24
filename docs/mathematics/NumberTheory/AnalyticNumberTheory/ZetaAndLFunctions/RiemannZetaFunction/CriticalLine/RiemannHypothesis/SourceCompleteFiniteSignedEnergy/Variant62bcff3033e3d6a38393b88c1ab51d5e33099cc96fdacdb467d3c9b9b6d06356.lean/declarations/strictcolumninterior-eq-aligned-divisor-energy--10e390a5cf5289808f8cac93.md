# strictColumnInterior_eq_aligned_divisor_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d11005d2-dd4e-4b8c-5c5e-1ab141e5714a",
  "kind": "theorem",
  "lexical_name": "strictColumnInterior_eq_aligned_divisor_energy",
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
  "slug": "strictcolumninterior-eq-aligned-divisor-energy--10e390a5cf5289808f8cac93",
  "source": {
    "blob": "f87bba98a2517aabccc8292010f04163816c45ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteFiniteSignedEnergy/Variant62bcff3033e3d6a38393b88c1ab51d5e33099cc96fdacdb467d3c9b9b6d06356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10e390a5cf5289808f8cac938cc8011a6778eab6e754d3319ea30d0917be3d80",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteFiniteSignedEnergy/Variant62bcff3033e3d6a38393b88c1ab51d5e33099cc96fdacdb467d3c9b9b6d06356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d11005d2-dd4e-4b8c-5c5e-1ab141e5714a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictColumnInterior_eq_aligned_divisor_energy (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let N := sourceKernelCutoff A
    let K := N / (U + 1)
    let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
    let R : ℕ → ℝ := fun k => ∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
    strictColumnInterior A = -globalBaseline A +
      (∑ d ∈ Finset.Icc 1 U, realMoebius d * divisorRemainder A d) - B K * R K := by
  have hd := jointSignedRemainder_eq_divisor_remainders A hA
  rw [jointSignedRemainder_eq_covariance A hA] at hd
  have he := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA
  dsimp only at he ⊢
  linarith

/-- Square completion retains both independent rows and both signed sectors;
no favorable sign is inferred. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteFiniteSignedEnergy/Variant62bcff3033e3d6a38393b88c1ab51d5e33099cc96fdacdb467d3c9b9b6d06356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteFiniteSignedEnergy/Variant62bcff3033e3d6a38393b88c1ab51d5e33099cc96fdacdb467d3c9b9b6d06356.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f87bba98a2517aabccc8292010f04163816c45ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
