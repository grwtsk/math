# accessMachine_step_preserves_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0cfa17d4280096d794a0c394b47e1d3c9f631d14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4278f297-40fd-1805-0e4e-bcb288025b03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c509cdd-a314-8763-8a0d-6ebabb81bc77",
  "kind": "theorem",
  "lexical_name": "accessMachine_step_preserves_invariant",
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
  "slug": "accessmachine-step-preserves-invariant--0da35758e1f90a85cee2e6e2",
  "source": {
    "blob": "0cfa17d4280096d794a0c394b47e1d3c9f631d14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0da35758e1f90a85cee2e6e284ce5eccb12c7a7d82b7a052221ac125e7f4e443",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c509cdd-a314-8763-8a0d-6ebabb81bc77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem accessMachine_step_preserves_invariant
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {request : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G request}
    (machine :
      AccessMachine G request outputs)
    {state next : machine.State}
    (stateInvariant : machine.invariant state)
    (continued : machine.step state = .continue next) :
    machine.invariant next :=
  machine.step_preserves_invariant
    stateInvariant continued

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cfa17d4280096d794a0c394b47e1d3c9f631d14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
