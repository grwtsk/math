# aeval_pow_two_pow_dvd_aeval_iterate_newtonMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba02692cff946c5f06ab074f2ec00b10023b9943",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f19f9e5e-f80f-9ec6-001f-40c3222c45c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05ff7a9e-2d1b-fbd6-0e3d-7c09577f26a5",
  "kind": "theorem",
  "lexical_name": "aeval_pow_two_pow_dvd_aeval_iterate_newtonMap",
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
  "slug": "aeval-pow-two-pow-dvd-aeval-iterate-newtonmap--d1f0d2c3567e67ae65a274f4",
  "source": {
    "blob": "ba02692cff946c5f06ab074f2ec00b10023b9943",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 81,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1f0d2c3567e67ae65a274f4519857d9569b9a1e9dd302883dd61de2c645f2c2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05ff7a9e-2d1b-fbd6-0e3d-7c09577f26a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_pow_two_pow_dvd_aeval_iterate_newtonMap
    (h : IsNilpotent (aeval x P)) (h' : IsUnit (aeval x <| derivative P)) (n : ℕ) :
    (aeval x P) ^ (2 ^ n) ∣ aeval (P.newtonMap^[n] x) P := by
  induction n with
  | zero => simp
  | succ n ih =>
    have ⟨d, hd⟩ := binomExpansion (P.map (algebraMap R S)) (P.newtonMap^[n] x)
      (-Ring.inverse (aeval (P.newtonMap^[n] x) <| derivative P) * aeval (P.newtonMap^[n] x) P)
    rw [eval_map_algebraMap, eval_map_algebraMap] at hd
    rw [iterate_succ', comp_apply, newtonMap_apply, sub_eq_add_neg, neg_mul_eq_neg_mul, hd]
    refine dvd_add ?_ (dvd_mul_of_dvd_right ?_ _)
    · convert dvd_zero _
      have : IsUnit (aeval (P.newtonMap^[n] x) <| derivative P) :=
        isUnit_aeval_of_isUnit_aeval_of_isNilpotent_sub h' <|
        isNilpotent_iterate_newtonMap_sub_of_isNilpotent h n
      rw [derivative_map, eval_map_algebraMap, ← mul_assoc, mul_neg, Ring.mul_inverse_cancel _ this,
        neg_mul, one_mul, add_neg_cancel]
    · rw [neg_mul, even_two.neg_pow, mul_pow, pow_succ, pow_mul]
      exact dvd_mul_of_dvd_right (pow_dvd_pow_of_dvd ih 2) _

/-- If `x` is almost a root of `P` in the sense that `P(x)` is nilpotent (and `P'(x)` is a
unit) then we may write `x` as a sum `x = n + r` where `n` is nilpotent and `r` is a root of `P`.
Moreover, `n` and `r` are unique.

This can be used to prove the Jordan-Chevalley decomposition of linear endomorphims. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba02692cff946c5f06ab074f2ec00b10023b9943` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
