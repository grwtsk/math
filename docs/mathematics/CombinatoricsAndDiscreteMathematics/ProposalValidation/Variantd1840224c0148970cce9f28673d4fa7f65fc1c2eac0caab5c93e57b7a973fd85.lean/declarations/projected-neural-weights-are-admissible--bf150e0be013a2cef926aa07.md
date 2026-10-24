# projected_neural_weights_are_admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb68f4f0-cdfc-2432-8c13-a786935ff598",
  "kind": "theorem",
  "lexical_name": "projected_neural_weights_are_admissible",
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
  "slug": "projected-neural-weights-are-admissible--bf150e0be013a2cef926aa07",
  "source": {
    "blob": "7384bdbd82984df8838a89b818c796b6f3d535d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf150e0be013a2cef926aa077d0e166f1664bc23089b0542f6828e6a947d4cea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb68f4f0-cdfc-2432-8c13-a786935ff598`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projected_neural_weights_are_admissible
    {Model : Type*} [Fintype Model] [DecidableEq Model]
    {template : CouplingWeightState Model}
    {metric : WeightDistance Model}
    (projection : AdmissibleProjection Model template metric)
    (proposal : ProposedCouplingWeights Model) :
    (∀ i j, 0 ≤ (projectCouplingProposal projection proposal).weight i j) ∧
      (∀ i ∈ (projectCouplingProposal projection proposal).activeModels,
        ∑ j ∈ (projectCouplingProposal projection proposal).activeModels,
          (projectCouplingProposal projection proposal).weight i j = 1) :=
  projection_preserves_admissibility projection proposal.proposed

/-- High confidence does not uniformly establish an arbitrary proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7384bdbd82984df8838a89b818c796b6f3d535d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
