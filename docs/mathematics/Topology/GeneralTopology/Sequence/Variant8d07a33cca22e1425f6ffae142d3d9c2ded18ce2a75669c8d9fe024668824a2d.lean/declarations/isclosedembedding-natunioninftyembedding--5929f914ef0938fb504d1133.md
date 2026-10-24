# isClosedEmbedding_natUnionInftyEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2728657c-e937-837c-cf52-a3c989a73b81",
  "kind": "lemma",
  "lexical_name": "isClosedEmbedding_natUnionInftyEmbedding",
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
  "slug": "isclosedembedding-natunioninftyembedding--5929f914ef0938fb504d1133",
  "source": {
    "blob": "cb29b25c11c0d8c89f3f0a69f1addbb9ac689802",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/Sequence/Variant8d07a33cca22e1425f6ffae142d3d9c2ded18ce2a75669c8d9fe024668824a2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5929f914ef0938fb504d11332833b73796f2613d1a68ca2852a207b51a763f77",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequence/Variant8d07a33cca22e1425f6ffae142d3d9c2ded18ce2a75669c8d9fe024668824a2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2728657c-e937-837c-cf52-a3c989a73b81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosedEmbedding_natUnionInftyEmbedding : IsClosedEmbedding natUnionInftyEmbedding := by
  refine .of_continuous_injective_isClosedMap
    natUnionInftyEmbedding.continuous ?_ ?_
  · rintro (_ | n) (_ | m) h
    · rfl
    · simp only [natUnionInftyEmbedding, one_div, ContinuousMap.coe_mk, zero_eq_inv] at h
      assumption_mod_cast
    · simp only [natUnionInftyEmbedding, one_div, ContinuousMap.coe_mk, inv_eq_zero] at h
      assumption_mod_cast
    · simp only [natUnionInftyEmbedding, one_div, ContinuousMap.coe_mk, inv_inj, add_left_inj,
        Nat.cast_inj] at h
      rw [h]
  · exact fun _ hC => (hC.isCompact.image natUnionInftyEmbedding.continuous).isClosed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequence/Variant8d07a33cca22e1425f6ffae142d3d9c2ded18ce2a75669c8d9fe024668824a2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequence/Variant8d07a33cca22e1425f6ffae142d3d9c2ded18ce2a75669c8d9fe024668824a2d.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb29b25c11c0d8c89f3f0a69f1addbb9ac689802` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
