# wideCoequalizerIsWideCoequalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0c6a01e8da5cc5738bdb8cadb18ca769f9186e40ce58a20ac147c892e57529d",
  "kind": "def",
  "lexical_name": "wideCoequalizerIsWideCoequalizer",
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
  "slug": "widecoequalizeriswidecoequalizer--1a64e4829d594312b46fbd87",
  "source": {
    "blob": "09879246e8d3feb7192d71d72bac28b3286b88f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 626,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant0034657349d269ac6c49ea7d4be7a7b73cbd1aa61cfba6e2e933f9b314e743bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a64e4829d594312b46fbd8789776240fd04dd8aec2e4c64e0e88bd4e70e6519",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant0034657349d269ac6c49ea7d4be7a7b73cbd1aa61cfba6e2e933f9b314e743bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0c6a01e8da5cc5738bdb8cadb18ca769f9186e40ce58a20ac147c892e57529d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wideCoequalizerIsWideCoequalizer [Nonempty J] :
    IsColimit (Cotrident.ofπ (wideCoequalizer.π f) (wideCoequalizer.condition f)) :=
  IsColimit.ofIsoColimit (colimit.isColimit _) (Cotrident.ext (Iso.refl _))

variable {f}

/-- Any morphism `k : Y ⟶ W` satisfying `∀ j₁ j₂, f j₁ ≫ k = f j₂ ≫ k` factors through the
    wide coequalizer of `f` via `wideCoequalizer.desc : wideCoequalizer f ⟶ W`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant0034657349d269ac6c49ea7d4be7a7b73cbd1aa61cfba6e2e933f9b314e743bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant0034657349d269ac6c49ea7d4be7a7b73cbd1aa61cfba6e2e933f9b314e743bc.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09879246e8d3feb7192d71d72bac28b3286b88f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
