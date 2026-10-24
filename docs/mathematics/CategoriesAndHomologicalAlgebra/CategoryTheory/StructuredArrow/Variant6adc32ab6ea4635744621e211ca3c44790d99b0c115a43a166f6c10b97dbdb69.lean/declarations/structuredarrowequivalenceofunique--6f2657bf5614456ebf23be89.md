# structuredArrowEquivalenceOfUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:271040ba0f6d40285c5c0766092d5412bfc29f68f6bd7724f88b2192ce0ef13c",
  "kind": "def",
  "lexical_name": "structuredArrowEquivalenceOfUnique",
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
  "slug": "structuredarrowequivalenceofunique--6f2657bf5614456ebf23be89",
  "source": {
    "blob": "8fcaf0fdece502ea191d3ea2078348e908d423b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant6adc32ab6ea4635744621e211ca3c44790d99b0c115a43a166f6c10b97dbdb69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f2657bf5614456ebf23be89008faa281d25b2003485ed3472ee77e35d694adb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant6adc32ab6ea4635744621e211ca3c44790d99b0c115a43a166f6c10b97dbdb69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:271040ba0f6d40285c5c0766092d5412bfc29f68f6bd7724f88b2192ce0ef13c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def structuredArrowEquivalenceOfUnique
    (F : C ⥤ Discrete T) (t : T) [Subsingleton T] :
    StructuredArrow (.mk t) F ≌ C where
  functor := StructuredArrow.proj _ _
  inverse.obj X := StructuredArrow.mk (Y := X) (eqToHom (by subsingleton))
  inverse.map f := StructuredArrow.homMk f
  unitIso := NatIso.ofComponents (fun _ ↦ StructuredArrow.isoMk (Iso.refl _))
  counitIso := Iso.refl _

set_option backward.defeqAttrib.useBackward true in
/-- If `F : C ⥤ Discrete T` is a functor with `T` containing
a unique element `t`, then this is the equivalence
`CostructuredArrow F (Discrete.mk t) ≌ C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant6adc32ab6ea4635744621e211ca3c44790d99b0c115a43a166f6c10b97dbdb69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant6adc32ab6ea4635744621e211ca3c44790d99b0c115a43a166f6c10b97dbdb69.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fcaf0fdece502ea191d3ea2078348e908d423b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
