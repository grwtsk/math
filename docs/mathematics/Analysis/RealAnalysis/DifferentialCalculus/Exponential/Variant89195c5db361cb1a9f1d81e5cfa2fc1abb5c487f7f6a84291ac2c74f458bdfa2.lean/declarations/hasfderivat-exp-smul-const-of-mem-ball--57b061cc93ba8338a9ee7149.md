# hasFDerivAt_exp_smul_const_of_mem_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "221fc6fc0289d3953b8af70281b12e66b192ed1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:890f6cef-404b-86ca-89d5-18290fbdbef9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72d6155e-bb8a-2bf6-2e10-52047c49a0c6",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_exp_smul_const_of_mem_ball",
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
  "slug": "hasfderivat-exp-smul-const-of-mem-ball--57b061cc93ba8338a9ee7149",
  "source": {
    "blob": "221fc6fc0289d3953b8af70281b12e66b192ed1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 254,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57b061cc93ba8338a9ee7149d14afc11b2c5cbd797eeb7cb265db1f2123afe00",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72d6155e-bb8a-2bf6-2e10-52047c49a0c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_exp_smul_const_of_mem_ball (x : 𝔸) (t : 𝕊)
    (htx : t • x ∈ EMetric.ball (0 : 𝔸) (expSeries 𝕂 𝔸).radius) :
    HasFDerivAt (fun u : 𝕊 => exp 𝕂 (u • x)) (exp 𝕂 (t • x) • (1 : 𝕊 →L[𝕂] 𝕊).smulRight x) t := by
  -- TODO: prove this via `hasFDerivAt_exp_of_mem_ball` using the commutative ring
  -- `Algebra.elementalAlgebra 𝕊 x`. See https://github.com/leanprover-community/mathlib3/pull/19062 for discussion.
  have hpos : 0 < (expSeries 𝕂 𝔸).radius := (zero_le _).trans_lt htx
  rw [hasFDerivAt_iff_isLittleO_nhds_zero]
  suffices (fun (h : 𝕊) => exp 𝕂 (t • x) *
      (exp 𝕂 ((0 + h) • x) - exp 𝕂 ((0 : 𝕊) • x) - ((1 : 𝕊 →L[𝕂] 𝕊).smulRight x) h)) =ᶠ[𝓝 0]
        fun h =>
          exp 𝕂 ((t + h) • x) - exp 𝕂 (t • x) - (exp 𝕂 (t • x) • (1 : 𝕊 →L[𝕂] 𝕊).smulRight x) h by
    apply (IsLittleO.const_mul_left _ _).congr' this (EventuallyEq.refl _ _)
    rw [← hasFDerivAt_iff_isLittleO_nhds_zero (f := fun u => exp 𝕂 (u • x))
      (f' := (1 : 𝕊 →L[𝕂] 𝕊).smulRight x) (x := 0)]
    have : HasFDerivAt (exp 𝕂) (1 : 𝔸 →L[𝕂] 𝔸) ((1 : 𝕊 →L[𝕂] 𝕊).smulRight x 0) := by
      rw [ContinuousLinearMap.smulRight_apply, ContinuousLinearMap.one_apply, zero_smul]
      exact hasFDerivAt_exp_zero_of_radius_pos hpos
    exact this.comp 0 ((1 : 𝕊 →L[𝕂] 𝕊).smulRight x).hasFDerivAt
  have : Tendsto (fun h : 𝕊 => h • x) (𝓝 0) (𝓝 0) := by
    rw [← zero_smul 𝕊 x]
    exact tendsto_id.smul_const x
  have : ∀ᶠ h in 𝓝 (0 : 𝕊), h • x ∈ EMetric.ball (0 : 𝔸) (expSeries 𝕂 𝔸).radius :=
    this.eventually (EMetric.ball_mem_nhds _ hpos)
  filter_upwards [this] with h hh
  have : Commute (t • x) (h • x) := ((Commute.refl x).smul_left t).smul_right h
  rw [add_smul t h, exp_add_of_commute_of_mem_ball this htx hh, zero_add, zero_smul, exp_zero,
    ContinuousLinearMap.smulRight_apply, ContinuousLinearMap.one_apply,
    ContinuousLinearMap.smul_apply, ContinuousLinearMap.smulRight_apply,
    ContinuousLinearMap.one_apply, smul_eq_mul, mul_sub_left_distrib, mul_sub_left_distrib, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `221fc6fc0289d3953b8af70281b12e66b192ed1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
