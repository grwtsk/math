# ofCountableCylinderTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15c352dd829da0a863be14b80c5a6b20aea05e410a86620b7041125ca0997864",
  "kind": "def",
  "lexical_name": "ofCountableCylinderTower",
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
  "slug": "ofcountablecylindertower--c3166e252a130b97b7d902f0",
  "source": {
    "blob": "235d25342cb844b2fab7bac4875eb8047a02ca4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 101,
    "path": "GRWTSK/Algebra/GroupTheory/CountableShadowPipeline/Variant477e0913c86490a3efdabb5caa1de446f1e92a332c117df3f9565df4d5abc79e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3166e252a130b97b7d902f02955cb94a62bee1ee617c71a3e434f8bdb29e227",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CountableShadowPipeline/Variant477e0913c86490a3efdabb5caa1de446f1e92a332c117df3f9565df4d5abc79e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15c352dd829da0a863be14b80c5a6b20aea05e410a86620b7041125ca0997864`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofCountableCylinderTower
    {V : CountableBooleanVocabulary}
    (T : CountableCylinderTower V) :
    ∃ M : BinaryMatrixTower, M.stageCompatible ∧ M.coversFiniteWindows :=
  let M : BinaryMatrixTower :=
    { towerHash := T.towerHash
      sourceTreeHash := V.vocabularyHash
      refinementHash := T.towerHash + V.vocabularyHash
      supportHash := T.towerHash
      theoremResolutionHash := 0
      admissibleLimitClosed := True
      compactLimit := True
      compactLimitProof := fun _ => trivial
      stageCompatible := T.compatible
      stageCompatibleProof := T.compatibleProof
      coversFiniteWindows := T.coversFiniteWindows
      coversFiniteWindowsProof := T.coversProof
      samplesRealityHash := 0
      samplesReality := True
      samplesRealityProof := trivial
      refinementCompatible := T.compatible
      refinementCompatibleProof := T.compatibleProof
      finitePrefixVerified := T.coversFiniteWindows
      finitePrefixProof := T.coversProof }
  ⟨M, M.stageCompatibleProof, M.coversFiniteWindowsProof⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CountableShadowPipeline/Variant477e0913c86490a3efdabb5caa1de446f1e92a332c117df3f9565df4d5abc79e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CountableShadowPipeline/Variant477e0913c86490a3efdabb5caa1de446f1e92a332c117df3f9565df4d5abc79e.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `235d25342cb844b2fab7bac4875eb8047a02ca4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
