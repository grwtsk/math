# uniform_continuous_npow_on_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1b27a83-fe20-aea3-308d-74c3f927377c",
  "kind": "theorem",
  "lexical_name": "uniform_continuous_npow_on_bounded",
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
  "slug": "uniform-continuous-npow-on-bounded--082fa295e39f2e6d564c4e61",
  "source": {
    "blob": "c67d7ff404e76764131d627a10a12dbe13520f47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 702,
    "line": 684,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantfa9937dba6fd2d8fe74d3cd26ed5f1fbfdb1900294ba3d6308894a55b8b832ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:082fa295e39f2e6d564c4e61d553adf63ea850c8e001a761ba3fdf22b2808a3f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantfa9937dba6fd2d8fe74d3cd26ed5f1fbfdb1900294ba3d6308894a55b8b832ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1b27a83-fe20-aea3-308d-74c3f927377c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–702.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_continuous_npow_on_bounded (B : α) {ε : α} (hε : 0 < ε) (n : ℕ) :
    ∃ δ > 0, ∀ q r : α, |r| ≤ B → |q - r| ≤ δ → |q ^ n - r ^ n| < ε := by
  wlog! B_pos : 0 < B generalizing B
  · have ⟨δ, δ_pos, cont⟩ := this 1 zero_lt_one
    exact ⟨δ, δ_pos, fun q r hr ↦ cont q r (hr.trans (B_pos.trans zero_le_one))⟩
  have pos : 0 < 1 + ↑n * (B + 1) ^ (n - 1) := zero_lt_one.trans_le <| le_add_of_nonneg_right <|
    mul_nonneg n.cast_nonneg <| (pow_pos (B_pos.trans <| lt_add_of_pos_right _ zero_lt_one) _).le
  refine ⟨min 1 (ε / (1 + n * (B + 1) ^ (n - 1))), lt_min zero_lt_one (div_pos hε pos),
    fun q r hr hqr ↦ (abs_pow_sub_pow_le ..).trans_lt ?_⟩
  rw [le_inf_iff, le_div_iff₀ pos, mul_one_add, ← mul_assoc] at hqr
  obtain h | h := (abs_nonneg (q - r)).eq_or_lt
  · simpa only [← h, zero_mul] using hε
  refine (lt_of_le_of_lt ?_ <| lt_add_of_pos_left _ h).trans_le hqr.2
  gcongr
  · exact mul_nonneg (abs_nonneg _) n.cast_nonneg
  · exact (abs_nonneg _).trans le_sup_left
  refine max_le ?_ (hr.trans <| le_add_of_nonneg_right zero_le_one)
  exact add_sub_cancel r q ▸ (abs_add_le ..).trans (add_le_add hr hqr.1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantfa9937dba6fd2d8fe74d3cd26ed5f1fbfdb1900294ba3d6308894a55b8b832ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantfa9937dba6fd2d8fe74d3cd26ed5f1fbfdb1900294ba3d6308894a55b8b832ce.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c67d7ff404e76764131d627a10a12dbe13520f47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
