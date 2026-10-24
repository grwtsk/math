# turanNumber_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff42de11d5bc83a29b72c85401a351e15fd390a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 373,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf9b4b69-260a-fda5-02a9-1e572b0c8f6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eeb1136e-bc79-e379-1652-c9710a1c9093",
  "kind": "theorem",
  "lexical_name": "turanNumber_eq",
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
  "slug": "turannumber-eq--1ef3d26db5ea9b47d37ddddc",
  "source": {
    "blob": "ff42de11d5bc83a29b72c85401a351e15fd390a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 373,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ef3d26db5ea9b47d37ddddc97598d9c2a42af6818e82346264b18b21a107aea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeb1136e-bc79-e379-1652-c9710a1c9093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem turanNumber_eq {n r : ℕ} :
    turanNumber n r = (n ^ 2 - (n % r) ^ 2) * (r - 1) / (2 * r) + (n % r).choose 2 := by
  rcases r.eq_zero_or_pos with rfl | hr
  · rw [Nat.mod_zero, tsub_self, zero_mul, Nat.zero_div, zero_add]
    have := card_edgeFinset_top_eq_card_choose_two (V := Fin n)
    rw [Fintype.card_fin] at this; convert! this; exact turanGraph_zero
  · have ring₁ (n) : (n ^ 2 - (n % r) ^ 2) * (r - 1) / (2 * r) =
        n % r * (n / r) * (r - 1) + r * (r - 1) * (n / r) ^ 2 / 2 := by
      nth_rw 1 [← Nat.mod_add_div n r, Nat.sq_sub_sq, add_tsub_cancel_left,
        show (n % r + r * (n / r) + n % r) * (r * (n / r)) * (r - 1) =
          (2 * ((n % r) * (n / r) * (r - 1)) + r * (r - 1) * (n / r) ^ 2) * r by grind]
      rw [Nat.mul_div_mul_right _ _ hr, Nat.mul_add_div zero_lt_two]
    rcases lt_or_ge n r with h | h
    · rw [Nat.mod_eq_of_lt h, tsub_self, zero_mul, Nat.zero_div, zero_add]
      have := card_edgeFinset_top_eq_card_choose_two (V := Fin n)
      rw [Fintype.card_fin] at this; convert! this
      rw [turanGraph_eq_top]; exact .inr h.le
    · let n' := n - r
      have n'r : n = n' + r := by lia
      rw [n'r, turanNumber_add, turanNumber_eq, ring₁, ring₁,
        add_rotate, ← add_assoc, Nat.add_mod_right, Nat.add_div_right _ hr]
      congr 1
      have rd : 2 ∣ r * (r - 1) := (Nat.even_mul_pred_self _).two_dvd
      rw [← Nat.div_mul_right_comm rd, ← Nat.div_mul_right_comm rd, ← Nat.choose_two_right]
      have ring₂ : n' % r * (n' / r + 1) * (r - 1) + r.choose 2 * (n' / r + 1) ^ 2 =
          n' % r * (n' / r + 1) * (r - 1) + r.choose 2 +
          r.choose 2 * 2 * (n' / r) + r.choose 2 * (n' / r) ^ 2 := by grind
      rw [ring₂, ← add_assoc]; congr 1
      rw [← add_rotate, ← add_rotate _ _ (r.choose 2)]; congr 1
      rw [Nat.choose_two_right, Nat.div_mul_cancel rd, mul_add_one, add_mul, ← add_assoc,
        ← add_rotate, add_comm _ (_ * _)]; congr 1
      rw [← mul_rotate, ← add_mul, add_comm, mul_comm _ r, Nat.div_add_mod n' r]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff42de11d5bc83a29b72c85401a351e15fd390a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
