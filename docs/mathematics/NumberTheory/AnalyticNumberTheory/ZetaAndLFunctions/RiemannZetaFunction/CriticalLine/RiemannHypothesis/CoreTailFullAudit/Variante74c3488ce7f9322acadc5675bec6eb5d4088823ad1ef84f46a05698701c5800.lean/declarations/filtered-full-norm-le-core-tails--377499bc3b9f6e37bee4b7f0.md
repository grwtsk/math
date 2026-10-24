# filtered_full_norm_le_core_tails

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd422dd670d764bfb51a12a2b65cb3f0bcbb1e60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88e15d5a-3080-0621-a35f-21396799d1f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fd18782-060e-3067-7a8b-7fb2a4a20648",
  "kind": "theorem",
  "lexical_name": "filtered_full_norm_le_core_tails",
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
  "slug": "filtered-full-norm-le-core-tails--377499bc3b9f6e37bee4b7f0",
  "source": {
    "blob": "dd422dd670d764bfb51a12a2b65cb3f0bcbb1e60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:377499bc3b9f6e37bee4b7f08ce524d0906ff692294dc42d87d45aeca628ccb2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fd18782-060e-3067-7a8b-7fb2a4a20648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filtered_full_norm_le_core_tails (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)
    (Y : ℝ) (hY : 1 ≤ Y) :
    ‖sourceMultiplier ε h hε hsmall hh (fullResidualVector X ε hX)‖ ≤
      ‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y := by
  let n : FullH := ((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
    ((Iio (0 : ℝ)).indicator (logResidual X ε))
  let p : FullH := ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
    ((Ioi (Real.log Y)).indicator (logResidual X ε))
  let M : FullH →L[ℂ] FullH := sourceMultiplier ε h hε hsmall hh
  let B : ℝ := (4 / 3 : ℝ) * Real.exp (1 / 4)
  have hn : ‖M n‖ ≤ B * ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ := by
    have he := sourceMultiplier_norm_le ε h hε hsmall hh n
    rw [show ‖n‖ = ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ from
      logResidual_negative_norm X ε hX] at he
    exact he
  have hp : ‖M p‖ ≤ B *
      ((1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y) :=
    (sourceMultiplier_norm_le ε h hε hsmall hh p).trans
      (mul_le_mul_of_nonneg_left (logResidual_positive_norm_le X ε hX Y hY) (by positivity))
  have he : fullResidualVector X ε hX = n + coreResidualVector X ε hX Y + p :=
    fullResidualVector_decomposition X ε hX Y hY
  change ‖M (fullResidualVector X ε hX)‖ ≤ _
  rw [he, map_add, map_add]
  calc
    ‖M n + M (coreResidualVector X ε hX Y) + M p‖ ≤
        ‖M n‖ + ‖M (coreResidualVector X ε hX Y)‖ + ‖M p‖ :=
      (norm_add_le _ _).trans (add_le_add (norm_add_le _ _) le_rfl)
    _ ≤ B * ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ +
        ‖M (coreResidualVector X ε hX Y)‖ +
        B * ((1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y) :=
      add_le_add (add_le_add hn le_rfl) hp
    _ = _ := by dsimp only [M, B]; ring

end
end CoreTailSplitScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @CoreTailSplitScratch.fullResidualVector
#print CoreTailSplitScratch.fullResidualVector
#print axioms CoreTailSplitScratch.fullResidualVector
#check @CoreTailSplitScratch.coreResidualVector
#print CoreTailSplitScratch.coreResidualVector
#print axioms CoreTailSplitScratch.coreResidualVector
#check @CoreTailSplitScratch.fullResidualVector_ae
#print CoreTailSplitScratch.fullResidualVector_ae
#print axioms CoreTailSplitScratch.fullResidualVector_ae
#check @CoreTailSplitScratch.coreResidualVector_ae
#print CoreTailSplitScratch.coreResidualVector_ae
#print axioms CoreTailSplitScratch.coreResidualVector_ae
#check @CoreTailSplitScratch.fullResidualVector_decomposition
#print CoreTailSplitScratch.fullResidualVector_decomposition
#print axioms CoreTailSplitScratch.fullResidualVector_decomposition
#check @CoreTailSplitScratch.filtered_full_norm_le_core_tails
#print CoreTailSplitScratch.filtered_full_norm_le_core_tails
#print axioms CoreTailSplitScratch.filtered_full_norm_le_core_tails
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd422dd670d764bfb51a12a2b65cb3f0bcbb1e60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
