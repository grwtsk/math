# unit_isSquare_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05e9b05e825cf98ee7ea572b5770a505a39c6b6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 532,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18c58dfe-dd59-00ea-76bf-5415c27a9372",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca7154c9-257b-d802-6d42-70c243123d83",
  "kind": "theorem",
  "lexical_name": "unit_isSquare_iff",
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
  "slug": "unit-issquare-iff--4d6db43956dc9313eb66664d",
  "source": {
    "blob": "05e9b05e825cf98ee7ea572b5770a505a39c6b6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 532,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d6db43956dc9313eb66664d0e1ac2f1a44c8922eebcf3e2802c655115c3c05e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca7154c9-257b-d802-6d42-70c243123d83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_isSquare_iff (hF : ringChar F ≠ 2) (a : Fˣ) :
    IsSquare a ↔ a ^ (Fintype.card F / 2) = 1 := by
  classical
    obtain ⟨g, hg⟩ := IsCyclic.exists_generator (α := Fˣ)
    obtain ⟨n, hn⟩ : a ∈ Submonoid.powers g := by rw [mem_powers_iff_mem_zpowers]; apply hg
    have hodd := Nat.two_mul_odd_div_two (FiniteField.odd_card_of_char_ne_two hF)
    constructor
    · rintro ⟨y, rfl⟩
      rw [← pow_two, ← pow_mul, hodd]
      apply_fun Units.val using Units.ext
      · push_cast
        exact FiniteField.pow_card_sub_one_eq_one (y : F) (Units.ne_zero y)
    · subst a; intro h
      have key : 2 * (Fintype.card F / 2) ∣ n * (Fintype.card F / 2) := by
        rw [← pow_mul] at h
        rw [hodd, ← Fintype.card_units, ← orderOf_eq_card_of_forall_mem_zpowers hg]
        apply orderOf_dvd_of_pow_eq_one h
      have : 0 < Fintype.card F / 2 := Nat.div_pos Fintype.one_lt_card (by norm_num)
      obtain ⟨m, rfl⟩ := Nat.dvd_of_mul_dvd_mul_right this key
      refine' ⟨g ^ m, _⟩
      dsimp
      rw [mul_comm, pow_mul, pow_two]
#align finite_field.unit_is_square_iff FiniteField.unit_isSquare_iff

/-- A non-zero `a : F` is a square if and only if `a ^ (#F / 2) = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05e9b05e825cf98ee7ea572b5770a505a39c6b6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
