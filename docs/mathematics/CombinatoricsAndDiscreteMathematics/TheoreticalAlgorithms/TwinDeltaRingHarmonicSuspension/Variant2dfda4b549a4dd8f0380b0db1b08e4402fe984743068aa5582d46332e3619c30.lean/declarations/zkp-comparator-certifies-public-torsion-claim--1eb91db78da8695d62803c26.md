# zkp_comparator_certifies_public_torsion_claim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aea7556729a34c4d00cc8f3252d7319de96f2676",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2dfda4b549a4dd8f0380b0db1b08e4402fe984743068aa5582d46332e3619c30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d415a9b-b111-a3a3-bf32-5e9b09d89cb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:121c986f-65c0-3db1-767f-00ea3662a002",
  "kind": "theorem",
  "lexical_name": "zkp_comparator_certifies_public_torsion_claim",
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
  "slug": "zkp-comparator-certifies-public-torsion-claim--1eb91db78da8695d62803c26",
  "source": {
    "blob": "aea7556729a34c4d00cc8f3252d7319de96f2676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 188,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TwinDeltaRingHarmonicSuspension/Variant2dfda4b549a4dd8f0380b0db1b08e4402fe984743068aa5582d46332e3619c30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eb91db78da8695d62803c268a8e30d7b800519b91da8d0c566bf1ccf4d37d3a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TwinDeltaRingHarmonicSuspension/Variant2dfda4b549a4dd8f0380b0db1b08e4402fe984743068aa5582d46332e3619c30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:121c986f-65c0-3db1-767f-00ea3662a002`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zkp_comparator_certifies_public_torsion_claim
    (C : ZKPHomologicalComparator) :
    ∃ W : PrivateWitness,
      W.model.rationalTorsion = C.statement.claim.claimedTorsion := by
  rcases zkp_comparator_extracts_private_witness C with ⟨W, hRel⟩
  exact ⟨W, TorsionBlindDataHomology.RecoverabilityZKP.relation_torsion hRel⟩

/-- A certificate-gated loop through embedding data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TwinDeltaRingHarmonicSuspension/Variant2dfda4b549a4dd8f0380b0db1b08e4402fe984743068aa5582d46332e3619c30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TwinDeltaRingHarmonicSuspension/Variant2dfda4b549a4dd8f0380b0db1b08e4402fe984743068aa5582d46332e3619c30.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aea7556729a34c4d00cc8f3252d7319de96f2676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
