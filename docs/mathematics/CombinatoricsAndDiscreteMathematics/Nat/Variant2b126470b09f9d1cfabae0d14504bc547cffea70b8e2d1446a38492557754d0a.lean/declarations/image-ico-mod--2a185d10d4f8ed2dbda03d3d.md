# image_Ico_mod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d33292f-053d-bee3-04f3-f56143126af2",
  "kind": "theorem",
  "lexical_name": "image_Ico_mod",
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
  "slug": "image-ico-mod--2a185d10d4f8ed2dbda03d3d",
  "source": {
    "blob": "6392b11fb2c972b6b55fd1ad96859ecbd0bc2610",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant2b126470b09f9d1cfabae0d14504bc547cffea70b8e2d1446a38492557754d0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a185d10d4f8ed2dbda03d3d66c70da2266231b60f8a5516b3fdfda1993b7df3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Nat/Variant2b126470b09f9d1cfabae0d14504bc547cffea70b8e2d1446a38492557754d0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d33292f-053d-bee3-04f3-f56143126af2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_Ico_mod (n a : ℕ) : (Ico n (n + a)).image (· % a) = range a := by
  obtain rfl | ha := eq_or_ne a 0
  · rw [range_zero, add_zero, Ico_self, image_empty]
  ext i
  simp only [mem_image, mem_range, mem_Ico]
  constructor
  · rintro ⟨i, _, rfl⟩
    exact mod_lt i ha.bot_lt
  intro hia
  have hn := Nat.mod_add_div n a
  obtain hi | hi := lt_or_ge i (n % a)
  · refine ⟨i + a * (n / a + 1), ⟨?_, ?_⟩, ?_⟩
    · rw [add_comm (n / a), Nat.mul_add, mul_one, ← add_assoc]
      refine hn.symm.le.trans (Nat.add_le_add_right ?_ _)
      simpa only [zero_add] using add_le_add (zero_le i) (Nat.mod_lt n ha.bot_lt).le
    · refine lt_of_lt_of_le (Nat.add_lt_add_right hi (a * (n / a + 1))) ?_
      rw [Nat.mul_add, mul_one, ← add_assoc, hn]
    · rw [Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt hia]
  · refine ⟨i + a * (n / a), ⟨?_, ?_⟩, ?_⟩
    · lia
    · lia
    · rw [Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt hia]

section Multiset

open Multiset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Nat/Variant2b126470b09f9d1cfabae0d14504bc547cffea70b8e2d1446a38492557754d0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant2b126470b09f9d1cfabae0d14504bc547cffea70b8e2d1446a38492557754d0a.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6392b11fb2c972b6b55fd1ad96859ecbd0bc2610` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
