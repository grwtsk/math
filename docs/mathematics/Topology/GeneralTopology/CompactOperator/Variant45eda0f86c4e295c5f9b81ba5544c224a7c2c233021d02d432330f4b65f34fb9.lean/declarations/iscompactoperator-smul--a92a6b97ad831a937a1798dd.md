# IsCompactOperator.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f881252-59fe-cb5d-0599-4cc4beab90fa",
  "kind": "theorem",
  "lexical_name": "IsCompactOperator.smul",
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
  "slug": "iscompactoperator-smul--a92a6b97ad831a937a1798dd",
  "source": {
    "blob": "d68de6ae879308632034bf3882b05e94c3790b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 216,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a92a6b97ad831a937a1798dd0abe563ba9346afc29e6d9d1417311229afaaefd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f881252-59fe-cb5d-0599-4cc4beab90fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompactOperator.smul {S : Type*} [Monoid S] [DistribMulAction S M₂]
    [ContinuousConstSMul S M₂] {f : M₁ → M₂} (hf : IsCompactOperator f) (c : S) :
    IsCompactOperator (c • f) :=
  let ⟨K, hK, hKf⟩ := hf
  ⟨c • K, hK.image <| continuous_id.const_smul c,
    mem_of_superset hKf fun _ hx => smul_mem_smul_set hx⟩
#align is_compact_operator.smul IsCompactOperator.smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d68de6ae879308632034bf3882b05e94c3790b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
