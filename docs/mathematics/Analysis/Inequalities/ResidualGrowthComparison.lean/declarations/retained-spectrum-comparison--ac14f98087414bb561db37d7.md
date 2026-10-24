# retained_spectrum_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ab48b68-8648-63e2-4148-e16ada727117",
  "kind": "theorem",
  "lexical_name": "retained_spectrum_comparison",
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
  "slug": "retained-spectrum-comparison--ac14f98087414bb561db37d7",
  "source": {
    "blob": "ed3349f8a9ac51c0a9a32aa137794d40e15e33ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 20,
    "path": "GRWTSK/Analysis/Inequalities/ResidualGrowthComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac14f98087414bb561db37d70d546a9c3e55c710a3c7fdb0872a87a7679a1a87",
  "verification": {
    "reference": "docs/verification/Analysis/Inequalities/ResidualGrowthComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ab48b68-8648-63e2-4148-e16ada727117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem retained_spectrum_comparison {ι : Type*} (S : Finset ι)
    (x : ι → ℝ) (μ «λ» : ℝ) (hmean : ∑ i ∈ S, x i=(S.card:ℝ)*μ)
    (hx : ∀ i ∈ S, 0 ≤ x i) (hμ : 0 ≤ μ)
    (hmax : ∀ i ∈ S, x i ≤ «λ») {i : ι} (hi : i ∈ S) (hxi : x i=«λ») :
    (5/9:ℝ)*«λ»^3 ≤ μ^3+residual S x μ ∧
    μ^3+residual S x μ ≤ (S.card:ℝ)*«λ»^3 := by
  have h_lambda : 0 ≤ «λ» := by rw [← hxi]; exact hx i hi
  have hr := coordinate_contribution_le S x μ hmean hx hμ hi
  rw [hxi] at hr
  have hid := sharp_five_ninths_identity «λ» μ
  have hp : 0 ≤ 3*(μ-(2/3:ℝ)*«λ»)^2*(μ+«λ»/3) := by positivity
  constructor
  · nlinarith
  · have hcN : 1 ≤ S.card := Finset.one_le_card.mpr ⟨i,hi⟩
    have hc : (1:ℝ) ≤ S.card := by exact_mod_cast hcN
    have hs : (∑ i ∈ S, x i^3) ≤ (S.card:ℝ)*«λ»^3 := by
      calc
        (∑ i ∈ S, x i^3) ≤ ∑ i ∈ S, «λ»^3 := by
          apply Finset.sum_le_sum
          intro j hj
          gcongr
          · exact hx j hj
          · exact hmax j hj
        _ = (S.card:ℝ)*«λ»^3 := by simp
    unfold GRWTSK.Analysis.CenteredCubicMoment.residual
    nlinarith [pow_nonneg hμ 3, mul_nonneg (sub_nonneg.mpr hc) (pow_nonneg hμ 3)]

/-- The matrix spectral-theorem instantiation must identify λ=‖H‖² explicitly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/ResidualGrowthComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/ResidualGrowthComparison.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed3349f8a9ac51c0a9a32aa137794d40e15e33ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
