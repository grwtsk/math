# feedback_inverse_geometric_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e03b7a47-70ef-2942-a771-86604830dce4",
  "kind": "theorem",
  "lexical_name": "feedback_inverse_geometric_sum_le",
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
  "slug": "feedback-inverse-geometric-sum-le--52d33bc8fae9f7e355847d32",
  "source": {
    "blob": "d078417c858db8e26bfd9614a3c83b4acba871f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 23,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52d33bc8fae9f7e355847d32ad637264518a2fd1060bc7cbd0fd804bb7536d01",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence889c910aeeab2452b8a840d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e03b7a47-70ef-2942-a771-86604830dce4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem feedback_inverse_geometric_sum_le {ρ L : ℝ} (hρ : 0 < ρ)
    (hL : 0 < L) (hprod : 1 < ρ * L) (k : ℕ) :
    ∑ j ∈ Icc 1 k, ((ρ * L)⁻¹) ^ j ≤ 1 / (ρ * L - 1) := by
  have hp : 0 < ρ * L := mul_pos hρ hL
  have hq0 : 0 ≤ (ρ * L)⁻¹ := inv_nonneg.mpr hp.le
  have hq1 : (ρ * L)⁻¹ < 1 := (inv_lt_one₀ hp).2 hprod
  have H := geom_sum_Ico_le_of_lt_one (m := 1) (n := k + 1) hq0 hq1
  have he : (ρ * L)⁻¹ / (1 - (ρ * L)⁻¹) = 1 / (ρ * L - 1) := by
    field_simp
  have hinterval : Ico 1 (k + 1) = Icc 1 k := by
    ext j
    simp only [Finset.mem_Ico, Finset.mem_Icc]
    omega
  simpa only [hinterval, pow_one, he] using H

/-- Every inverse-shift term returns to the same leading power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence889c910aeeab2452b8a840d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d078417c858db8e26bfd9614a3c83b4acba871f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
