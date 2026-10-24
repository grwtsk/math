# abs_calE2_le_maj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d6fd06e00cad8d39301d7f9084d8c358b8400b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:348ed7ed-733b-2903-2864-3676ee518596",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd05ddaf-ab1c-6bee-3c57-223d32cb3169",
  "kind": "theorem",
  "lexical_name": "abs_calE2_le_maj",
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
  "slug": "abs-cale2-le-maj--7e34e6965d7f50b5f43f67f3",
  "source": {
    "blob": "2d6fd06e00cad8d39301d7f9084d8c358b8400b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e34e6965d7f50b5f43f67f3b78f0427edf58445ca476016f219e03243058b0b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd05ddaf-ab1c-6bee-3c57-223d32cb3169`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_calE2_le_maj (hνc : Continuous ν) (hF : LocalHypsCoreW cϱ p F) (hν : NuBound p B ν)
    (hB0 : 0 ≤ B) (hT : 2 * π ≤ p.T) :
    |calE2 p F ν| ≤ ∫ q in (sqI p)ᶜ, majK2 cϱ p ν q := by
  have hfi : Integrable (trG2integrand p F ν) := trG2integrand_integrable hνc hF hν hB0 hT
  unfold calE2
  rw [← Real.norm_eq_abs]
  refine (norm_integral_le_integral_norm _).trans ?_
  refine integral_mono_of_nonneg (Filter.Eventually.of_forall fun q => norm_nonneg _)
    (majK2_integrable hνc hF hν hB0 hT).integrableOn
    (Filter.Eventually.of_forall fun q => ?_)
  show ‖trG2integrand p F ν q‖ ≤ _
  rw [Real.norm_eq_abs]
  exact abs_trG2integrand_le_majK2 hF q

/-- **The Fubini core of the 𝓔₂ majorant bound** (§5.3), with the two 1-D estimates abstracted:
if  ∫ ψ(τ−a)|ν(τ)| dτ ≤ M₁  for every a ∈ [T,2T]  and  ∫_{Iᶜ} (Σ_k ψ(τ−τ_k))|ν(τ)| dτ ≤ M₂,  then
∬_{(I×I)ᶜ} majK2(ν) ≤ 2·L²·M₁·M₂  ((I×I)ᶜ ⊆ (Iᶜ×ℝ) ∪ (ℝ×Iᶜ) and two iterated integrals). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d6fd06e00cad8d39301d7f9084d8c358b8400b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
