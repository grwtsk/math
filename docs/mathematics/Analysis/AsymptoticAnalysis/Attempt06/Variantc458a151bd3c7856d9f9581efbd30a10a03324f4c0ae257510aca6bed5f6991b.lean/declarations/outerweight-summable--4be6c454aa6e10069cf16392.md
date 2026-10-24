# outerWeight_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:101f82e6-6e29-ff58-44d4-a41f36b9d167",
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
  "slug": "outerweight-summable--4be6c454aa6e10069cf16392",
  "source": {
    "blob": "f21777f31ed58c262d577dd9d030fc2bd3234de3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 61,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4be6c454aa6e10069cf163924554d4882a08a011f6f0ff8739da62a7a668ff63",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:101f82e6-6e29-ff58-44d4-a41f36b9d167`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–90.

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
    have hn0 : ‖(Real.log ((n+2 : ℕ) : ℝ))^((r+1 : ℕ) : ℝ)‖ ≤
        ‖((n+2 : ℕ) : ℝ)^(1/2:ℝ)‖ := by simpa only [one_mul] using hn
    rw [Real.rpow_natCast, Real.norm_of_nonneg (pow_nonneg hlogn _),
      Real.norm_of_nonneg (Real.rpow_nonneg hp.le _)] at hn0
    exact hn0
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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f21777f31ed58c262d577dd9d030fc2bd3234de3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
