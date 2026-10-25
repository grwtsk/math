# cooper_resolution_dvd_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b8bf8d1-41d9-d139-83f3-8662a3e4b44f",
  "kind": "theorem",
  "lexical_name": "cooper_resolution_dvd_right",
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
  "slug": "cooper-resolution-dvd-right--2ac5fa5e600ac1669b28583c",
  "source": {
    "blob": "c4e7389993380fb217d9d5c2936b86c8ea6f7d77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ac5fa5e600ac1669b28583cf73c5ff459afb67c6c5005bc3709bc4cc48310d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b8bf8d1-41d9-d139-83f3-8662a3e4b44f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cooper_resolution_dvd_right
    {a b c d s p q : Int} (a_pos : 0 < a) (b_pos : 0 < b) (d_pos : 0 < d) :
    (∃ x, p ≤ a * x ∧ b * x ≤ q ∧ d ∣ c * x + s) ↔
    (∃ k : Int, 0 ≤ k ∧ k < lcm b (b * d / gcd (b * d) c) ∧
      a * k + b * p ≤ a * q ∧
      b ∣ k - q ∧
      b * d ∣ (- c) * k + c * q + b * s) := by
  have this : ∀ x y z : Int, x + -y ≤ -z ↔ x + z ≤ y := by omega
  suffices h :
    (∃ x, p ≤ a * x ∧ b * x ≤ q ∧ d ∣ c * x + s) ↔
    (∃ k : Int, 0 ≤ k ∧ k < lcm b (b * d / gcd (b * d) (-c)) ∧
      a * k + a * (-q) ≤ b * (-p) ∧
      b ∣ k + (-q) ∧
      b * d ∣ (- c) * k + (-c) * (-q) + b * s) by
    simp only [gcd_neg, Int.neg_mul_neg] at h
    simp only [Int.mul_neg, this] at h
    exact h
  constructor
  · rintro ⟨x, lower, upper, dvd⟩
    have h : (∃ x, -q ≤ b * x ∧ a * x ≤ -p ∧ d ∣ -c * x + s) :=
      ⟨-x, Int.mul_neg _ _ ▸ Int.neg_le_neg upper, Int.mul_neg _ _ ▸ Int.neg_le_neg lower,
        by rwa [Int.neg_mul_neg _ _]⟩
    replace h := (cooper_resolution_dvd_left b_pos a_pos d_pos).mp h
    exact h
  · intro h
    obtain ⟨x, lower, upper, dvd⟩ := (cooper_resolution_dvd_left b_pos a_pos d_pos).mpr h
    refine ⟨-x, ?_, ?_, ?_⟩
    · exact Int.mul_neg _ _ ▸ Int.le_neg_of_le_neg upper
    · exact Int.mul_neg _ _ ▸ Int.neg_le_of_neg_le lower
    · exact Int.mul_neg _ _ ▸ Int.neg_mul _ _ ▸ dvd

end Int
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4e7389993380fb217d9d5c2936b86c8ea6f7d77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
