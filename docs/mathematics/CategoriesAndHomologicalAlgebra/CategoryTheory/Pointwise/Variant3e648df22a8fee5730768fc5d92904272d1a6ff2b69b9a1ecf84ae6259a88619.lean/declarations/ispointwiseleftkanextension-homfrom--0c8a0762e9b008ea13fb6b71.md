# IsPointwiseLeftKanExtension.homFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:003e7a4c96511f58a83b282729553d2b5a6ec6f133b68737fc64315b37feb30e",
  "kind": "def",
  "lexical_name": "IsPointwiseLeftKanExtension.homFrom",
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
  "slug": "ispointwiseleftkanextension-homfrom--0c8a0762e9b008ea13fb6b71",
  "source": {
    "blob": "82693388c9e7c4b779e9003526877e01275bfd61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 363,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant3e648df22a8fee5730768fc5d92904272d1a6ff2b69b9a1ecf84ae6259a88619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c8a0762e9b008ea13fb6b71fa4279ad5b27a0625c33537211e8165190d16901",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant3e648df22a8fee5730768fc5d92904272d1a6ff2b69b9a1ecf84ae6259a88619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:003e7a4c96511f58a83b282729553d2b5a6ec6f133b68737fc64315b37feb30e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsPointwiseLeftKanExtension.homFrom (G : LeftExtension L F) : E ⟶ G :=
  StructuredArrow.homMk
    { app := fun Y => (h Y).desc (LeftExtension.coconeAt G Y)
      naturality := fun Y₁ Y₂ φ => (h Y₁).hom_ext (fun X => by
        rw [(h Y₁).fac_assoc (coconeAt G Y₁) X]
        simpa using (h Y₂).fac (coconeAt G Y₂) ((CostructuredArrow.map φ).obj X)) }
    (by
      ext X
      simpa using (h (L.obj X)).fac (LeftExtension.coconeAt G _) (CostructuredArrow.mk (𝟙 _)))

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant3e648df22a8fee5730768fc5d92904272d1a6ff2b69b9a1ecf84ae6259a88619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant3e648df22a8fee5730768fc5d92904272d1a6ff2b69b9a1ecf84ae6259a88619.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82693388c9e7c4b779e9003526877e01275bfd61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
