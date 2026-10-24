# hasEqualizer_comp_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c97a584-ef30-e335-5ec8-8961e38e6703",
  "kind": "theorem",
  "lexical_name": "hasEqualizer_comp_mono",
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
  "slug": "hasequalizer-comp-mono--ec41ce1bcb9f7431ca8ea5fb",
  "source": {
    "blob": "bdc80ab4d21063a15331c5173d20334ff7a8fd0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1259,
    "line": 1252,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantde6548d2be06ed37ed1a29399d4cf37bf9598b6d4dbe8b07246af3c3091786f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec41ce1bcb9f7431ca8ea5fbf9407427b21c309a435a7a1cc1e9e74a09f4f83c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantde6548d2be06ed37ed1a29399d4cf37bf9598b6d4dbe8b07246af3c3091786f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c97a584-ef30-e335-5ec8-8961e38e6703`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1252–1259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasEqualizer_comp_mono [HasEqualizer f g] {Z : C} (h : Y ⟶ Z) [Mono h] :
    HasEqualizer (f ≫ h) (g ≫ h) :=
  ⟨⟨{   cone := _
        isLimit := isEqualizerCompMono (limit.isLimit _) h }⟩⟩
#align category_theory.limits.has_equalizer_comp_mono CategoryTheory.Limits.hasEqualizer_comp_mono

/-- An equalizer of an idempotent morphism and the identity is split mono. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantde6548d2be06ed37ed1a29399d4cf37bf9598b6d4dbe8b07246af3c3091786f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantde6548d2be06ed37ed1a29399d4cf37bf9598b6d4dbe8b07246af3c3091786f1.lean#L1252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdc80ab4d21063a15331c5173d20334ff7a8fd0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
