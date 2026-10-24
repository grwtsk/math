# pack_unpack

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a85e0dcccfa87f71dc5c6e8e25b0da0eab01dd97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03d23c47aac3faf0895ae81d96a47c19abb03a84593072aa4627607a9de6913d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e409bb4-b864-e838-6761-eef445fd0947",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2b27e2e-5061-d31a-f40e-56dade3f27a9",
  "kind": "theorem",
  "lexical_name": "pack_unpack",
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
  "slug": "pack-unpack--66be2ac310487ccfb83ce662",
  "source": {
    "blob": "a85e0dcccfa87f71dc5c6e8e25b0da0eab01dd97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant03d23c47aac3faf0895ae81d96a47c19abb03a84593072aa4627607a9de6913d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66be2ac310487ccfb83ce662c9cabbb5d0a2e0e79eff6cd856fc39d2112fd916",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant03d23c47aac3faf0895ae81d96a47c19abb03a84593072aa4627607a9de6913d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2b27e2e-5061-d31a-f40e-56dade3f27a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pack_unpack {spec : Format} (b : BitVec spec.numBits)
    (hspec : 2 ≤ spec.exponentBits := by decide) :
    (unpack spec b).pack spec = if isNaNBits b then packedNaN spec else b := by
  conv => rhs; rw [← packComponents_unpackSign_unpackExponent_unpackMantissa b]
  unfold isNaNBits
  fun_cases unpack with
  | case1 mvec evec svec s hevec hmvec =>
    -- infinity
    simp +zetaDelta [pack, packedInfinity, hmvec, hevec]
  | case2 mvec evec hevec hmvec =>
    -- nan
    simp +zetaDelta [pack, packedNaN, hevec, hmvec]
  | case3 mvec evec svec s _ hevec hmvec =>
    -- zero
    simp +zetaDelta [pack, packedZero, hevec, hmvec]
  | case4 mvec evec e svec s _ hevec hmvec =>
    -- subnormal
    simp only [hevec, unpackExponent_packComponents, BitVec.zero_eq_neg_one_iff,
      Nat.ne_of_gt spec.he, unpackMantissa_packComponents, ne_eq, false_and, decide_false,
      Bool.false_eq_true, ↓reduceIte, evec]
    unfold pack
    extract_lets mantbits biasedexp
    simp only [BitVec.ofNat_toNat, BitVec.setWidth_eq, mvec]
    rw [if_neg, if_neg]
    · rw [Format.mantissaBits, Nat.add_comm, Nat.add_left_cancel_iff]
      apply Nat.ne_of_lt
      have := mt BitVec.toNat_inj.mp hmvec
      simp only [BitVec.toNat_ofNat, Nat.zero_mod] at this
      simp only [ne_eq, this, not_false_eq_true, Nat.log2_lt, gt_iff_lt, mantbits]
      exact BitVec.isLt _
    · simp +arith [biasedexp, e, hevec]
      have := Nat.pow_le_pow_right (n := 2) (by decide) hspec
      lia
  | case5 mvec evec e svec s hevec hevec' =>
    -- normal
    simp only [unpackExponent_packComponents, hevec, unpackMantissa_packComponents, ne_eq,
      false_and, decide_false, Bool.false_eq_true, ↓reduceIte, evec]
    unfold pack
    extract_lets mantbits biasedexp
    rw [if_neg, if_pos]
    · congr
      · simp +arith [biasedexp, e, evec]
      · rw [BitVec.ofNat_toNat, BitVec.setWidth_append]
        simp [mvec]
    · subst mantbits
      have := Nat.two_pow_add_eq_or_of_lt mvec.isLt (a := 1)
      rw [Nat.mul_one] at this
      simp only [BitVec.toNat_append, BitVec.toNat_ofNat, Nat.pow_one, Nat.mod_succ,
        Format.mantissaBits, Nat.add_comm 1, Nat.add_right_cancel_iff,
        Nat.one_shiftLeft, ← this]
      rw [Nat.log2_eq_iff (by simp)]
      simp [Nat.two_pow_succ, mvec.isLt]
    · simp +arith [biasedexp, e]
      simp only [BitVec.neg_one_eq_allOnes, ← BitVec.lt_allOnes_iff, BitVec.lt_def,
        BitVec.toNat_allOnes] at hevec
      lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant03d23c47aac3faf0895ae81d96a47c19abb03a84593072aa4627607a9de6913d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant03d23c47aac3faf0895ae81d96a47c19abb03a84593072aa4627607a9de6913d.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a85e0dcccfa87f71dc5c6e8e25b0da0eab01dd97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
