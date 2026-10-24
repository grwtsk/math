# reciprocal_section_height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2091afc-f82a-1176-7482-f85beab60789",
  "kind": "theorem",
  "lexical_name": "reciprocal_section_height",
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
  "slug": "reciprocal-section-height--63dd15a7501232b74d6ec9bf",
  "source": {
    "blob": "1f7f7ac1a5fa69d996d8d0814fbcf5e27faa7c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 131,
    "path": "GRWTSK/NumberTheory/Height/PrimitivePairNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63dd15a7501232b74d6ec9bf5888d0d6d9d61d35d260e2f0a31e8997718a10dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Height/PrimitivePairNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2091afc-f82a-1176-7482-f85beab60789`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_section_height (c : ℕ) (hc : c ≠ 0) :
    height (![0, 1 / (c : ℚ)] : Fin 2 → ℚ) = (c : ℚ) := by
  let q : Fin 2 → ℚ := ![0, 1 / (c : ℚ)]
  have hcz : (c : ℤ) ≠ 0 := Int.natCast_ne_zero.mpr hc
  have hD : denominator q = c := by
    apply Nat.dvd_antisymm
    · apply (denominator_dvd_iff_clears q c).mpr
      intro i
      fin_cases i
      · exact ⟨0, by simp [q]⟩
      · simpa only [Int.cast_natCast] using
          (clears_reciprocal_iff c (c : ℤ) hcz).mpr (dvd_refl (c : ℤ))
    · apply Int.natCast_dvd_natCast.mp
      exact (clears_reciprocal_iff (denominator q) (c : ℤ) hcz).mp
        (by simpa [q] using denominator_clears q 1)
  have hc1 : (1 : ℚ) ≤ c := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr hc
  have hM : maxAbs q ≤ 1 := by
    apply (maxAbs_le_iff _ _).mpr
    intro i
    fin_cases i
    · norm_num [q]
    · change |1 / (c : ℚ)| ≤ 1
      rw [abs_div, abs_one, abs_of_nonneg (Nat.cast_nonneg c)]
      exact (div_le_iff₀ (lt_of_lt_of_le (by norm_num) hc1)).mpr (by simpa using hc1)
  change height q = _
  rw [height, hD, max_eq_left hM, mul_one]

end GRWTSK.NumberTheory.Height.PrimitivePairNormalization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Height/PrimitivePairNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Height/PrimitivePairNormalization.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f7f7ac1a5fa69d996d8d0814fbcf5e27faa7c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
