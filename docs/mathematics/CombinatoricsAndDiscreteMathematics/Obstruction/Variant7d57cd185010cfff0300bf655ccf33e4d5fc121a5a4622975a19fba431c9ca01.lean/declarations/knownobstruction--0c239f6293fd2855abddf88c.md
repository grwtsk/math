# KnownObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3e8027f4d8cfe1fb3a5c2dbe01aa40a82decf14f0219fd907da5d1d582e885f",
  "kind": "structure",
  "lexical_name": "KnownObstruction",
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
  "slug": "knownobstruction--0c239f6293fd2855abddf88c",
  "source": {
    "blob": "94c392b0f06f88b928f14cf93918127127ccea10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Obstruction/Variant7d57cd185010cfff0300bf655ccf33e4d5fc121a5a4622975a19fba431c9ca01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c239f6293fd2855abddf88ccff82c5b0933edbfb74ae4b8e91396d824814ecf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Obstruction/Variant7d57cd185010cfff0300bf655ccf33e4d5fc121a5a4622975a19fba431c9ca01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3e8027f4d8cfe1fb3a5c2dbe01aa40a82decf14f0219fd907da5d1d582e885f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure KnownObstruction
    {State : Type}
    (snapshot : ImmutableSnapshot State) where
  obstructionId : StableId
  kind : ObstructionKind
  injectionLocus : Finset StableId
  invariant : State → Prop
  program : MutationProgram State
  baselineHolds :
    invariant snapshot.state
  mutantViolates :
    ¬ invariant (program.mutate snapshot.state)
  direct_support_exact :
    program.directSupport = injectionLocus
  expectedDetector : StableId
  recoveryCriterion : StableId
  jurisProfileId : StableId

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Obstruction/Variant7d57cd185010cfff0300bf655ccf33e4d5fc121a5a4622975a19fba431c9ca01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Obstruction/Variant7d57cd185010cfff0300bf655ccf33e4d5fc121a5a4622975a19fba431c9ca01.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94c392b0f06f88b928f14cf93918127127ccea10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
