# isBigO_atTop_cosKernel_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a42dad1-00ee-17a4-0034-b2fa93df1ff2",
  "kind": "lemma",
  "lexical_name": "isBigO_atTop_cosKernel_sub",
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
  "slug": "isbigo-attop-coskernel-sub--751784971afe77ae035d7437",
  "source": {
    "blob": "013f2bdf9dd03263486c1491a907da39bbde1132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 242,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:751784971afe77ae035d7437ba230601c9fdf9f97d2839d5bf7e82035b23ceca",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a42dad1-00ee-17a4-0034-b2fa93df1ff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBigO_atTop_cosKernel_sub (a : UnitAddCircle) :
    ∃ p, 0 < p ∧ IsBigO atTop (cosKernel a · - 1) (fun x ↦ Real.exp (-p * x)) := by
  induction a using QuotientAddGroup.induction_on with | H a =>
  obtain ⟨p, hp, hp'⟩ := HurwitzKernelBounds.isBigO_atTop_F_nat_zero_sub zero_le_one
  refine ⟨p, hp, (Eventually.isBigO ?_).trans (hp'.const_mul_left 2)⟩
  filter_upwards [eventually_gt_atTop 0] with t ht
  simp only [eq_false_intro one_ne_zero, ite_false, sub_zero,
    ← (hasSum_nat_cosKernel₀ a ht).tsum_eq, HurwitzKernelBounds.F_nat]
  apply tsum_of_norm_bounded ((HurwitzKernelBounds.summable_f_nat 0 1 ht).hasSum.mul_left 2)
  intro n
  rw [norm_mul, norm_mul, norm_two, mul_assoc, mul_le_mul_iff_of_pos_left two_pos,
    norm_of_nonneg (exp_pos _).le, HurwitzKernelBounds.f_nat, pow_zero, one_mul, Real.norm_eq_abs]
  exact mul_le_of_le_one_left (exp_pos _).le (abs_cos_le_one _)

end asymp

section FEPair
/-!
## Construction of an FE-pair
-/

/-- A `WeakFEPair` structure with `f = evenKernel a` and `g = cosKernel a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `013f2bdf9dd03263486c1491a907da39bbde1132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
