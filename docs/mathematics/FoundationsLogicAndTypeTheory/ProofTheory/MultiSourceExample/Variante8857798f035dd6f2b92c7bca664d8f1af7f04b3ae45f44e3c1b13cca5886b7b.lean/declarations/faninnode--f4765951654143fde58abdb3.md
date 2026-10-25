# fanInNode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:652db33126aba3a07e6c2dc929bd886018f9ca64c3d502357c4dbc6f30642d7a",
  "kind": "def",
  "lexical_name": "fanInNode",
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
  "slug": "faninnode--f4765951654143fde58abdb3",
  "source": {
    "blob": "ac2afd2a94950a8c5ac07d817908762231a5f4cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/MultiSourceExample/Variante8857798f035dd6f2b92c7bca664d8f1af7f04b3ae45f44e3c1b13cca5886b7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4765951654143fde58abdb32b1c09f608adb48a0ea378a61d26f470c0c5359c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/MultiSourceExample/Variante8857798f035dd6f2b92c7bca664d8f1af7f04b3ae45f44e3c1b13cca5886b7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:652db33126aba3a07e6c2dc929bd886018f9ca64c3d502357c4dbc6f30642d7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fanInNode : FanInNode → TransferNode
  | .source index => {
      nodeArtifact := ⟨.roleTagged "FCRS.UTTA.MultiSourceExample"
        (FanInNode.source index).identityCode (sourceTheorem index).theoremArtifact⟩
      kind := .SourceTheorem
      theoryVersionArtifact := ⟨(sourceVersion index).artifact⟩
      theoremArtifact := some ⟨(sourceTheorem index).theoremArtifact⟩
      propositionArtifact := some ⟨(sourceTheorem index).propositionArtifact⟩
      supportingArtifacts := []
    }
  | .target => {
      nodeArtifact := ⟨.roleTagged "FCRS.UTTA.MultiSourceExample"
        FanInNode.target.identityCode targetTheorem.theoremArtifact⟩
      kind := .TargetTheorem
      theoryVersionArtifact := ⟨targetVersion.artifact⟩
      theoremArtifact := some ⟨targetTheorem.theoremArtifact⟩
      propositionArtifact := some ⟨targetTheorem.propositionArtifact⟩
      supportingArtifacts := []
    }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/MultiSourceExample/Variante8857798f035dd6f2b92c7bca664d8f1af7f04b3ae45f44e3c1b13cca5886b7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/MultiSourceExample/Variante8857798f035dd6f2b92c7bca664d8f1af7f04b3ae45f44e3c1b13cca5886b7b.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac2afd2a94950a8c5ac07d817908762231a5f4cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
