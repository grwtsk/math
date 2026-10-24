# ContinuousConstSMul.secondCountableTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b296a5768b6f6955b4baca1d569971067ae4cc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 540,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0c8686e-1bde-346c-4c24-794f030f73b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:419a9d46-6229-4e3c-2af8-d1fd43aa91ba",
  "kind": "theorem",
  "lexical_name": "ContinuousConstSMul.secondCountableTopology",
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
  "slug": "continuousconstsmul-secondcountabletopology--1e2f93124591a303d0dd7cad",
  "source": {
    "blob": "4b296a5768b6f6955b4baca1d569971067ae4cc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 540,
    "path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e2f93124591a303d0dd7cadb3694b3bd48f81a97cc035d6184bc0c046f2dfd7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:419a9d46-6229-4e3c-2af8-d1fd43aa91ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousConstSMul.secondCountableTopology [SecondCountableTopology T]
    [ContinuousConstSMul Γ T] : SecondCountableTopology (Quotient (MulAction.orbitRel Γ T)) :=
  TopologicalSpace.Quotient.secondCountableTopology isOpenMap_quotient_mk'_mul
#align has_continuous_const_smul.second_countable_topology ContinuousConstSMul.secondCountableTopology
#align has_continuous_const_vadd.second_countable_topology ContinuousConstVAdd.secondCountableTopology

section nhds

section MulAction

variable {G₀ : Type*} [GroupWithZero G₀] [MulAction G₀ α] [TopologicalSpace α]
  [ContinuousConstSMul G₀ α]

-- porting note: generalize to a group action + `IsUnit`
/-- Scalar multiplication preserves neighborhoods. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b296a5768b6f6955b4baca1d569971067ae4cc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
