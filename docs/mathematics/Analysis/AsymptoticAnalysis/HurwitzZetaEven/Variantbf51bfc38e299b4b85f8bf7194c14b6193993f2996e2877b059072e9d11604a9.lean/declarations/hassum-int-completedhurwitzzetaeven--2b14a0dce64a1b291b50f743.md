# hasSum_int_completedHurwitzZetaEven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92ffff2cca27f74c6f2ef2925ea61dae82f90ba8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 530,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2bef728-9401-8c0b-0c13-bfc94e69be81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d876fa2-c584-37e4-9d96-071edd886a61",
  "kind": "lemma",
  "lexical_name": "hasSum_int_completedHurwitzZetaEven",
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
  "slug": "hassum-int-completedhurwitzzetaeven--2b14a0dce64a1b291b50f743",
  "source": {
    "blob": "92ffff2cca27f74c6f2ef2925ea61dae82f90ba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 530,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b14a0dce64a1b291b50f7430af5198b4b3f19a7034662c2d7c9693812c62d5e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d876fa2-c584-37e4-9d96-071edd886a61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_int_completedHurwitzZetaEven (a : ℝ) {s : ℂ} (hs : 1 < re s) :
    HasSum (fun n : ℤ ↦ Gammaℝ s / (↑|n + a| : ℂ) ^ s / 2) (completedHurwitzZetaEven a s) := by
  have hF (t : ℝ) (ht : 0 < t) : HasSum (fun n : ℤ ↦ if n + a = 0 then 0
      else (1 / 2 : ℂ) * rexp (-π * (n + a) ^ 2 * t))
      ((evenKernel a t - (if (a : UnitAddCircle) = 0 then 1 else 0 : ℝ)) / 2) := by
    refine (ofReal_sub .. ▸ (hasSum_ofReal.mpr (hasSum_int_evenKernel₀ a ht)).div_const
      2).congr_fun fun n ↦ ?_
    split_ifs
    · rw [ofReal_zero, zero_div]
    · rw [mul_comm, mul_one_div]
  rw [show completedHurwitzZetaEven a s = mellin (fun t ↦ ((evenKernel (↑a) t : ℂ) -
        ↑(if (a : UnitAddCircle) = 0 then 1 else 0 : ℝ)) / 2) (s / 2) by
    simp_rw [mellin_div_const, apply_ite ofReal, ofReal_one, ofReal_zero]
    refine congr_arg (· / 2) ((hurwitzEvenFEPair a).hasMellin (?_ : 1 / 2 < (s / 2).re)).2.symm
    rwa [div_ofNat_re, div_lt_div_iff_of_pos_right two_pos]]
  refine (hasSum_mellin_pi_mul_sq (zero_lt_one.trans hs) hF ?_).congr_fun fun n ↦ ?_
  · simp_rw [← mul_one_div ‖_‖]
    apply Summable.mul_left
    rwa [summable_one_div_int_add_rpow]
  · rw [mul_one_div, div_right_comm]

/-!
## The un-completed even Hurwitz zeta
-/

/-- Technical lemma which will give us differentiability of Hurwitz zeta at `s = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92ffff2cca27f74c6f2ef2925ea61dae82f90ba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
