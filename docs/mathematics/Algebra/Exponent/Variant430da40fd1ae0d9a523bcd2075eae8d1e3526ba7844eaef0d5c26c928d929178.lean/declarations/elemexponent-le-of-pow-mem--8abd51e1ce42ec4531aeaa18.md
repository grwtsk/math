# elemExponent_le_of_pow_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffccd821-cc9d-1fff-a4f2-55bed28eeaa3",
  "kind": "theorem",
  "lexical_name": "elemExponent_le_of_pow_mem",
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
  "slug": "elemexponent-le-of-pow-mem--8abd51e1ce42ec4531aeaa18",
  "source": {
    "blob": "d4a47583e87f8a55f580963a03a76b0676a99096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 183,
    "path": "GRWTSK/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8abd51e1ce42ec4531aeaa1848b7464197b3e35f429f8d127420e7cba1be7dbb",
  "verification": {
    "reference": "docs/verification/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffccd821-cc9d-1fff-a4f2-55bed28eeaa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem elemExponent_le_of_pow_mem {a : L} {n : ℕ}
    (h : a ^ ringExpChar K ^ n ∈ (algebraMap K L).range) : elemExponent K a ≤ n := by
  let ⟨p, _⟩ := ExpChar.exists K
  rcases ‹ExpChar K p› with _ | ⟨hp⟩
  · exact elemExponent_eq_zero_of_charZero K a ▸ Nat.zero_le _
  · obtain ⟨y, hy⟩ := RingHom.mem_range.mp <| h
    let f := X ^ ringExpChar K ^ n - C y
    have hf₁ : f.aeval a = 0 := by rwa [map_sub, aeval_C, aeval_X_pow, sub_eq_zero, eq_comm]
    have hf₂ : f.Monic := monic_X_pow_sub_C y <| Nat.pos_iff_ne_zero.mp <| expChar_pow_pos K _ _
    have hf₃ : f.natDegree = ringExpChar K ^ n := by
      rw [natDegree_sub_C, natDegree_pow, natDegree_X, mul_one]
    exact (Nat.pow_le_pow_iff_right <| Nat.Prime.one_lt hp).mp <|
      ringExpChar.eq K p ▸ hf₃ ▸ minpoly_natDegree_eq K a ▸
      natDegree_le_natDegree (minpoly.min K a hf₂ hf₁)

variable {K} in
/-- Version of `elemExponent_le_of_pow_mem` using `ExpChar`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4a47583e87f8a55f580963a03a76b0676a99096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
