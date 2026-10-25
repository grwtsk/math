# checked_final_UInt64_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "015fdd6607f5558ae7fa6cf27c6b8a587007142c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PlanOutputBounds/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f094d30-c455-3fbc-c83b-24e1cd62df91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7d25e84-f773-70ca-d46b-14d73b0e64e4",
  "kind": "theorem",
  "lexical_name": "checked_final_UInt64_sum",
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
  "slug": "checked-final-uint64-sum--ee53cb6c1b2e12359c5041f9",
  "source": {
    "blob": "015fdd6607f5558ae7fa6cf27c6b8a587007142c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 347,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantce893905e7af26c029fe84d83d3341cf95c99d989bb2d10d975690ff64bf36fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee53cb6c1b2e12359c5041f9528efe0c796e43fb2201a1d9a502d685ef10264b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantce893905e7af26c029fe84d83d3341cf95c99d989bb2d10d975690ff64bf36fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7d25e84-f773-70ca-d46b-14d73b0e64e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checked_final_UInt64_sum (plan : Plan) (area : Area) (checked : planWithin plan = true)
    (costs : List UInt64)
    (represented : costs.map UInt64.toNat = (finalCosts plan area).map Prod.snd) :
    (costs.foldl (· + ·) 0).toNat = totalBytes (finalCosts plan area) := by
  apply PlanResources.boundedSum_UInt64_exact costs PlanResources.maxTotalBytes
    (totalBytes (finalCosts plan area)) 0
  · apply (PlanResources.boundedSum_exact _ _ _ _).mpr
    exact ⟨by simp [represented, totalBytes], by
      simpa using (checked_final_map_bounds plan area checked).2⟩
  · exact Nat.le_refl _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantce893905e7af26c029fe84d83d3341cf95c99d989bb2d10d975690ff64bf36fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantce893905e7af26c029fe84d83d3341cf95c99d989bb2d10d975690ff64bf36fe.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015fdd6607f5558ae7fa6cf27c6b8a587007142c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
