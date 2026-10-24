# le_toNat_iff_getLsbD_eq_true

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb145886-3ea2-30ab-ff59-15f4525db083",
  "kind": "theorem",
  "lexical_name": "le_toNat_iff_getLsbD_eq_true",
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
  "slug": "le-tonat-iff-getlsbd-eq-true--14f38c435f78a5f857b37398",
  "source": {
    "blob": "eb698204152cd6b0b53cbdb340ff29daa8847616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6225,
    "line": 6180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14f38c435f78a5f857b373986d2b862db7b4ad4a2f0b8aacd1cec111f52b2d12",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb145886-3ea2-30ab-ff59-15f4525db083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6180–6225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_toNat_iff_getLsbD_eq_true {x : BitVec w} (hi : i < w ) :
    (2 ^ i ≤ x.toNat) ↔ (∃ k, x.getLsbD (i + k) = true) := by
  rcases w with _|w
  · simp [of_length_zero]
  · constructor
    · intro hle
      apply Classical.byContradiction
      intros hcontra
      let x' := setWidth (i + 1) x
      have hx' : setWidth (i + 1) x = x' := by rfl
      have hcast : w - i + (i + 1) = w + 1 := by omega
      simp only [not_exists, Bool.not_eq_true] at hcontra
      have hx'' : x = BitVec.cast hcast (0#(w - i) ++ x') := by
        ext j
        by_cases hj : j < i + 1
        · simp only [← hx', getElem_cast, getElem_append, hj, reduceDIte, getElem_setWidth]
          rw [getLsbD_eq_getElem]
        · simp only [getElem_cast, getElem_append, hj, reduceDIte, getElem_zero]
          let j' := j - i
          simp only [show j = i + j' by omega]
          apply hcontra
      have : x'.toNat < 2 ^ i := by
        apply Nat.lt_pow_two_of_testBit (n := i) x'.toNat
        intro j hj
        let j' := j - i
        specialize hcontra j'
        have : x'.getLsbD (i + j') = x.getLsbD (i + j') := by
          subst x'
          simp [hcontra]
        simp [show j = i + j' by omega, testBit_toNat, this, hcontra]
      have : x'.toNat = x.toNat := by
        have := BitVec.setWidth_eq_append (w := (w + 1)) (v := i + 1) (x := x')
        specialize this (by omega)
        rw [toNat_eq, toNat_setWidth, Nat.mod_eq_of_lt (by omega)] at this
        simp [hx'']
      omega
    · intro h
      obtain ⟨k, hk⟩ := h
      by_cases hk' : i + k < w + 1
      · have := Nat.ge_two_pow_of_testBit hk
        have := Nat.pow_le_pow_of_le (a := 2) (n := i) (m := i + k) (by omega) (by omega)
        omega
      · simp [show w + 1 ≤ i + k by omega] at hk

/-- A bitvector interpreted as a natural number is strictly smaller than `2 ^ i` if and only if
  all bits at position `i` or higher are false. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean#L6180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb698204152cd6b0b53cbdb340ff29daa8847616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
