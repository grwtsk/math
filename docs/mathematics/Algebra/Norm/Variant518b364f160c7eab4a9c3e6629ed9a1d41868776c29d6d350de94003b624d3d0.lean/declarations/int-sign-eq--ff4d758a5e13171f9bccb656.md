# Int.sign_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a27201019a798f28da55b796aee34d5fd60c7c3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63b18ff0-31b5-522f-981c-6a4ee8347a80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73614508-231d-ebf4-7dbb-18dd980a235a",
  "kind": "theorem",
  "lexical_name": "Int.sign_eq",
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
  "slug": "int-sign-eq--ff4d758a5e13171f9bccb656",
  "source": {
    "blob": "a27201019a798f28da55b796aee34d5fd60c7c3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 160,
    "path": "GRWTSK/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff4d758a5e13171f9bccb656acf47ec67cc0487a67b4ed4eb8ad48a13ef18efc",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73614508-231d-ebf4-7dbb-18dd980a235a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.sign_eq (x : Int) : x.sign = if x > 0 then 1 else if x < 0 then -1 else 0 := by
  split; simp [*]
  split; simp [*]
  have : x = 0 := by omega
  simp [*]

-- Remark: for additional `grind` simprocs, check `Lean/Meta/Tactic/Grind`
init_grind_norm
  /- Pre theorems -/
  |
  /- Post theorems -/
  iff_eq heq_eq_eq eq_self
  -- And
  and_true true_and and_false false_and and_assoc
  -- ite
  ite_true_false ite_false_true
  -- Bool cond
  cond_eq_ite
  -- Bool or
  Bool.or_false Bool.or_true Bool.false_or Bool.true_or Bool.or_eq_true
  -- Bool and
  Bool.and_false Bool.and_true Bool.false_and Bool.true_and Bool.and_eq_true
  -- Bool not
  Bool.not_not
  -- beq
  beq_iff_eq beq_eq_decide_eq beq_self_eq_true
  -- bne
  bne_iff_ne bne_eq_decide_not_eq
  -- decide
  decide_eq_true_eq decide_not not_decide_eq_true
  -- Nat
  Nat.le_zero_eq Nat.lt_eq Nat.succ_eq_add_one
  Nat.add_eq Nat.sub_eq Nat.mul_eq Nat.zero_eq Nat.le_eq
  Nat.div_zero Nat.mod_zero Nat.div_one Nat.mod_one
  Nat.sub_sub Nat.pow_zero Nat.pow_one Nat.sub_self
  Nat.one_pow Nat.zero_sub Nat.sub_zero
  -- Int
  Int.lt_eq
  Int.emod_neg Int.ediv_neg
  Int.ediv_zero Int.emod_zero
  Int.ediv_one Int.emod_one
  Int.negSucc_eq
  natCast_div natCast_mod natCast_id
  natCast_add natCast_mul natCast_pow
  Int.one_pow
  Int.pow_zero Int.pow_one Int.subNatNat_eq
  -- Int op folding
  Int.add_def Int.mul_def Int.ofNat_eq_coe
  Int.Internal.Linear.sub_fold Int.Internal.Linear.neg_fold
  -- Int divides
  Int.one_dvd Int.zero_dvd
  -- Int alternative div and mod. We just expand them
  Int.fdiv_eq_ediv Int.tdiv_eq_ediv
  Int.fmod_eq_emod Int.tmod_eq_emod Int.bmod_eq_emod
  -- Int sign. We just expand it
  Int.sign_eq
  -- Function composition
  Function.const_apply Function.comp_apply Function.const_comp
  Function.comp_const Function.true_comp Function.false_comp
  -- SMul normalizer
  smul_int_eq_mul smul_nat_eq_mul
  -- NatCast & IntCast for algebraic structures
  Semiring.natCast_add
  Semiring.natCast_pow
  Semiring.natCast_mul
  Ring.intCast_add
  Ring.intCast_mul
  Ring.intCast_pow
  Ring.intCast_sub
  -- OfScientific
  LawfulOfScientific.ofScientific_def
  -- Rationals
  Rat.zpow_neg
  -- Field
  Field.inv_zero Field.inv_inv Field.inv_one Field.inv_neg
  -- Semiring
  Semiring.one_mul Semiring.mul_one
  Semiring.zero_mul Semiring.mul_zero
  -- Bitvectors
  BitVec.ofNatLT_eq_ofNat

end Lean.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a27201019a798f28da55b796aee34d5fd60c7c3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
