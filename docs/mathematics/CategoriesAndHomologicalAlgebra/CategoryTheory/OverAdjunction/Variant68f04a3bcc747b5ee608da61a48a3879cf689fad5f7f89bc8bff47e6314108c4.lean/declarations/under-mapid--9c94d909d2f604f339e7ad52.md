# Under.mapId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1c5cd4b7ce4b06182ac369e67b5b60c4696e13d3e37b9a936d6cd423b0f91ed",
  "kind": "def",
  "lexical_name": "Under.mapId",
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
  "slug": "under-mapid--9c94d909d2f604f339e7ad52",
  "source": {
    "blob": "392b56c18d793f83ee5f0ce5be48603b6c3d63fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 258,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant68f04a3bcc747b5ee608da61a48a3879cf689fad5f7f89bc8bff47e6314108c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c94d909d2f604f339e7ad5292e8f001e116b41ed67b7770d79fbdd5ac438d2e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant68f04a3bcc747b5ee608da61a48a3879cf689fad5f7f89bc8bff47e6314108c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1c5cd4b7ce4b06182ac369e67b5b60c4696e13d3e37b9a936d6cd423b0f91ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Under.mapId [P.IsMultiplicative] [Q.RespectsIso] (X : T) (f : X ⟶ X := 𝟙 X)
    (hf : f = 𝟙 X := by cat_disch) :
    Under.map (f := f) (P := P) Q (by subst hf; exact P.id_mem X) ≅ 𝟭 _ :=
  NatIso.ofComponents (fun Y ↦ Under.isoMk (Iso.refl _))

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- `Under.map` commutes with composition. -/
@[simps! hom_app_left]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant68f04a3bcc747b5ee608da61a48a3879cf689fad5f7f89bc8bff47e6314108c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant68f04a3bcc747b5ee608da61a48a3879cf689fad5f7f89bc8bff47e6314108c4.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `392b56c18d793f83ee5f0ce5be48603b6c3d63fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
