# sectionsSaturateEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53c0e090e08bbf47f02f3952a0613fd159d7d4c63f0780725bcbbd880866eb6e",
  "kind": "def",
  "lexical_name": "sectionsSaturateEquiv",
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
  "slug": "sectionssaturateequiv--204ee918de615b2b0b41b88f",
  "source": {
    "blob": "f2537e58f3e56f4f94bd3848f54290bd5cda707c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:204ee918de615b2b0b41b88fb8f6d84439e40e1129a7d522bd014d00c7051348",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53c0e090e08bbf47f02f3952a0613fd159d7d4c63f0780725bcbbd880866eb6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sectionsSaturateEquiv {S : C} (E : PreZeroHypercover S) (F : Cᵒᵖ ⥤ Type*) :
    (E.saturate.multicospanIndex F).sections ≃ Subtype (Presieve.Arrows.Compatible F E.f) where
  toFun s := ⟨s.val, fun i j _ _ _ hgij ↦ s.property ⟨(i, j), ⟨_, _, _, hgij⟩⟩⟩
  invFun s := ⟨s.val, fun r ↦ s.property _ _ _ _ _ r.snd.w⟩
  left_inv _ := rfl
  right_inv _ := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2537e58f3e56f4f94bd3848f54290bd5cda707c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
