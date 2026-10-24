# psiRelativeError_eventual_inverse_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a6ff19b-f693-28f5-e551-a14696bb5766",
  "kind": "theorem",
  "lexical_name": "psiRelativeError_eventual_inverse_power",
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
  "slug": "psirelativeerror-eventual-inverse-power--2813738f7b5c2b953a2a3e88",
  "source": {
    "blob": "7fb32f2d36d248deb6ab1fc829857aa778fb038c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2813738f7b5c2b953a2a3e881ec56a98b12a3367ff4b5c92f9df51f345c61c5b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a6ff19b-f693-28f5-e551-a14696bb5766`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psiRelativeError_eventual_inverse_power (n : ℕ) :
    ∃ T : ℝ, 1 ≤ T ∧ ∀ t : ℝ, T ≤ t → |psiRelativeError t| ≤ 1 / t ^ n := by
  have hz := (psiRelativeError_mul_pow_tendsto_zero n).abs
  have hb : ∀ᶠ t : ℝ in atTop, |t ^ n * psiRelativeError t| < 1 :=
    hz.eventually (Iio_mem_nhds (by norm_num : |(0 : ℝ)| < 1))
  obtain ⟨T, hT⟩ := eventually_atTop.mp hb
  refine ⟨max T 1, le_max_right _ _, ?_⟩
  intro t ht
  have ht1 : 1 ≤ t := (le_max_right T 1).trans ht
  have ht0 : 0 < t := by linarith
  have hb' := hT t ((le_max_left T 1).trans ht)
  rw [abs_mul, abs_of_pos (pow_pos ht0 n)] at hb'
  apply (le_div_iff₀ (pow_pos ht0 n)).mpr
  nlinarith

end ContinuousResearch.MediumPNTLogError

set_option pp.fullNames true
set_option pp.universes true
#check MediumPNT
#print axioms MediumPNT
#print MediumPNT
#check ContinuousResearch.MediumPNTLogError.psiRelativeError
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError
#print ContinuousResearch.MediumPNTLogError.psiRelativeError
#check ContinuousResearch.MediumPNTLogError.psiRelativeError_eq
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError_eq
#print ContinuousResearch.MediumPNTLogError.psiRelativeError_eq
#check ContinuousResearch.MediumPNTLogError.psiRelativeError_medium_bound
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError_medium_bound
#print ContinuousResearch.MediumPNTLogError.psiRelativeError_medium_bound
#check ContinuousResearch.MediumPNTLogError.power_stretched_exp_tendsto_zero
#print axioms ContinuousResearch.MediumPNTLogError.power_stretched_exp_tendsto_zero
#print ContinuousResearch.MediumPNTLogError.power_stretched_exp_tendsto_zero
#check ContinuousResearch.MediumPNTLogError.psiRelativeError_mul_pow_tendsto_zero
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError_mul_pow_tendsto_zero
#print ContinuousResearch.MediumPNTLogError.psiRelativeError_mul_pow_tendsto_zero

#check ContinuousResearch.MediumPNTLogError.psiRelativeError_eventual_inverse_power
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError_eventual_inverse_power
#print ContinuousResearch.MediumPNTLogError.psiRelativeError_eventual_inverse_power
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fb32f2d36d248deb6ab1fc829857aa778fb038c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
