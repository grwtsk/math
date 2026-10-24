# norm_fst_eq_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2fb3dd425754bcd57af1cbb091bd5192028431ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 591,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3e854207bbe13b341ee02f489f52f4b27b876a15ef457c832056abd0778141a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e9ab9db-0214-c475-1165-9e617e47fbe3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1dcd9be9-3e54-9998-6f7d-999be4c2e8cd",
  "kind": "theorem",
  "lexical_name": "norm_fst_eq_snd",
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
  "slug": "norm-fst-eq-snd--1770cb98d07b03f3397a874d",
  "source": {
    "blob": "2fb3dd425754bcd57af1cbb091bd5192028431ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 591,
    "path": "GRWTSK/Analysis/Multiplier/Variantd3e854207bbe13b341ee02f489f52f4b27b876a15ef457c832056abd0778141a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1770cb98d07b03f3397a874d4a4b37ac953e4d99ee5e181ce33af6dbdabfd58c",
  "verification": {
    "reference": "docs/verification/Analysis/Multiplier/Variantd3e854207bbe13b341ee02f489f52f4b27b876a15ef457c832056abd0778141a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dcd9be9-3e54-9998-6f7d-999be4c2e8cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_fst_eq_snd (a : 𝓜(𝕜, A)) : ‖a.fst‖ = ‖a.snd‖ := by
  -- a handy lemma for this proof
  have h0 : ∀ f : A →L[𝕜] A, ∀ C : ℝ≥0, (∀ b : A, ‖f b‖₊ ^ 2 ≤ C * ‖f b‖₊ * ‖b‖₊) → ‖f‖₊ ≤ C := by
    intro f C h
    have h1 : ∀ b, C * ‖f b‖₊ * ‖b‖₊ ≤ C * ‖f‖₊ * ‖b‖₊ ^ 2 := by
      intro b
      convert mul_le_mul_right' (mul_le_mul_left' (f.le_op_nnnorm b) C) ‖b‖₊ using 1
      ring
    have :=
      NNReal.div_le_of_le_mul
        (f.op_nnnorm_le_bound _
          (by
            simpa only [sqrt_sq, sqrt_mul] using fun b =>
              sqrt_le_sqrt_iff.mpr ((h b).trans (h1 b))))
    convert NNReal.rpow_le_rpow this two_pos.le
    · simp only [NNReal.rpow_two, div_pow, sq_sqrt]
      simp only [sq, mul_self_div_self]
    · simp only [NNReal.rpow_two, sq_sqrt]
  have h1 : ∀ b, ‖a.fst b‖₊ ^ 2 ≤ ‖a.snd‖₊ * ‖a.fst b‖₊ * ‖b‖₊ := by
    intro b
    calc
      ‖a.fst b‖₊ ^ 2 = ‖star (a.fst b) * a.fst b‖₊ := by
        simpa only [← sq] using CstarRing.nnnorm_star_mul_self.symm
      _ ≤ ‖a.snd (star (a.fst b))‖₊ * ‖b‖₊ := (a.central (star (a.fst b)) b ▸ nnnorm_mul_le _ _)
      _ ≤ ‖a.snd‖₊ * ‖a.fst b‖₊ * ‖b‖₊ :=
        nnnorm_star (a.fst b) ▸ mul_le_mul_right' (a.snd.le_op_nnnorm _) _

  have h2 : ∀ b, ‖a.snd b‖₊ ^ 2 ≤ ‖a.fst‖₊ * ‖a.snd b‖₊ * ‖b‖₊ := by
    intro b
    calc
      ‖a.snd b‖₊ ^ 2 = ‖a.snd b * star (a.snd b)‖₊ := by
        simpa only [← sq] using CstarRing.nnnorm_self_mul_star.symm
      _ ≤ ‖b‖₊ * ‖a.fst (star (a.snd b))‖₊ :=
        ((a.central b (star (a.snd b))).symm ▸ nnnorm_mul_le _ _)
      _ = ‖a.fst (star (a.snd b))‖₊ * ‖b‖₊ := (mul_comm _ _)
      _ ≤ ‖a.fst‖₊ * ‖a.snd b‖₊ * ‖b‖₊ :=
        nnnorm_star (a.snd b) ▸ mul_le_mul_right' (a.fst.le_op_nnnorm _) _

  exact le_antisymm (h0 _ _ h1) (h0 _ _ h2)
#align double_centralizer.norm_fst_eq_snd DoubleCentralizer.norm_fst_eq_snd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Multiplier/Variantd3e854207bbe13b341ee02f489f52f4b27b876a15ef457c832056abd0778141a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Multiplier/Variantd3e854207bbe13b341ee02f489f52f4b27b876a15ef457c832056abd0778141a.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fb3dd425754bcd57af1cbb091bd5192028431ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
