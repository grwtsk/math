# pow_inter_pow_covBySMul_sq_inter_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fd310d0-b109-fe75-ef34-6344bffa889b",
  "kind": "lemma",
  "lexical_name": "pow_inter_pow_covBySMul_sq_inter_sq",
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
  "slug": "pow-inter-pow-covbysmul-sq-inter-sq--6136912176f920a37e4bf52c",
  "source": {
    "blob": "c1ff56a827f718bdf3d50a3c4fafa7bdb781cad7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6136912176f920a37e4bf52c188aaf6f8b3e848988cd9030e8d1b9a43b261fbd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fd310d0-b109-fe75-ef34-6344bffa889b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_inter_pow_covBySMul_sq_inter_sq
    (hA : IsApproximateSubgroup K A) (hB : IsApproximateSubgroup L B) (hm : 2 ≤ m) (hn : 2 ≤ n) :
    CovBySMul G (K ^ (m - 1) * L ^ (n - 1)) (A ^ m ∩ B ^ n) (A ^ 2 ∩ B ^ 2) := by
  classical
  obtain ⟨F₁, hF₁, hAF₁⟩ := hA.sq_covBySMul
  obtain ⟨F₂, hF₂, hBF₂⟩ := hB.sq_covBySMul
  have := hA.one_le
  choose f hf using exists_smul_inter_smul_subset_smul_inv_mul_inter_inv_mul A B
  refine ⟨.image₂ f (F₁ ^ (m - 1)) (F₂ ^ (n - 1)), ?_, ?_⟩
  · calc
      (#(.image₂ f (F₁ ^ (m - 1)) (F₂ ^ (n - 1))) : ℝ)
      _ ≤ #(F₁ ^ (m - 1)) * #(F₂ ^ (n - 1)) := mod_cast Finset.card_image₂_le ..
      _ ≤ #F₁ ^ (m - 1) * #F₂ ^ (n - 1) := by gcongr <;> exact mod_cast Finset.card_pow_le
      _ ≤ K ^ (m - 1) * L ^ (n - 1) := by gcongr
  · calc
      A ^ m ∩ B ^ n ⊆ (F₁ ^ (m - 1) * A) ∩ (F₂ ^ (n - 1) * B) := by
        gcongr <;> apply pow_subset_pow_mul_of_sq_subset_mul <;> norm_cast <;> omega
      _ = ⋃ (a ∈ F₁ ^ (m - 1)) (b ∈ F₂ ^ (n - 1)), a • A ∩ b • B := by
        simp_rw [← smul_eq_mul, ← iUnion_smul_set, iUnion₂_inter_iUnion₂]; norm_cast
      _ ⊆ ⋃ (a ∈ F₁ ^ (m - 1)) (b ∈ F₂ ^ (n - 1)), f a b • (A⁻¹ * A ∩ (B⁻¹ * B)) := by
        gcongr; exact hf ..
      _ = (Finset.image₂ f (F₁ ^ (m - 1)) (F₂ ^ (n - 1))) * (A ^ 2 ∩ B ^ 2) := by
        simp_rw [hA.inv_eq_self, hB.inv_eq_self, ← sq]
        rw [Finset.coe_image₂, ← smul_eq_mul, ← iUnion_smul_set, biUnion_image2]
        simp_rw [Finset.mem_coe]

open Set in
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1ff56a827f718bdf3d50a3c4fafa7bdb781cad7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
