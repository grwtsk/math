# first_gap_odd_gt_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93ed721b-36fc-ad92-8b9f-673267ac4a21",
  "kind": "lemma",
  "lexical_name": "first_gap_odd_gt_1",
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
  "slug": "first-gap-odd-gt-1--e157ca64eae2f0fb14995e77",
  "source": {
    "blob": "21ceaf279b9771b68f9aa5184d964814d97bd5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 349,
    "path": "GRWTSK/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e157ca64eae2f0fb14995e77b75be449e3a3174ed4a51729fe20c09414c0f72b",
  "verification": {
    "reference": "docs/verification/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93ed721b-36fc-ad92-8b9f-673267ac4a21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma first_gap_odd_gt_1 {g : ℕ} (hg : Odd g) (hg1 : 1 < g) : first_gap g = 0 := by
  simp only [first_gap, dite_eq_right_iff, forall_exists_index]
  intro n hn
  obtain ⟨k, hk⟩ := hg
  simp_all only [lt_add_iff_pos_left, ofNat_pos, mul_pos_iff_of_pos_left]
  have : ∀ n > 0, Odd (nth_prime n) := fun n hn ↦ Prime.odd_of_ne_two (prime_nth_prime n) (by
    grind [Prime.two_le (prime_nth_prime n),
      show nth_prime n > 2 from lt_of_le_of_lt (Prime.two_le <| prime_nth_prime 0) <|
        nth_strictMono infinite_setOf_prime hn])
  have : Even (nth_prime (n + 1) - nth_prime n) :=
    Nat.Odd.sub_odd (this _ n.succ_pos) <| this n (pos_of_ne_zero (by
      rintro rfl; unfold nth_prime_gap at hn; aesop))
  aesop

/-- The first prime gap of size `1` occurs at prime `2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21ceaf279b9771b68f9aa5184d964814d97bd5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
