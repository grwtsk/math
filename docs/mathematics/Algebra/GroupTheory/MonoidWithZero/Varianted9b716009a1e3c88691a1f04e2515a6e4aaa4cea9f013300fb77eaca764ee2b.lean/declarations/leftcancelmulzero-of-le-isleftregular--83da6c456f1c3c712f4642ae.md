# leftCancelMulZero_of_le_isLeftRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2476dea5-7673-a65d-6180-1a55aefbafa8",
  "kind": "theorem",
  "lexical_name": "leftCancelMulZero_of_le_isLeftRegular",
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
  "slug": "leftcancelmulzero-of-le-isleftregular--83da6c456f1c3c712f4642ae",
  "source": {
    "blob": "98ca45cc4647e4e4871aaf49e06726d6d4f59b83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 131,
    "path": "GRWTSK/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83da6c456f1c3c712f4642ae9b5ce4b9ce8285409107723089a23d4b8b6b4c4b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2476dea5-7673-a65d-6180-1a55aefbafa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftCancelMulZero_of_le_isLeftRegular
    (f : LocalizationWithZeroMap S N) [IsLeftCancelMulZero M]
    (h : ∀ ⦃x⦄, x ∈ S → IsLeftRegular x) : IsLeftCancelMulZero N := by
  let fl := f.toLocalizationMap
  let g := f.toMap
  constructor
  intro a z w ha hazw
  obtain ⟨b, hb⟩ := LocalizationMap.surj fl a
  obtain ⟨x, hx⟩ := LocalizationMap.surj fl z
  obtain ⟨y, hy⟩ := LocalizationMap.surj fl w
  rw [(LocalizationMap.eq_mk'_iff_mul_eq fl).mpr hx,
    (LocalizationMap.eq_mk'_iff_mul_eq fl).mpr hy, LocalizationMap.eq]
  use 1
  rw [OneMemClass.coe_one, one_mul, one_mul]
  -- The hypothesis `a ≠ 0` in `P` is equivalent to this
  have b1ne0 : b.1 ≠ 0 := by
    intro hb1
    have m0 : (LocalizationMap.toMap fl) 0 = 0 := f.map_zero'
    have a0 : a * (LocalizationMap.toMap fl) b.2 = 0 ↔ a = 0 :=
      (f.toLocalizationMap.map_units' b.2).mul_left_eq_zero
    rw [hb1, m0, a0] at hb
    exact ha hb
  have main : g (b.1 * (x.2 * y.1)) = g (b.1 * (y.2 * x.1)) :=
    calc
      g (b.1 * (x.2 * y.1)) = g b.1 * (g x.2 * g y.1) := by rw [map_mul g,map_mul g]
      _ = a * g b.2 * (g x.2 * (w * g y.2)) := by rw [hb, hy]
      _ = a * w * g b.2 * (g x.2 * g y.2) := by
        rw [← mul_assoc, ← mul_assoc _ w, mul_comm _ w, mul_assoc w, mul_assoc,
          ← mul_assoc w, ← mul_assoc w, mul_comm w]
      _ = a * z * g b.2 * (g x.2 * g y.2) := by rw [hazw]
      _ = a * g b.2 * (z * g x.2 * g y.2) := by
        rw [mul_assoc a, mul_comm z, ← mul_assoc a, mul_assoc, mul_assoc z]
      _ = g b.1 * g (y.2 * x.1) := by rw [hx, hb, mul_comm (g x.1), ← map_mul g]
      _ = g (b.1 * (y.2 * x.1)) := by rw [← map_mul g]
  -- The hypothesis `h` gives that `f` (so, `g`) is injective, and we can cancel out `b.1`.
  exact (IsLeftCancelMulZero.mul_left_cancel_of_ne_zero b1ne0
      ((LocalizationMap.toMap_injective_iff fl).mpr h main)).symm

/-- Given a Localization map `f : M →*₀ N` for a Submonoid `S ⊆ M`,
if `M` is a cancellative monoid with zero, and all elements of `S` are
regular, then N is a cancellative monoid with zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ca45cc4647e4e4871aaf49e06726d6d4f59b83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
