# topologicalGroup_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3bf7d7307e7d75ed29b7304fff40e2747b00d96cb2d4a91447f5b7ea208f736",
  "kind": "instance",
  "lexical_name": "topologicalGroup_quotient",
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
  "slug": "topologicalgroup-quotient--c2e135ef2c0b6e6eb2ff011c",
  "source": {
    "blob": "c57a280e7f399390f3ff1a54e1c573e98a615ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1002,
    "line": 982,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2e135ef2c0b6e6eb2ff011c959d1e1c2948382813548262b791d409dc2c38f9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3bf7d7307e7d75ed29b7304fff40e2747b00d96cb2d4a91447f5b7ea208f736`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 982–1002.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance topologicalGroup_quotient [N.Normal] : TopologicalGroup (G ⧸ N) where
  continuous_mul := by
    have cont : Continuous (((↑) : G → G ⧸ N) ∘ fun p : G × G ↦ p.fst * p.snd) :=
      continuous_quot_mk.comp continuous_mul
    have quot : QuotientMap fun p : G × G ↦ ((p.1 : G ⧸ N), (p.2 : G ⧸ N)) := by
      apply IsOpenMap.to_quotientMap
      · exact (QuotientGroup.isOpenMap_coe N).prod (QuotientGroup.isOpenMap_coe N)
      · exact continuous_quot_mk.prod_map continuous_quot_mk
      · exact (surjective_quot_mk _).Prod_map (surjective_quot_mk _)
    exact quot.continuous_iff.2 cont
  continuous_inv := by
    have quot := IsOpenMap.to_quotientMap
      (QuotientGroup.isOpenMap_coe N) continuous_quot_mk (surjective_quot_mk _)
    rw [quot.continuous_iff]
    exact continuous_quot_mk.comp continuous_inv
#align topological_group_quotient topologicalGroup_quotient
#align topological_add_group_quotient topologicalAddGroup_quotient

/-- Neighborhoods in the quotient are precisely the map of neighborhoods in the prequotient. -/
@[to_additive
  "Neighborhoods in the quotient are precisely the map of neighborhoods in the prequotient."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean#L982).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57a280e7f399390f3ff1a54e1c573e98a615ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
