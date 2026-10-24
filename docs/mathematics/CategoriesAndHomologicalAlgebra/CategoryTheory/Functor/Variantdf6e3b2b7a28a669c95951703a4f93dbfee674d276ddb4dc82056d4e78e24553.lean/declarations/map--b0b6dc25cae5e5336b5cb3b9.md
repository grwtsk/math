# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab3cae8c2cfe0a89265aac5fe8f803f2cd919830877c2aeadb8a8c7ede8ff04a",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--b0b6dc25cae5e5336b5cb3b9",
  "source": {
    "blob": "72a7dcbb4019c0cebe55d7f39308ad02735b86f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 292,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0b6dc25cae5e5336b5cb3b964c05ce3a268679c9a20c99d17bfd64721989f3a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab3cae8c2cfe0a89265aac5fe8f803f2cd919830877c2aeadb8a8c7ede8ff04a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map : Octahedron (by dsimp; rw [← F.map_comp, comm])
    (F.map_distinguished _ h₁₂) (F.map_distinguished _ h₂₃) (F.map_distinguished _ h₁₃) where
  m₁ := F.map h.m₁
  m₃ := F.map h.m₃
  comm₁ := by simpa using F.congr_map h.comm₁
  comm₂ := by simpa using F.congr_map h.comm₂ =≫ (F.commShiftIso 1).hom.app X₁
  comm₃ := by simpa using F.congr_map h.comm₃
  comm₄ := by simpa using F.congr_map h.comm₄ =≫ (F.commShiftIso 1).hom.app X₂
  mem := isomorphic_distinguished _ (F.map_distinguished _ h.mem) _
    (Triangle.isoMk _ _ (Iso.refl _) (Iso.refl _) (Iso.refl _))

end Octahedron

end Triangulated

open Triangulated

/-- If `F : C ⥤ D` is a triangulated functor from a triangulated category, then `D`
is also triangulated if tuples of composables arrows in `D` can be lifted to `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72a7dcbb4019c0cebe55d7f39308ad02735b86f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
