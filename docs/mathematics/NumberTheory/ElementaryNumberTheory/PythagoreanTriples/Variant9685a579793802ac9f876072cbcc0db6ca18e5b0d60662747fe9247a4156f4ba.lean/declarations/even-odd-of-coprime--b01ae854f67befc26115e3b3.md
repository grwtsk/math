# even_odd_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6660e7a2-60c0-4d2a-f493-fe9e57faad6a",
  "kind": "theorem",
  "lexical_name": "even_odd_of_coprime",
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
  "slug": "even-odd-of-coprime--b01ae854f67befc26115e3b3",
  "source": {
    "blob": "73dd82173005f65fadd4e8f706d3a62c4d0956eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 125,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b01ae854f67befc26115e3b3fa31a39b28b8d95532afb057af6a320eb0b93870",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6660e7a2-60c0-4d2a-f493-fe9e57faad6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_odd_of_coprime (hc : Int.gcd x y = 1) :
    x % 2 = 0 ∧ y % 2 = 1 ∨ x % 2 = 1 ∧ y % 2 = 0 := by
  rcases Int.emod_two_eq_zero_or_one x with hx | hx <;>
    rcases Int.emod_two_eq_zero_or_one y with hy | hy
  -- x even, y even
  · exfalso
    apply Nat.not_coprime_of_dvd_of_dvd (by decide : 1 < 2) _ _ hc
    · apply Int.natCast_dvd.1
      apply Int.dvd_of_emod_eq_zero hx
    · apply Int.natCast_dvd.1
      apply Int.dvd_of_emod_eq_zero hy
  -- x even, y odd
  · left
    exact ⟨hx, hy⟩
  -- x odd, y even
  · right
    exact ⟨hx, hy⟩
  -- x odd, y odd
  · exfalso
    obtain ⟨x0, y0, rfl, rfl⟩ : ∃ x0 y0, x = x0 * 2 + 1 ∧ y = y0 * 2 + 1 := by
      obtain ⟨x0, hx2⟩ := exists_eq_mul_left_of_dvd (Int.dvd_self_sub_of_emod_eq hx)
      obtain ⟨y0, hy2⟩ := exists_eq_mul_left_of_dvd (Int.dvd_self_sub_of_emod_eq hy)
      rw [sub_eq_iff_eq_add] at hx2 hy2
      exact ⟨x0, y0, hx2, hy2⟩
    apply Int.sq_ne_two_mod_four z
    rw [show z * z = 4 * (x0 * x0 + x0 + y0 * y0 + y0) + 2 by
        rw [← h.eq]
        ring]
    simp only [Int.add_emod, Int.mul_emod_right, zero_add]
    decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73dd82173005f65fadd4e8f706d3a62c4d0956eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
