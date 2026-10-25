# ProjectAdmission

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5523288bae2666d026dcd6e170667797e572003d6281d3c052027940ef0870c",
  "kind": "structure",
  "lexical_name": "ProjectAdmission",
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
  "slug": "projectadmission--bfcb96c9ccbb1f1d7e37a0a9",
  "source": {
    "blob": "f64dcc9c5352076cef795c10f09888a12a84d5f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Admission/Variant9141d843ada5382e9740f4886ffcca69b6bdb889fad4a77dce276c2c388074dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfcb96c9ccbb1f1d7e37a0a953cd87e44b51f6072c677bf643d2b9d5e8079810",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Admission/Variant9141d843ada5382e9740f4886ffcca69b6bdb889fad4a77dce276c2c388074dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5523288bae2666d026dcd6e170667797e572003d6281d3c052027940ef0870c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProjectAdmission where
  project : ProjectIdentity
  manifest : ProjectManifest
  license : LicenseRecord
  status : AdmissionStatus
  project_matches :
    manifest.revision.project.projectId = project.projectId
  license_matches :
    license.project = project.projectId ∧
      license.revisionId = manifest.revision.revisionId
  admitted_is_legal :
    status = .admitted → license.LegallyAdmissible
  source_open : Bool
  admissionDigest : Digest

namespace ProjectAdmission

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Admission/Variant9141d843ada5382e9740f4886ffcca69b6bdb889fad4a77dce276c2c388074dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Admission/Variant9141d843ada5382e9740f4886ffcca69b6bdb889fad4a77dce276c2c388074dd.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f64dcc9c5352076cef795c10f09888a12a84d5f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
