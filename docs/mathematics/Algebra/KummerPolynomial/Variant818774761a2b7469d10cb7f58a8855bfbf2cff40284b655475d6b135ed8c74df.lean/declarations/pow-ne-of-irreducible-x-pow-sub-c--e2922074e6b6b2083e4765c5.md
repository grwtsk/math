# pow_ne_of_irreducible_X_pow_sub_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6ecebd333287716b26d263851a18708e03acaf7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03d1c518-63fb-3b04-3f12-f08e44ec2e73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4cc922b8-d500-2b97-0415-7444ece57ae5",
  "kind": "theorem",
  "lexical_name": "pow_ne_of_irreducible_X_pow_sub_C",
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
  "slug": "pow-ne-of-irreducible-x-pow-sub-c--e2922074e6b6b2083e4765c5",
  "source": {
    "blob": "d6ecebd333287716b26d263851a18708e03acaf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 73,
    "path": "GRWTSK/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2922074e6b6b2083e4765c57deb3bd8767d4f1a5e6adb3c427e6ada17403560",
  "verification": {
    "reference": "docs/verification/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cc922b8-d500-2b97-0415-7444ece57ae5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_ne_of_irreducible_X_pow_sub_C {n : ℕ} {a : K}
    (H : Irreducible (X ^ n - C a)) {m : ℕ} (hm : m ∣ n) (hm' : m ≠ 1) (b : K) : b ^ m ≠ a := by
  have hn : n ≠ 0 := fun e ↦ not_irreducible_C
    (1 - a) (by simpa only [e, pow_zero, ← C.map_one, ← map_sub] using H)
  obtain ⟨k, rfl⟩ := hm
  rintro rfl
  obtain ⟨q, hq⟩ := sub_dvd_pow_sub_pow (X ^ k) (C b) m
  rw [mul_comm, pow_mul, map_pow, hq] at H
  have : degree q = 0 := by
    simpa [isUnit_iff_degree_eq_zero, degree_X_pow_sub_C,
      Nat.pos_iff_ne_zero, (mul_ne_zero_iff.mp hn).2] using H.2 rfl
  apply_fun degree at hq
  simp only [this, ← pow_mul, mul_comm k m, degree_X_pow_sub_C, Nat.pos_iff_ne_zero.mpr hn,
    Nat.pos_iff_ne_zero.mpr (mul_ne_zero_iff.mp hn).2, degree_mul, ← map_pow, add_zero,
    Nat.cast_injective.eq_iff] at hq
  exact hm' ((mul_eq_right₀ (mul_ne_zero_iff.mp hn).2).mp hq)

/-- Let `p` be a prime number. Let `K` be a field.
Let `t ∈ K` be an element which does not have a `p`th root in `K`.
Then the polynomial `x ^ p - t` is irreducible over `K`. -/
@[stacks 09HF "We proved the result without the condition that `K` is char p in 09HF."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6ecebd333287716b26d263851a18708e03acaf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
