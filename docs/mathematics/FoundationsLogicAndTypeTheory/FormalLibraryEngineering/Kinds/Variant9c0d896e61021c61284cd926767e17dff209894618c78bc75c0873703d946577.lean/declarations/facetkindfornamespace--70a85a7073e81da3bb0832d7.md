# facetKindForNamespace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09cef9358a9e83445dae3e7b93e9d09efd02e5b8a94b0f18638916958f0850dc",
  "kind": "def",
  "lexical_name": "facetKindForNamespace",
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
  "slug": "facetkindfornamespace--70a85a7073e81da3bb0832d7",
  "source": {
    "blob": "27d9f1bdb464e6a96959fcf3d8906a8a711b958c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Kinds/Variant9c0d896e61021c61284cd926767e17dff209894618c78bc75c0873703d946577.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70a85a7073e81da3bb0832d7e3133020a7b03c955bdb7174adbd2a259138a63a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Kinds/Variant9c0d896e61021c61284cd926767e17dff209894618c78bc75c0873703d946577.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09cef9358a9e83445dae3e7b93e9d09efd02e5b8a94b0f18638916958f0850dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def facetKindForNamespace (ns : Name) : Name :=
  match ns with
  | `Lake.Package => Package.facetKind
  | `Lake.Module => Module.facetKind
  | `Lake.LeanLib => LeanLib.facetKind
  | `Lake.LeanExe => LeanExe.facetKind
  | `Lake.ExternLib => ExternLib.facetKind
  | `Lake.InputFile => InputFile.facetKind
  | `Lake.InputDir => InputDir.facetKind
  | _ => Name.anonymous
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Kinds/Variant9c0d896e61021c61284cd926767e17dff209894618c78bc75c0873703d946577.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Kinds/Variant9c0d896e61021c61284cd926767e17dff209894618c78bc75c0873703d946577.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27d9f1bdb464e6a96959fcf3d8906a8a711b958c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
