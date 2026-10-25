# recoveryWithoutTargetOccurrenceOrReflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14131ad1-6453-a4ca-0e34-e0a40da8a701",
  "kind": "theorem",
  "lexical_name": "recoveryWithoutTargetOccurrenceOrReflection",
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
  "slug": "recoverywithouttargetoccurrenceorreflection--8f1d606c834678b3425556bd",
  "source": {
    "blob": "d8d86ce706b0fbc779a189c3b4a9feee4c1e982f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/03ReflectiveRecoveryPremiseContainsConclusion/Variant75f0fc28fe48c411e0fcb4e79ae98dd8ae787f62982206dba408eb0a1a305b2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1d606c834678b3425556bdf4a3122d3c579b3fed930038b7e84d5effb451fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/03ReflectiveRecoveryPremiseContainsConclusion/Variant75f0fc28fe48c411e0fcb4e79ae98dd8ae787f62982206dba408eb0a1a305b2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14131ad1-6453-a4ca-0e34-e0a40da8a701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recoveryWithoutTargetOccurrenceOrReflection
    (derivation : CompletedDerivation) :
    profile.admissible input derivation.selectedWitness.value :=
  derivation.selectedWitness.intervalWitness.evidence

#check recoveryWithoutTargetOccurrenceOrReflection

end FCRS.Transport.Theorems.Cycle5ReflectiveRecovery
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/03ReflectiveRecoveryPremiseContainsConclusion/Variant75f0fc28fe48c411e0fcb4e79ae98dd8ae787f62982206dba408eb0a1a305b2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/03ReflectiveRecoveryPremiseContainsConclusion/Variant75f0fc28fe48c411e0fcb4e79ae98dd8ae787f62982206dba408eb0a1a305b2f.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8d86ce706b0fbc779a189c3b4a9feee4c1e982f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
