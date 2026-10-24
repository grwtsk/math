# HostFiberNetwork.candidate_rank_le_selected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f8bf887-dad1-de08-437d-16be8fcf65a2",
  "kind": "theorem",
  "lexical_name": "HostFiberNetwork.candidate_rank_le_selected",
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
  "slug": "hostfibernetwork-candidate-rank-le-selected--976b6965bc494647a713715e",
  "source": {
    "blob": "ea599239c79a6aa763990712170c5de2d866e056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 452,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variantadf14c06210058540baf7f05044a2f63b711544fd66da35b9c262db350b03362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:976b6965bc494647a713715e158930ea004ec8b7bfa865d59a3f84461b55d7f7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variantadf14c06210058540baf7f05044a2f63b711544fd66da35b9c262db350b03362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f8bf887-dad1-de08-437d-16be8fcf65a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HostFiberNetwork.candidate_rank_le_selected
    {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots)
    (source : Fin hostCount) (selected candidate : Fin edgeSlots)
    (hselected : network.selectOutgoingSlot source = some selected)
    (hcandidate : (network.fibers source candidate).enabled = true) :
    network.fiberRank source candidate ≤ network.fiberRank source selected := by
  have hselectedMem : selected ∈
      (network.outgoingSlots source).argmax (network.fiberRank source) := by
    simpa [HostFiberNetwork.selectOutgoingSlot, Option.mem_def] using hselected
  have hcandidateMem : candidate ∈ network.outgoingSlots source := by
    simp [HostFiberNetwork.outgoingSlots, hcandidate]
  exact List.le_of_mem_argmax hcandidateMem hselectedMem

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variantadf14c06210058540baf7f05044a2f63b711544fd66da35b9c262db350b03362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variantadf14c06210058540baf7f05044a2f63b711544fd66da35b9c262db350b03362.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea599239c79a6aa763990712170c5de2d866e056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
