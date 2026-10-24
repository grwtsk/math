# activation_reaches_reducer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52fc11ae-4144-eb4e-f35f-4688bb1db7b1",
  "kind": "theorem",
  "lexical_name": "activation_reaches_reducer",
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
  "slug": "activation-reaches-reducer--86f755deef75be996f0b5254",
  "source": {
    "blob": "cd331241511a5bf64324ae0e5fbf3686fbea39b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 254,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant9de013716cce42a78cecadd6cfc9c6b0703a9c7174ad3b79c0726200732a9281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86f755deef75be996f0b5254984468e6d9b98b836d8f9fe115c6b7395a6f8145",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant9de013716cce42a78cecadd6cfc9c6b0703a9c7174ad3b79c0726200732a9281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52fc11ae-4144-eb4e-f35f-4688bb1db7b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem activation_reaches_reducer
    {Node : Type*} {architecture : LayeredDiffusionArchitecture Node}
    (realization : SymbolicArchitectureComponentRealization Node architecture) :
    architecture.network.rel
      realization.residualActivator.node realization.neuralReducer.node := by
  exact architecture.network.trans realization.activatorFeedsDiffuser
    (architecture.network.trans realization.diffuserFeedsRouter
      realization.routerFeedsReducer)

end SymbolicArchitectureComponentRealization

/-! ## Corpus-bound routing -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant9de013716cce42a78cecadd6cfc9c6b0703a9c7174ad3b79c0726200732a9281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant9de013716cce42a78cecadd6cfc9c6b0703a9c7174ad3b79c0726200732a9281.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd331241511a5bf64324ae0e5fbf3686fbea39b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
