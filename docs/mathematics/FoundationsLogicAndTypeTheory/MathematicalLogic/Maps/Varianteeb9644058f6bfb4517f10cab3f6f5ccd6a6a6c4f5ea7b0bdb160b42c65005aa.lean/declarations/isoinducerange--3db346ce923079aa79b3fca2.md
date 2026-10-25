# isoInduceRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba3e1dbc5c57f3c654f854563d4bcf83b204a8811ff25670213d82c5a4a2e69a",
  "kind": "def",
  "lexical_name": "isoInduceRange",
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
  "slug": "isoinducerange--3db346ce923079aa79b3fca2",
  "source": {
    "blob": "4baec2a18339d91705b44912d441dd82c003522a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 507,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Varianteeb9644058f6bfb4517f10cab3f6f5ccd6a6a6c4f5ea7b0bdb160b42c65005aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3db346ce923079aa79b3fca2626fa2d9f106bcccb57820b5c141ee66ae9c00b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Varianteeb9644058f6bfb4517f10cab3f6f5ccd6a6a6c4f5ea7b0bdb160b42c65005aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba3e1dbc5c57f3c654f854563d4bcf83b204a8811ff25670213d82c5a4a2e69a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isoInduceRange : G ≃g G'.induce (Set.range f) where
  __ := Equiv.ofInjective f f.injective
  map_rel_iff' := by simp

/-- Given an injective function, there is an embedding from the comapped graph into the original
graph. -/
-- Porting note: `@[simps]` does not work here since `f` is not a constructor application.
-- `@[simps toEmbedding]` could work, but Floris suggested writing `comap_apply` for now.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Varianteeb9644058f6bfb4517f10cab3f6f5ccd6a6a6c4f5ea7b0bdb160b42c65005aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Varianteeb9644058f6bfb4517f10cab3f6f5ccd6a6a6c4f5ea7b0bdb160b42c65005aa.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4baec2a18339d91705b44912d441dd82c003522a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
