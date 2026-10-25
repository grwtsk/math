# sqrt.lt_iter_succ_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5aa27d71-9acd-ee9d-f4f6-303df7b4f05e",
  "kind": "lemma",
  "lexical_name": "sqrt.lt_iter_succ_sq",
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
  "slug": "sqrt-lt-iter-succ-sq--92ac48c540de6633a6fae1ec",
  "source": {
    "blob": "7deca7db4131e493377a04ed2a9eb345b8a17aa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92ac48c540de6633a6fae1ec7fe7fbc20f3338b2600b14605f80fe7c00f19dfd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5aa27d71-9acd-ee9d-f4f6-303df7b4f05e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sqrt.lt_iter_succ_sq (n guess : ℕ) (hn : n < (guess + 1) * (guess + 1)) :
    n < (sqrt.iter n guess + 1) * (sqrt.iter n guess + 1) := by
  unfold sqrt.iter
  -- m was `next`
  let m := (guess + n / guess) / 2
  by_cases h : m < guess
  case pos =>
    suffices : n < (m + 1) * (m + 1)
    · simpa only [dif_pos h] using sqrt.lt_iter_succ_sq n m this
    refine lt_of_mul_lt_mul_left ?_ (4 * (guess * guess)).zero_le
    apply lt_of_le_of_lt AM_GM
    rw [show (4 : ℕ) = 2 * 2 from rfl]
    rw [mul_mul_mul_comm 2, mul_mul_mul_comm (2 * guess)]
    refine mul_self_lt_mul_self (?_ : _ < _ * succ (_ / 2))
    rw [← add_div_right _ (by decide), mul_comm 2, mul_assoc,
      show guess + n / guess + 2 = (guess + n / guess + 1) + 1 from rfl]
    have aux_lemma {a : ℕ} : a ≤ 2 * ((a + 1) / 2) := by
      rw [mul_comm]
      exact (add_le_add_iff_right 2).1 $ succ_le_of_lt $ @lt_div_mul_add (a + 1) 2 zero_lt_two
    refine lt_of_lt_of_le ?_ (act_rel_act_of_rel _ aux_lemma)
    rw [add_assoc, mul_add]
    exact add_lt_add_left (lt_mul_div_succ _ (lt_of_le_of_lt (Nat.zero_le m) h)) _
  case neg =>
    simpa only [dif_neg h] using hn

end Std

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7deca7db4131e493377a04ed2a9eb345b8a17aa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
