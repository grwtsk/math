# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:945a3ca8fb2fef08736b80cca9fccdbeb0a8a1f262b9bee42a3491dfc5c070f9",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--16bec90dea104446a607cf9a",
  "source": {
    "blob": "8f3052167ecdd46380511f4466b007f4fede8d6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 354,
    "path": "GRWTSK/Topology/MetricTopology/Hamming/Variantd17f015750c83bc119d3d73b44c2ca46b424e1635a9b572f43e400b70c77cfcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16bec90dea104446a607cf9addd53661920501ac4c8fc38fb7c5768e176b4344",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hamming/Variantd17f015750c83bc119d3d73b44c2ca46b424e1635a9b572f43e400b70c77cfcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:945a3ca8fb2fef08736b80cca9fccdbeb0a8a1f262b9bee42a3491dfc5c070f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : PseudoMetricSpace (Hamming β) where
  dist_self := by
    push_cast
    exact mod_cast hammingDist_self
  dist_comm := by
    push_cast
    exact mod_cast hammingDist_comm
  dist_triangle := by
    push_cast
    exact mod_cast hammingDist_triangle
  toUniformSpace := ⊥
  uniformity_dist := uniformity_dist_of_mem_uniformity _ _ fun s => by
    push_cast
    constructor
    · refine fun hs => ⟨1, zero_lt_one, fun hab => ?_⟩
      rw_mod_cast [hammingDist_lt_one] at hab
      rw [ofHamming_inj, ← mem_idRel] at hab
      exact hs hab
    · rintro ⟨_, hε, hs⟩ ⟨_, _⟩ hab
      rw [mem_idRel] at hab
      rw [hab]
      refine hs (lt_of_eq_of_lt ?_ hε)
      exact mod_cast hammingDist_self _
  toBornology := ⟨⊥, bot_le⟩
  cobounded_sets := by
    ext
    push_cast
    refine iff_of_true (Filter.mem_sets.mpr Filter.mem_bot) ⟨Fintype.card ι, fun _ _ _ _ => ?_⟩
    exact mod_cast hammingDist_le_card_fintype

@[simp, push_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hamming/Variantd17f015750c83bc119d3d73b44c2ca46b424e1635a9b572f43e400b70c77cfcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hamming/Variantd17f015750c83bc119d3d73b44c2ca46b424e1635a9b572f43e400b70c77cfcf.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f3052167ecdd46380511f4466b007f4fede8d6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
