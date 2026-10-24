# comp_δ_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d18ce1a9-430b-49ec-4249-2fa11b559e9e",
  "kind": "theorem",
  "lexical_name": "comp_δ_eq_zero",
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
  "slug": "comp-eq-zero--09e5022abf6e6aa6cb9148f6",
  "source": {
    "blob": "b7e89a0b7a401f12d80485120dba0f165afbb713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant2ff4e9b055e2d99b1fdeb56c006f4dacb1ebb5c5c75f110e6811155575c17055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09e5022abf6e6aa6cb9148f6f1af00e5bcbd28a40b8ca24779c0d2713b20264a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant2ff4e9b055e2d99b1fdeb56c006f4dacb1ebb5c5c75f110e6811155575c17055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d18ce1a9-430b-49ec-4249-2fa11b559e9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_δ_eq_zero {Y : C} {n : ℕ} {q : ℕ} {φ : Y ⟶ X _⦋n + 1⦌} (v : HigherFacesVanish q φ)
    (j : Fin (n + 2)) (hj₁ : j ≠ 0) (hj₂ : n + 2 ≤ (j : ℕ) + q) : φ ≫ X.δ j = 0 := by
  obtain ⟨i, rfl⟩ := Fin.eq_succ_of_ne_zero hj₁
  apply v i
  simp only [Fin.val_succ] at hj₂
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant2ff4e9b055e2d99b1fdeb56c006f4dacb1ebb5c5c75f110e6811155575c17055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant2ff4e9b055e2d99b1fdeb56c006f4dacb1ebb5c5c75f110e6811155575c17055.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7e89a0b7a401f12d80485120dba0f165afbb713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
