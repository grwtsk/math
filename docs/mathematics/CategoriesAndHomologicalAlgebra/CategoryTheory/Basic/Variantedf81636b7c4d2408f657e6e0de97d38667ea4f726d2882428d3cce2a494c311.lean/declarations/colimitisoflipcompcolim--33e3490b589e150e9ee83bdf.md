# colimitIsoFlipCompColim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c7a11b90c6dd7a85a39c1ad600b7203394cc80cae9a306b8d654795df84afd4",
  "kind": "def",
  "lexical_name": "colimitIsoFlipCompColim",
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
  "slug": "colimitisoflipcompcolim--33e3490b589e150e9ee83bdf",
  "source": {
    "blob": "bb4590eee1af73a568c0cbd0267d395368058be6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 505,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantedf81636b7c4d2408f657e6e0de97d38667ea4f726d2882428d3cce2a494c311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33e3490b589e150e9ee83bdf50c75aa76819f0f74db1fcdbc6e41e4066b9ba43",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantedf81636b7c4d2408f657e6e0de97d38667ea4f726d2882428d3cce2a494c311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c7a11b90c6dd7a85a39c1ad600b7203394cc80cae9a306b8d654795df84afd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitIsoFlipCompColim [HasColimitsOfShape J C] (F : J ⥤ K ⥤ C) : colimit F ≅ F.flip ⋙ colim :=
  NatIso.ofComponents (fun k =>
    colimitObjIsoColimitCompEvaluation F k ≪≫ HasColimit.isoOfNatIso (compEvaluation F k))

set_option backward.defeqAttrib.useBackward true in
/-- `colimitIsoFlipCompColim` is natural with respect to diagrams. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantedf81636b7c4d2408f657e6e0de97d38667ea4f726d2882428d3cce2a494c311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantedf81636b7c4d2408f657e6e0de97d38667ea4f726d2882428d3cce2a494c311.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb4590eee1af73a568c0cbd0267d395368058be6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
