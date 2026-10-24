# _root_.Function.HasTemperateGrowth.norm_iteratedFDeriv_le_uniform_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5828fe999a0c9969909b29d7d9996aa03199f63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 617,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/645c1e359e0039ed103848652a0a0aa34642e4709fe48dfaec4395358fdb0f17.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83d92fb2-5473-2c28-e515-fdc547c215ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b166f868-3d6c-6d34-b49e-657fd465ac76",
  "kind": "theorem",
  "lexical_name": "_root_.Function.HasTemperateGrowth.norm_iteratedFDeriv_le_uniform_aux",
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
  "slug": "root-function-hastemperategrowth-norm-iteratedfderiv-le-uniform-aux--2b1a3e1ed821817e3000d408",
  "source": {
    "blob": "c5828fe999a0c9969909b29d7d9996aa03199f63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 655,
    "line": 617,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant645c1e359e0039ed103848652a0a0aa34642e4709fe48dfaec4395358fdb0f17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b1a3e1ed821817e3000d408df8dc50782fa22540b27f96a52178094e8f7eebb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant645c1e359e0039ed103848652a0a0aa34642e4709fe48dfaec4395358fdb0f17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b166f868-3d6c-6d34-b49e-657fd465ac76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–655.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Function.HasTemperateGrowth.norm_iteratedFDeriv_le_uniform_aux {f : E → F}
    (hf_temperate : f.HasTemperateGrowth) (n : ℕ) :
    ∃ (k : ℕ) (C : ℝ) (_ : 0 ≤ C), ∀ (N : ℕ) (_ : N ≤ n) (x : E),
      ‖iteratedFDeriv ℝ N f x‖ ≤ C * (1 + ‖x‖) ^ k := by
  choose k C f using hf_temperate.2
  use (Finset.range (n + 1)).sup k
  let C' := max (0 : ℝ) ((Finset.range (n + 1)).sup' (by simp) C)
  have hC' : 0 ≤ C' := by simp only [le_refl, Finset.le_sup'_iff, true_or_iff, le_max_iff]
  use C', hC'
  intro N hN x
  rw [← Finset.mem_range_succ_iff] at hN
  refine' le_trans (f N x) (mul_le_mul _ _ (by positivity) hC')
  · simp only [Finset.le_sup'_iff, le_max_iff]
    right
    exact ⟨N, hN, rfl.le⟩
  refine' pow_le_pow (by simp only [le_add_iff_nonneg_right, norm_nonneg]) _
  exact Finset.le_sup hN
#align function.has_temperate_growth.norm_iterated_fderiv_le_uniform_aux Function.HasTemperateGrowth.norm_iteratedFDeriv_le_uniform_aux

end TemperateGrowth

section CLM

/-! ### Construction of continuous linear maps between Schwartz spaces -/


variable [NormedField 𝕜] [NormedField 𝕜']

variable [NormedAddCommGroup D] [NormedSpace ℝ D]

variable [NormedSpace 𝕜 E] [SMulCommClass ℝ 𝕜 E]

variable [NormedAddCommGroup G] [NormedSpace ℝ G] [NormedSpace 𝕜' G] [SMulCommClass ℝ 𝕜' G]

variable {σ : 𝕜 →+* 𝕜'}

/-- Create a semilinear map between Schwartz spaces.

Note: This is a helper definition for `mkCLM`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant645c1e359e0039ed103848652a0a0aa34642e4709fe48dfaec4395358fdb0f17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant645c1e359e0039ed103848652a0a0aa34642e4709fe48dfaec4395358fdb0f17.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5828fe999a0c9969909b29d7d9996aa03199f63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
