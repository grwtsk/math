# image_Ico_emod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83b4492e-1fbd-08b2-a7c5-46e08b320c49",
  "kind": "theorem",
  "lexical_name": "image_Ico_emod",
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
  "slug": "image-ico-emod--8687262dc7beeef382da7902",
  "source": {
    "blob": "b6b862b4b98e220c6c4e4307e6e48d1bdfde8dfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8687262dc7beeef382da7902cbfe06ad5a6148fcd20d0873c59b3215bbf64946",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83b4492e-1fbd-08b2-a7c5-46e08b320c49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_Ico_emod (n a : ℤ) (h : 0 ≤ a) : (Ico n (n + a)).image (· % a) = Ico 0 a := by
  obtain rfl | ha := eq_or_lt_of_le h
  · simp
  ext i
  simp only [mem_image, mem_range, mem_Ico]
  constructor
  · rintro ⟨i, _, rfl⟩
    exact ⟨emod_nonneg i ha.ne', emod_lt_of_pos i ha⟩
  intro hia
  have hn := Int.emod_add_ediv n a
  obtain hi | hi := lt_or_le i (n % a)
  · refine ⟨i + a * (n / a + 1), ⟨?_, ?_⟩, ?_⟩
    · rw [add_comm (n / a), mul_add, mul_one, ← add_assoc]
      refine hn.symm.le.trans (add_le_add_right ?_ _)
      simpa only [zero_add] using add_le_add hia.left (Int.emod_lt_of_pos n ha).le
    · refine lt_of_lt_of_le (add_lt_add_right hi (a * (n / a + 1))) ?_
      rw [mul_add, mul_one, ← add_assoc, hn]
    · rw [Int.add_mul_emod_self_left, Int.emod_eq_of_lt hia.left hia.right]
  · refine ⟨i + a * (n / a), ⟨?_, ?_⟩, ?_⟩
    · exact hn.symm.le.trans (add_le_add_right hi _)
    · rw [add_comm n a]
      refine add_lt_add_of_lt_of_le hia.right (le_trans ?_ hn.le)
      simp only [Nat.zero_le, le_add_iff_nonneg_left]
      exact Int.emod_nonneg n (ne_of_gt ha)
    · rw [Int.add_mul_emod_self_left, Int.emod_eq_of_lt hia.left hia.right]

end Int
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6b862b4b98e220c6c4e4307e6e48d1bdfde8dfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
