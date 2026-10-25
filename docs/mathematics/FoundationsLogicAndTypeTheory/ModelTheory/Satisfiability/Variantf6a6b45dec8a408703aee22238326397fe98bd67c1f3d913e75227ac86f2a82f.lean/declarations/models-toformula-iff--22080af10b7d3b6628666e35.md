# models_toFormula_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67e4f6ca-af5b-9ab4-d723-d79367ba64a2",
  "kind": "theorem",
  "lexical_name": "models_toFormula_iff",
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
  "slug": "models-toformula-iff--22080af10b7d3b6628666e35",
  "source": {
    "blob": "4e8f5d7fa99799272cc381e0c7724fe6b6fff5a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 356,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22080af10b7d3b6628666e35ee575f8943ebc05c376a85eb6c1253d330826167",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67e4f6ca-af5b-9ab4-d723-d79367ba64a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem models_toFormula_iff {φ : L.BoundedFormula α n} : T ⊨ᵇ φ.toFormula ↔ T ⊨ᵇ φ := by
  refine ⟨fun h M v xs => ?_, ?_⟩
  · have h' : φ.toFormula.Realize (Sum.elim v xs) := h.realize_formula M
    simp only [BoundedFormula.realize_toFormula, Sum.elim_comp_inl, Sum.elim_comp_inr] at h'
    exact h'
  · simp only [models_formula_iff, BoundedFormula.realize_toFormula]
    exact fun h M v => h M _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e8f5d7fa99799272cc381e0c7724fe6b6fff5a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
