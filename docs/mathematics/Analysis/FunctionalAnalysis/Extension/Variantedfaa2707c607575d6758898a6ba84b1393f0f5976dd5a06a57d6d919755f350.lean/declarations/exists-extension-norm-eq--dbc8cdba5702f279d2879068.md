# exists_extension_norm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5eb57ed-60e1-1b9b-aa35-811ee9c94a45",
  "kind": "theorem",
  "lexical_name": "exists_extension_norm_eq",
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
  "slug": "exists-extension-norm-eq--dbc8cdba5702f279d2879068",
  "source": {
    "blob": "a3d4979779b2a9d910338af31f91bef8913be95b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 77,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbc8cdba5702f279d2879068ad5e89847c2ae9899e413b79a7c5ad387547848b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5eb57ed-60e1-1b9b-aa35-811ee9c94a45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_extension_norm_eq (p : Subspace 𝕜 F) (f : p →L[𝕜] 𝕜) :
    ∃ g : F →L[𝕜] 𝕜, (∀ x : p, g x = f x) ∧ ‖g‖ = ‖f‖ := by
  letI : Module ℝ F := RestrictScalars.module ℝ 𝕜 F
  letI : IsScalarTower ℝ 𝕜 F := RestrictScalars.isScalarTower _ _ _
  letI : NormedSpace ℝ F := NormedSpace.restrictScalars _ 𝕜 _
  -- Let `fr: p →L[ℝ] ℝ` be the real part of `f`.
  let fr := reClm.comp (f.restrictScalars ℝ)
  -- Use the real version to get a norm-preserving extension of `fr`, which
  -- we'll call `g : F →L[ℝ] ℝ`.
  rcases Real.exists_extension_norm_eq (p.restrictScalars ℝ) fr with ⟨g, ⟨hextends, hnormeq⟩⟩
  -- Now `g` can be extended to the `F →L[𝕜] 𝕜` we need.
  refine' ⟨g.extendTo𝕜, _⟩
  -- It is an extension of `f`.
  have h : ∀ x : p, g.extendTo𝕜 x = f x := by
    intro x
    rw [ContinuousLinearMap.extendTo𝕜_apply, ← Submodule.coe_smul, hextends, hextends]
    have : (fr x : 𝕜) - I * ↑(fr (I • x)) = (re (f x) : 𝕜) - (I : 𝕜) * re (f ((I : 𝕜) • x)) := by
      rfl
    rw [this]
    apply ext
    · simp only [add_zero, Algebra.id.smul_eq_mul, I_re, ofReal_im, AddMonoidHom.map_add, zero_sub,
        I_im', zero_mul, ofReal_re, eq_self_iff_true, sub_zero, mul_neg, ofReal_neg,
        mul_re, mul_zero, sub_neg_eq_add, ContinuousLinearMap.map_smul]
    · simp only [Algebra.id.smul_eq_mul, I_re, ofReal_im, AddMonoidHom.map_add, zero_sub, I_im',
        zero_mul, ofReal_re, mul_neg, mul_im, zero_add, ofReal_neg, mul_re,
        sub_neg_eq_add, ContinuousLinearMap.map_smul]
  -- And we derive the equality of the norms by bounding on both sides.
  refine' ⟨h, le_antisymm _ _⟩
  · calc
      ‖g.extendTo𝕜‖ = ‖g‖ := g.norm_extendTo𝕜
      _ = ‖fr‖ := hnormeq
      _ ≤ ‖reClm‖ * ‖f‖ := (ContinuousLinearMap.op_norm_comp_le _ _)
      _ = ‖f‖ := by rw [reClm_norm, one_mul]
  · exact f.op_norm_le_bound g.extendTo𝕜.op_norm_nonneg fun x => h x ▸ g.extendTo𝕜.le_op_norm x
#align exists_extension_norm_eq exists_extension_norm_eq

end IsROrC

section DualVector

variable (𝕜 : Type v) [IsROrC 𝕜]

variable {E : Type u} [NormedAddCommGroup E] [NormedSpace 𝕜 E]

open ContinuousLinearEquiv Submodule

open Classical

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d4979779b2a9d910338af31f91bef8913be95b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
