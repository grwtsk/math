# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e60c283c854853eda16e7cefadfa848d658ce0174fd00bee9012ee9309893af",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--c622dfe89121e1020fef06ed",
  "source": {
    "blob": "554c5259e9c49988d24230bc5bb0a4a69ed96bd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 952,
    "line": 897,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant686f9c9e7fed4cb6493e781913139e697ccc1d1262d9231e68fbf92a3fb54af8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c622dfe89121e1020fef06ed040b064d1cbdfd2ab913ba38c29d67bad1ac5b52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant686f9c9e7fed4cb6493e781913139e697ccc1d1262d9231e68fbf92a3fb54af8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e60c283c854853eda16e7cefadfa848d658ce0174fd00bee9012ee9309893af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 897–952.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {t : ℚ} (ht : t ≠ 0) (a : ∀ t, t ≠ 0 → ℚ) : (if h : t = 0 then 1 else a t h) = 1 := by
  simp only [field]

/-! ## Units of a ring, partial division

This feature was dropped in the August 2025 `field_simp` refactor.
-/

/-

/-
Check that `field_simp` works for units of a ring.
-/

section CommRing
variable {R : Type*} [CommRing R] (a b c d e f g : R) (u₁ u₂ : Rˣ)

/--
Check that `divp_add_divp_same` takes priority over `divp_add_divp`.
-/
example : a /ₚ u₁ + b /ₚ u₁ = (a + b) /ₚ u₁ := by field_simp

/--
Check that `divp_sub_divp_same` takes priority over `divp_sub_divp`.
-/
example : a /ₚ u₁ - b /ₚ u₁ = (a - b) /ₚ u₁ := by field_simp

/-
Combining `eq_divp_iff_mul_eq` and `divp_eq_iff_mul_eq`.
-/
example : a /ₚ u₁ = b /ₚ u₂ ↔ a * u₂ = b * u₁ := by field_simp

/--
Making sure inverses of units are rewritten properly.
-/
example : ↑u₁⁻¹ = 1 /ₚ u₁ := by field_simp

/--
Checking arithmetic expressions.
-/
example : (f - (e + c * -(a /ₚ u₁) * b + d) - g) =
    (f * u₁ - (e * u₁ + c * (-a) * b + d * u₁) - g * u₁) /ₚ u₁ := by field_simp

/--
Division of units.
-/
example : a /ₚ (u₁ / u₂) = a * u₂ /ₚ u₁ := by field_simp

example : a /ₚ u₁ /ₚ u₂ = a /ₚ (u₂ * u₁) := by field_simp

end CommRing

-/

/-! ## Algebraic structures weaker than `Field` -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant686f9c9e7fed4cb6493e781913139e697ccc1d1262d9231e68fbf92a3fb54af8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant686f9c9e7fed4cb6493e781913139e697ccc1d1262d9231e68fbf92a3fb54af8.lean#L897).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `554c5259e9c49988d24230bc5bb0a4a69ed96bd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
