# eLpNorm_inner_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77e0d3526db347b58cdd46fe666067be7e4fbe35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f309851-2429-f380-fdb2-f4e2905c842e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e401851c-dd43-e480-45a7-69e614b2cab1",
  "kind": "theorem",
  "lexical_name": "eLpNorm_inner_lt_top",
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
  "slug": "elpnorm-inner-lt-top--2a45a361db68b997d432dc81",
  "source": {
    "blob": "77e0d3526db347b58cdd46fe666067be7e4fbe35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantc5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a45a361db68b997d432dc81fbc0a72aff5cdc6ab372f9f37d375461a81d31b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L2Space/Variantc5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e401851c-dd43-e480-45a7-69e614b2cab1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_inner_lt_top (f g : α →₂[μ] E) : eLpNorm (fun x : α => ⟪f x, g x⟫) 1 μ < ∞ := by
  have h : ∀ x, ‖⟪f x, g x⟫‖ ≤ ‖‖f x‖ ^ (2 : ℝ) + ‖g x‖ ^ (2 : ℝ)‖ := by
    intro x
    rw [← @Nat.cast_two ℝ, Real.rpow_natCast, Real.rpow_natCast]
    calc
      ‖⟪f x, g x⟫‖ ≤ ‖f x‖ * ‖g x‖ := norm_inner_le_norm _ _
      _ ≤ 2 * ‖f x‖ * ‖g x‖ := by
        gcongr
        exact le_mul_of_one_le_left (norm_nonneg _) one_le_two
      _ ≤ ‖‖f x‖ ^ 2 + ‖g x‖ ^ 2‖ := (two_mul_le_add_sq _ _).trans (le_abs_self _)
  refine (eLpNorm_mono_ae ((Lp.aestronglyMeasurable f).inner
    (Lp.aestronglyMeasurable g)) (ae_of_all _ h)).trans_lt ((eLpNorm_add_le le_rfl).trans_lt ?_)
  rw [ENNReal.add_lt_top]
  exact ⟨eLpNorm_rpow_two_norm_lt_top f, eLpNorm_rpow_two_norm_lt_top g⟩

section InnerProductSpace

open scoped ComplexConjugate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L2Space/Variantc5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantc5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e0d3526db347b58cdd46fe666067be7e4fbe35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
