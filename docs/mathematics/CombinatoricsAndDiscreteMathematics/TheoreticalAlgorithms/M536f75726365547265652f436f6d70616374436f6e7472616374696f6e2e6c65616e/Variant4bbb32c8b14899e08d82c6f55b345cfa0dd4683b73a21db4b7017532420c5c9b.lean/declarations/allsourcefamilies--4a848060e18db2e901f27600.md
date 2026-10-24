# allSourceFamilies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ac82cfb7df9b3cf855faccdb0d3e3291275cfab70d49c7ff61e681feb5c9bbe",
  "kind": "def",
  "lexical_name": "allSourceFamilies",
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
  "slug": "allsourcefamilies--4a848060e18db2e901f27600",
  "source": {
    "blob": "29f4fc32e1bbda1c030132fef3b1303b778b0473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f436f6d70616374436f6e7472616374696f6e2e6c65616e/Variant4bbb32c8b14899e08d82c6f55b345cfa0dd4683b73a21db4b7017532420c5c9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a848060e18db2e901f276006e8a4a5496ee238bdf559de0ca2081a36d1a8016",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f436f6d70616374436f6e7472616374696f6e2e6c65616e/Variant4bbb32c8b14899e08d82c6f55b345cfa0dd4683b73a21db4b7017532420c5c9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ac82cfb7df9b3cf855faccdb0d3e3291275cfab70d49c7ff61e681feb5c9bbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def allSourceFamilies : List SourceFamily :=
  [ SourceFamily.finiteWitnessResidueCore
  , SourceFamily.manuscriptWitness
  , SourceFamily.pipeline
  , SourceFamily.center
  , SourceFamily.phases
  , SourceFamily.poles
  , SourceFamily.residues
  , SourceFamily.targets
  , SourceFamily.sourceTree
  , SourceFamily.radoProjected
  , SourceFamily.memory
  , SourceFamily.modularWave
  , SourceFamily.researchSurvey
  , SourceFamily.retiredPath
  , SourceFamily.validation
  , SourceFamily.tests
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f436f6d70616374436f6e7472616374696f6e2e6c65616e/Variant4bbb32c8b14899e08d82c6f55b345cfa0dd4683b73a21db4b7017532420c5c9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f436f6d70616374436f6e7472616374696f6e2e6c65616e/Variant4bbb32c8b14899e08d82c6f55b345cfa0dd4683b73a21db4b7017532420c5c9b.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f4fc32e1bbda1c030132fef3b1303b778b0473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
