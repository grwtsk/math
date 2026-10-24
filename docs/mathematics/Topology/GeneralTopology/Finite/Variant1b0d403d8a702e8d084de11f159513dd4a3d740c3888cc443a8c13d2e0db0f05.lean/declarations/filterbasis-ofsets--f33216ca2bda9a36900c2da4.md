# FilterBasis.ofSets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2c871feae93700d7248db67c9d1baafeb350cc18002f65b9a37676c99757ee9",
  "kind": "def",
  "lexical_name": "FilterBasis.ofSets",
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
  "slug": "filterbasis-ofsets--f33216ca2bda9a36900c2da4",
  "source": {
    "blob": "fad067a06ac0be24e0d077ac4fe05bbbef03a410",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f33216ca2bda9a36900c2da47362701565b75c9bd4b58ccbd4852af0d420b00b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2c871feae93700d7248db67c9d1baafeb350cc18002f65b9a37676c99757ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FilterBasis.ofSets (s : Set (Set α)) : FilterBasis α where
  sets := sInter '' { t | Set.Finite t ∧ t ⊆ s }
  nonempty := ⟨univ, ∅, ⟨⟨finite_empty, empty_subset s⟩, sInter_empty⟩⟩
  inter_sets := by
    rintro _ _ ⟨a, ⟨fina, suba⟩, rfl⟩ ⟨b, ⟨finb, subb⟩, rfl⟩
    exact ⟨⋂₀ (a ∪ b), mem_image_of_mem _ ⟨fina.union finb, union_subset suba subb⟩,
        (sInter_union _ _).subset⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fad067a06ac0be24e0d077ac4fe05bbbef03a410` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
