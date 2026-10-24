# sheafificationHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51f4e6a070a2d23a75e492d9dee5ec7db66f013b2c9fdf875870f0f948b05c6b",
  "kind": "def",
  "lexical_name": "sheafificationHomEquiv",
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
  "slug": "sheafificationhomequiv--ec8c3fe8b892ef19c0deec81",
  "source": {
    "blob": "cc5425bc43825604d22e79985f03ceafbffddde8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec8c3fe8b892ef19c0deec8112a5b716a41d8f404f74d091adfe6ae912a14ac1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51f4e6a070a2d23a75e492d9dee5ec7db66f013b2c9fdf875870f0f948b05c6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sheafificationHomEquiv
    {P : PresheafOfModules.{v} R₀} {F : SheafOfModules.{v} R} :
    ((sheafification α).obj P ⟶ F) ≃
      (P ⟶ (restrictScalars α).obj ((SheafOfModules.forget _).obj F)) := by
  apply sheafifyHomEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc5425bc43825604d22e79985f03ceafbffddde8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
