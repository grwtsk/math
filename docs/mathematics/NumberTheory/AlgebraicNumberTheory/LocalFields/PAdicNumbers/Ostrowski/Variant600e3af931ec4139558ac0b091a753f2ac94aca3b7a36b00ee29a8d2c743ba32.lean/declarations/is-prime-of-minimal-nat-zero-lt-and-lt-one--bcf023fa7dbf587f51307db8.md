# is_prime_of_minimal_nat_zero_lt_and_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ac74f5817575d5ab839eb460e5284b309bad584",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfff9902-7c13-6e95-339a-ed9ae3d5cbe8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aef8ea53-c62b-0507-f690-638e2dfe7465",
  "kind": "lemma",
  "lexical_name": "is_prime_of_minimal_nat_zero_lt_and_lt_one",
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
  "slug": "is-prime-of-minimal-nat-zero-lt-and-lt-one--bcf023fa7dbf587f51307db8",
  "source": {
    "blob": "1ac74f5817575d5ab839eb460e5284b309bad584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 149,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcf023fa7dbf587f51307db8b17b1d78f644b0cdf832adb264e7b1921be2056c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aef8ea53-c62b-0507-f690-638e2dfe7465`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma is_prime_of_minimal_nat_zero_lt_and_lt_one : p.Prime := by
  rw [← Nat.irreducible_iff_nat_prime]
  constructor -- Two goals: p is not a unit and any product giving p must contain a unit.
  · rw [Nat.isUnit_iff]
    rintro rfl
    simp only [Nat.cast_one, map_one, lt_self_iff_false] at hp1
  · rintro a b rfl
    rw [Nat.isUnit_iff, Nat.isUnit_iff]
    by_contra! con
    obtain ⟨ha₁, hb₁⟩ := con
    obtain ⟨ha₀, hb₀⟩ : a ≠ 0 ∧ b ≠ 0 := by
      refine mul_ne_zero_iff.mp fun h ↦ ?_
      rwa [h, Nat.cast_zero, map_zero, lt_self_iff_false] at hp0
    have hap : a < a * b := lt_mul_of_one_lt_right (by omega) (by omega)
    have hbp : b < a * b := lt_mul_of_one_lt_left (by omega) (by omega)
    have ha :=
      le_of_not_lt <| not_and.mp ((hmin a).mt hap.not_le) (map_pos_of_ne_zero f (mod_cast ha₀))
    have hb :=
      le_of_not_lt <| not_and.mp ((hmin b).mt hbp.not_le) (map_pos_of_ne_zero f (mod_cast hb₀))
    rw [Nat.cast_mul, map_mul] at hp1
    exact ((one_le_mul_of_one_le_of_one_le ha hb).trans_lt hp1).false

-- ## Step 3: if p does not divide m, then f m = 1

open Real

include hp0 hp1 hmin bdd in
/-- A natural number not divisible by `p` has absolute value 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ac74f5817575d5ab839eb460e5284b309bad584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
