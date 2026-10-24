# sheafAdjunctionCocontinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b65a7f371edfbf250d90e7b35cd923077056fd154e3db162db4099c4a0c7c0a",
  "kind": "def",
  "lexical_name": "sheafAdjunctionCocontinuous",
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
  "slug": "sheafadjunctioncocontinuous--19b64ae76eedf74d1db8b4cd",
  "source": {
    "blob": "40637bfe56ffef83f620b50a8f018b54fffb3897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 321,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19b64ae76eedf74d1db8b4cd4bd9d6621a52446e6aa58b4148db92b0ca90a31f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b65a7f371edfbf250d90e7b35cd923077056fd154e3db162db4099c4a0c7c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sheafAdjunctionCocontinuous :
    G.sheafPushforwardContinuous A J K ⊣ G.sheafPushforwardCocontinuous A J K :=
  (G.op.ranAdjunction A).restrictFullyFaithful
    (fullyFaithfulSheafToPresheaf K A) (fullyFaithfulSheafToPresheaf J A)
    (G.sheafPushforwardContinuousCompSheafToPresheafIso A J K).symm
    (G.sheafPushforwardCocontinuousCompSheafToPresheafIso A J K).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40637bfe56ffef83f620b50a8f018b54fffb3897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
