# StableDisagreementPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4a85a6cce16802d5ccbb37503cd93290ac6dc5e3ec24002fc0b6762a0871fb9",
  "kind": "structure",
  "lexical_name": "StableDisagreementPartition",
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
  "slug": "stabledisagreementpartition--e752a6ceec77d93de61da342",
  "source": {
    "blob": "f7218bfcb804a386b4f78c34b6c26b5a3cd10ed7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgreementRefinement/Variant82b7f473ed0eb241b9f61a619b2adb3af422e646447ccef96ee016ea43833e65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e752a6ceec77d93de61da3425f162585b0941521ed5ea908707cf70d0bac35b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgreementRefinement/Variant82b7f473ed0eb241b9f61a619b2adb3af422e646447ccef96ee016ea43833e65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4a85a6cce16802d5ccbb37503cd93290ac6dc5e3ec24002fc0b6762a0871fb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StableDisagreementPartition
    (ledger : AgreementLedger) where
  blocks : List (List OracleId)
  block_members_unique :
    ∀ block ∈ blocks, block.Nodup
  coverage :
    blocks.flatten.toFinset =
      ledger.oracleIds.toFinset
  disjoint :
    ∀ left ∈ blocks,
      ∀ right ∈ blocks,
        left ≠ right →
          List.Disjoint left right
  disagreementsSeparated :
    ∀ finding ∈ ledger.findings,
      finding.status = .disagrees →
      ∀ left ∈ finding.oracleIds,
        ∀ right ∈ finding.oracleIds,
          left ≠ right →
          ∀ block ∈ blocks,
            ¬ (left ∈ block ∧ right ∈ block)
  retainedFindingIds : List StableId
  findingsRetained :
    retainedFindingIds =
      ledger.findings.map AgreementFinding.findingId

/-- Closed finite refinement target emitted as an immutable proposal element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgreementRefinement/Variant82b7f473ed0eb241b9f61a619b2adb3af422e646447ccef96ee016ea43833e65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgreementRefinement/Variant82b7f473ed0eb241b9f61a619b2adb3af422e646447ccef96ee016ea43833e65.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7218bfcb804a386b4f78c34b6c26b5a3cd10ed7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
