# shiftedActualChebyshev_mul_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88118077-7fee-ba5b-4469-094c56d2e3e1",
  "kind": "theorem",
  "lexical_name": "shiftedActualChebyshev_mul_intervalIntegrable",
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
  "slug": "shiftedactualchebyshev-mul-intervalintegrable--589ba2efdb07e7158fe88d92",
  "source": {
    "blob": "1178d01d54b20f231149c4718350dd2323bcb626",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 148,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Varianta59816a4b723e0b845538b8cdd287729bbb8faf2f97c3945a45d8806970035bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:589ba2efdb07e7158fe88d926b25f7bbc0a265ea779b9a5e717495215fb266df",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Varianta59816a4b723e0b845538b8cdd287729bbb8faf2f97c3945a45d8806970035bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88118077-7fee-ba5b-4469-094c56d2e3e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftedActualChebyshev_mul_intervalIntegrable (X : ℝ) (hX : 2 ≤ X)
    (f : ℝ → ℝ) (hf : ContinuousOn f (Icc 2 X)) :
    IntervalIntegrable (fun y => shiftedActualChebyshev y * f y) volume 2 X := by
  let c := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have hp := integrableOn_mul_sum_Icc (m := 0) (vonMangoldt : ℕ → ℝ)
    (by norm_num : (0 : ℝ) ≤ 2) hf.integrableOn_Icc
  have hb : IntegrableOn (fun y => f y * (y - c)) (Icc 2 X) :=
    (hf.mul (continuousOn_id.sub continuousOn_const)).integrableOn_Icc
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le hX]
  apply (hp.sub hb).congr_fun
  · intro y _
    change f y * (∑ n ∈ Finset.Icc 0 ⌊y⌋₊, vonMangoldt n) - f y * (y - c) = _
    rw [← Chebyshev.psi_eq_sum_Icc]
    dsimp only [shiftedActualChebyshev, c]
    ring
  · exact measurableSet_Icc

/-- The full complementary weighted term is retained, including its constant 4. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Varianta59816a4b723e0b845538b8cdd287729bbb8faf2f97c3945a45d8806970035bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Varianta59816a4b723e0b845538b8cdd287729bbb8faf2f97c3945a45d8806970035bf.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1178d01d54b20f231149c4718350dd2323bcb626` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
