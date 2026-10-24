# outerWeight_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5a4bccd-0c8e-ce0b-4d43-49bd0546ffbe",
  "kind": "theorem",
  "lexical_name": "outerWeight_summable",
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
  "slug": "outerweight-summable--0279e30d821c5a25155c26af",
  "source": {
    "blob": "1d56a4b88fbd630fc93073ef022ddfcaaf730e43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 53,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0279e30d821c5a25155c26af0440964057d5e20ec478173af6f95266d4e4592d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5a4bccd-0c8e-ce0b-4d43-49bd0546ffbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem outerWeight_summable (r : ℕ) : Summable (outerWeight r) := by
  apply (summable_nat_add_iff 2).mp
  have hs : Summable (fun n : ℕ => ((n+2 : ℕ) : ℝ)^(-(3/2:ℝ))) :=
    ((Real.summable_nat_rpow.mpr (by norm_num : -(3/2:ℝ)< -1)).comp_injective
      (i := fun n : ℕ => n+2) (by intro a b h; dsimp at h; omega))
  apply hs.of_norm_bounded_eventually_nat
  have hlog := isLittleO_log_rpow_rpow_atTop ((r+1:ℕ):ℝ) (s:=1/2) (by norm_num)
  have ht : Tendsto (fun n : ℕ => ((n+2 : ℕ) : ℝ)) atTop atTop :=
    tendsto_natCast_atTop_atTop.comp (tendsto_add_atTop_nat 2)
  have hb := ht.eventually (hlog.bound (by norm_num : (0:ℝ)<1))
  filter_upwards [hb] with n hn
  have hp : 0<((n+2 : ℕ) : ℝ) := by positivity
  have hlogn : 0 ≤ Real.log ((n+2 : ℕ) : ℝ) :=
    Real.log_nonneg (by exact_mod_cast (show 1≤n+2 by omega))
  have hn' : (Real.log ((n+2 : ℕ) : ℝ))^(r+1) ≤ ((n+2 : ℕ) : ℝ)^(1/2:ℝ) := by
    simpa only [Nat.cast_add, Nat.cast_one, Real.rpow_natCast, Real.norm_of_nonneg (by positivity),
      one_mul] using hn
  rw [Real.norm_of_nonneg (outerWeight_nonneg r (n+2))]
  unfold outerWeight
  apply (div_le_iff₀ (sq_pos_of_pos hp)).mpr
  have he : ((n+2 : ℕ) : ℝ)^(-(3/2:ℝ))*((n+2 : ℕ) : ℝ)^2 =
      ((n+2 : ℕ) : ℝ)^(1/2:ℝ) := by
    rw [←Real.rpow_natCast,←Real.rpow_add hp]
    norm_num
  rw [he]
  exact hn'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d56a4b88fbd630fc93073ef022ddfcaaf730e43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
