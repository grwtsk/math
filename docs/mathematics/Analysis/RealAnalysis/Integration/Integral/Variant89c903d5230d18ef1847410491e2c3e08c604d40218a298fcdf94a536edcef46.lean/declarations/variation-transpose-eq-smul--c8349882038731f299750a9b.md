# variation_transpose_eq_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4cd6d51dc28138c2a2aa05ca63204735a9a5c22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:155ff8b5-1db6-8632-11ac-19fc2b8e153f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4655110c-dc21-5c28-a84a-b96afe8fe955",
  "kind": "lemma",
  "lexical_name": "variation_transpose_eq_smul",
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
  "slug": "variation-transpose-eq-smul--c8349882038731f299750a9b",
  "source": {
    "blob": "e4cd6d51dc28138c2a2aa05ca63204735a9a5c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 187,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8349882038731f299750a9b281a290f7263b487c45bc424219a497b2212d23e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variant89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4655110c-dc21-5c28-a84a-b96afe8fe955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variation_transpose_eq_smul [Nontrivial E] {C : ℝ≥0}
    (hB : ∀ x y, ‖B x y‖₊ = C * ‖x‖₊ * ‖y‖₊) :
    (μ.transpose B).variation = C • μ.variation := by
  apply le_antisymm
  · apply (variation_transpose_le _ _).trans
    gcongr
    apply opNNNorm_le_bound _ _ (fun x ↦ opNNNorm_le_bound _ _ (fun y ↦ by simp [hB]))
  · rcases eq_or_ne C 0 with rfl | hC
    · simp [Measure.zero_le]
    suffices μ.variation ≤ C⁻¹ • (μ.transpose B).variation by
      grw [this, smul_smul, mul_inv_cancel₀ hC, one_smul]
    apply variation_le_of_forall_enorm_le (fun s hs ↦ ?_)
    have : ‖μ s‖ₑ ≤ C⁻¹ • ‖(μ.transpose B) s‖ₑ := by
      obtain ⟨x, hx⟩ : ∃ (x : E), x ≠ 0 := exists_ne 0
      have : ‖B.flip (μ s) x‖₊ ≤ ‖B.flip (μ s)‖₊ * ‖x‖₊ := le_opNNNorm _ _
      simp only [flip_apply, hB] at this
      rw [mul_right_comm, mul_le_mul_iff_left₀ (by simpa), ← le_div_iff₀' (by positivity),
        div_eq_inv_mul, ← ENNReal.coe_le_coe] at this
      exact this
    grw [this, enorm_measure_le_variation, Measure.smul_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variant89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4cd6d51dc28138c2a2aa05ca63204735a9a5c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
