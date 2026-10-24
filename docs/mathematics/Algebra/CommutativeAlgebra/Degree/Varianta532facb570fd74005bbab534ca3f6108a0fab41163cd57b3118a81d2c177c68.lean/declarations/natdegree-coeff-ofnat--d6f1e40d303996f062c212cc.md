# natDegree_coeff_Φ_ofNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b08cc3443c80e96cb7937a4156abb816c5f01d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e999372d-71dc-cd8a-96d2-caf332a01d03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac1743b7-c690-7ffc-f423-92e4f3f9a3f7",
  "kind": "lemma",
  "lexical_name": "natDegree_coeff_Φ_ofNat",
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
  "slug": "natdegree-coeff-ofnat--d6f1e40d303996f062c212cc",
  "source": {
    "blob": "6b08cc3443c80e96cb7937a4156abb816c5f01d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 384,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6f1e40d303996f062c212cc7bfcb4c8d5048047bb172a5fce7033d4f846f49d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac1743b7-c690-7ffc-f423-92e4f3f9a3f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma natDegree_coeff_Φ_ofNat (n : ℕ) :
    (W.Φ n).natDegree ≤ n ^ 2 ∧ (W.Φ n).coeff (n ^ 2) = 1 := by
  let dm {m n p q} : _ → _ → (p * q : R[X]).natDegree ≤ m + n := natDegree_mul_le_of_le
  let dp {m n p} : _ → (p ^ n : R[X]).natDegree ≤ n * m := natDegree_pow_le_of_le n
  let cm {m n p q} : _ → _ → (p * q : R[X]).coeff (m + n) = _ := coeff_mul_of_natDegree_le
  let h {n} := W.natDegree_coeff_preΨ' n
  rcases n with _ | _ | n
  iterate 2 simp [natDegree_X_le]
  have hd : (n + 1 + 1) ^ 2 = 1 + 2 * expDegree (n + 2) + if Even (n + 1) then 0 else 3 := by
    push_cast [← @Nat.cast_inj ℤ, expDegree_cast (n + 1).succ_ne_zero, Nat.even_add_one, ite_not]
    split_ifs <;> ring1
  have hd' : (n + 1 + 1) ^ 2 =
      expDegree (n + 3) + expDegree (n + 1) + if Even (n + 1) then 3 else 0 := by
    push_cast [← @Nat.cast_inj ℤ, ← mul_left_cancel_iff_of_pos (b := (_ ^ 2 : ℤ)) two_pos, mul_add,
      expDegree_cast (n + 2).succ_ne_zero, expDegree_cast n.succ_ne_zero, Nat.even_add_one, ite_not]
    split_ifs <;> ring1
  have hc : (1 : ℤ) = 1 * expCoeff (n + 2) ^ 2 * (if Even (n + 1) then 1 else 4) -
      expCoeff (n + 3) * expCoeff (n + 1) * (if Even (n + 1) then 4 else 1) := by
    push_cast [← @Int.cast_inj ℚ, expCoeff_cast, Nat.even_add_one, ite_not]
    split_ifs <;> ring1
  rw [Nat.cast_add, Nat.cast_one, Φ_ofNat]
  constructor
  · nth_rw 1 [← max_self <| (_ + _) ^ 2, hd, hd']
    refine natDegree_sub_le_of_le (dm (dm natDegree_X_le (dp h.1)) ?_) (dm (dm h.1 h.1) ?_) <;>
      split_ifs <;> simp only [apply_ite, natDegree_one.le, W.natDegree_Ψ₂Sq_le]
  · nth_rw 1 [coeff_sub, hd, hd', cm (dm natDegree_X_le (dp h.1)), cm natDegree_X_le (dp h.1),
      coeff_X_one, coeff_pow_of_natDegree_le h.1, h.2, apply_ite₂ coeff, coeff_one_zero, coeff_Ψ₂Sq,
      cm (dm h.1 h.1), cm h.1 h.1, h.2, h.2, apply_ite₂ coeff, coeff_one_zero, coeff_Ψ₂Sq]
    conv_rhs => rw [← Int.cast_one, hc]
    · norm_cast
    all_goals split_ifs <;> simp only [apply_ite, natDegree_one.le, W.natDegree_Ψ₂Sq_le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b08cc3443c80e96cb7937a4156abb816c5f01d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
