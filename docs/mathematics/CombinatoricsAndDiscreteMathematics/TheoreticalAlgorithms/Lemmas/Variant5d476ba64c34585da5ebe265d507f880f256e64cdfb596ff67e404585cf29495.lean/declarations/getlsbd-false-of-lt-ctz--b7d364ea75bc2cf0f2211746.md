# getLsbD_false_of_lt_ctz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05610358a70a3b8d66b81c396a7fc44a13f11d3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 6550,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d590f858-dffe-422e-8923-05c9143254ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6377c9b4-ba9b-ff4d-772a-7b98a05caad3",
  "kind": "theorem",
  "lexical_name": "getLsbD_false_of_lt_ctz",
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
  "slug": "getlsbd-false-of-lt-ctz--b7d364ea75bc2cf0f2211746",
  "source": {
    "blob": "05610358a70a3b8d66b81c396a7fc44a13f11d3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6577,
    "line": 6550,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7d364ea75bc2cf0f2211746318be4c05376af5db21ee4dd304ac3a5f0bcd484",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6377c9b4-ba9b-ff4d-772a-7b98a05caad3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6550–6577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getLsbD_false_of_lt_ctz {x : BitVec w} (hi : i < x.ctz.toNat) :
    x.getLsbD i = false := by
  rw [getLsbD_eq_getMsbD, ← getLsbD_reverse]
  have hiff := ctz_lt_iff_ne_zero (x := x)
  by_cases hzero : x = 0#w
  · simp [hzero, getLsbD_reverse]
  · simp only [ctz_eq_reverse_clz, natCast_eq_ofNat, ne_eq, hzero, not_false_eq_true,
      iff_true] at hiff
    simp only [ctz] at hi
    have hi' : i < w := by simp [BitVec.lt_def] at hiff; omega
    simp only [hi', decide_true, Bool.true_and]
    have : (x.reverse.clzAuxRec (w - 1)).toNat ≤ w := by
      rw [show ((x.reverse.clzAuxRec (w - 1)).toNat ≤ w) =
            ((x.reverse.clzAuxRec (w - 1)).toNat ≤ (BitVec.ofNat w w).toNat) by simp, ← le_def]
      apply clzAuxRec_le (x := x.reverse) (n := w - 1)
    let j := (x.reverse.clzAuxRec (w - 1)).toNat - 1 - i
    rw [show w - 1 - i = w - (x.reverse.clzAuxRec (w - 1)).toNat + j by
      subst j
      rw [Nat.sub_sub (n := (x.reverse.clzAuxRec (w - 1)).toNat),
        ← Nat.add_sub_assoc (by exact Nat.one_add_le_iff.mpr hi)]
      omega]
    have hfalse : ∀ (i : Nat), w - 1 < i → x.reverse.getLsbD i = false := by
      intros i hj
      simp [show w ≤ i by omega]
    exact getLsbD_false_of_clzAuxRec (x := x.reverse) (n := w - 1) hfalse (j := j)

/-- If a bitvec is different than zero, the bit at index `ctz x`, i.e., the first bit after the
  trailing zeros, is true. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean#L6550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05610358a70a3b8d66b81c396a7fc44a13f11d3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
