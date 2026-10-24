# isUltrametricDist_of_forall_pow_norm_le_nsmul_pow_max_one_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8273c728c1e68323527ec94438405def08a88bfa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c0eb9f6-be88-7f68-2b73-dce0e9bcc7f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7b4d42a-65da-d343-49fa-c2ceb62815b8",
  "kind": "lemma",
  "lexical_name": "isUltrametricDist_of_forall_pow_norm_le_nsmul_pow_max_one_norm",
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
  "slug": "isultrametricdist-of-forall-pow-norm-le-nsmul-pow-max-one-norm--a2efb6b1dc362df3654cda84",
  "source": {
    "blob": "8273c728c1e68323527ec94438405def08a88bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2efb6b1dc362df3654cda846161c2a41eb2154c1d473570d5902229a6bb40b6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7b4d42a-65da-d343-49fa-c2ceb62815b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUltrametricDist_of_forall_pow_norm_le_nsmul_pow_max_one_norm
    (h : ∀ (x : R) (m : ℕ), ‖x + 1‖ ^ m ≤ (m + 1) • max 1 (‖x‖ ^ m)) :
    IsUltrametricDist R := by
  -- it will suffice to prove that `‖x + 1‖ ≤ max 1 ‖x‖`
  refine isUltrametricDist_of_forall_norm_add_one_le_max_norm_one fun x ↦ ?_
  -- Morally, we want to deduce this from the hypothesis `h` by taking an `m`-th root and showing
  -- that `(m + 1) ^ (1 / m)` gets arbitrarily close to 1, although we will formalise this in a way
  -- that avoids explicitly mentioning `m`-th roots.
  -- First note it suffices to show that `‖x + 1‖ ≤ a` for all `a : ℝ` with `max ‖x‖ 1 < a`.
  rw [max_comm]
  refine le_of_forall_gt_imp_ge_of_dense fun a ha ↦ ?_
  have ha' : 1 < a := (max_lt_iff.mp ha).left
  -- `max 1 ‖x‖ < a`, so there must be some `m : ℕ` such that `m + 1 < (a / max 1 ‖x‖) ^ m`
  -- by the virtue of exponential growth being faster than linear growth
  obtain ⟨m, hm⟩ : ∃ m : ℕ, ((m + 1) : ℕ) < (a / (max 1 ‖x‖)) ^ m := by
    apply_mod_cast Real.exists_natCast_add_one_lt_pow_of_one_lt
    rwa [one_lt_div (by positivity)]
  -- and we rearrange again to get `(m + 1) • max 1 ‖x‖ ^ m < a ^ m`
  rw [div_pow, lt_div_iff₀ (by positivity), ← nsmul_eq_mul] at hm
  -- which squeezes down to get our `‖x + 1‖ ≤ a` using our to-be-proven hypothesis of
  -- `‖x + 1‖ ^ m ≤ (m + 1) • max 1 ‖x‖ ^ m`, so we're done
  -- we can distribute powers into the right term of `max`
  have hp : max 1 ‖x‖ ^ m = max 1 (‖x‖ ^ m) := by
    rw [pow_left_monotoneOn.map_max (by simp [zero_le_one]) (norm_nonneg x), one_pow]
  rw [hp] at hm
  refine le_of_pow_le_pow_left₀ (fun h ↦ ?_) (zero_lt_one.trans ha').le ((h _ _).trans hm.le)
  simp only [h, zero_add, pow_zero, max_self, one_smul, lt_self_iff_false] at hm

/-- To prove that a normed division ring is nonarchimedean, it suffices to prove that the norm
of the image of any natural is less than or equal to one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8273c728c1e68323527ec94438405def08a88bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
