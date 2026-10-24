# mulDissociated_iff_sum_eq_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30fade00-81a4-4afb-f893-a37d5a48a0ff",
  "kind": "lemma",
  "lexical_name": "mulDissociated_iff_sum_eq_subsingleton",
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
  "slug": "muldissociated-iff-sum-eq-subsingleton--dc85583acbb2b3d0130d52bf",
  "source": {
    "blob": "9faa55897188696dceaad7b57ab2e57276d0b664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc85583acbb2b3d0130d52bf5c693e954776de89809b94ae74304a489f3e4706",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30fade00-81a4-4afb-f893-a37d5a48a0ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma mulDissociated_iff_sum_eq_subsingleton :
    MulDissociated s ↔ ∀ a, {t : Finset α | ↑t ⊆ s ∧ ∏ x ∈ t, x = a}.Subsingleton :=
  ⟨fun hs _ _t ht _u hu ↦ hs ht.1 hu.1 <| ht.2.trans hu.2.symm,
    fun hs _t ht _u hu htu ↦ hs _ ⟨ht, htu⟩ ⟨hu, rfl⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9faa55897188696dceaad7b57ab2e57276d0b664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
