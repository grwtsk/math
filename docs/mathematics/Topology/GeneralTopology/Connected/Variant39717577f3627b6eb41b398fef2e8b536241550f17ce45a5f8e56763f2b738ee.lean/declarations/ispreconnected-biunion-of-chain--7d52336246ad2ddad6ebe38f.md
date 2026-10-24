# IsPreconnected.biUnion_of_chain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c3d512b-f2c2-b979-8f38-63d68dca8bb1",
  "kind": "theorem",
  "lexical_name": "IsPreconnected.biUnion_of_chain",
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
  "slug": "ispreconnected-biunion-of-chain--7d52336246ad2ddad6ebe38f",
  "source": {
    "blob": "b8acb47e4588e836c15e517cee37cb8a60018219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 266,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d52336246ad2ddad6ebe38f4fa19a56d3ed436393e37a440e87f32f0d8bad22",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c3d512b-f2c2-b979-8f38-63d68dca8bb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreconnected.biUnion_of_chain {s : β → Set α} {t : Set β} (ht : OrdConnected t)
    (H : ∀ n ∈ t, IsPreconnected (s n))
    (K : ∀ n : β, n ∈ t → succ n ∈ t → (s n ∩ s (succ n)).Nonempty) :
    IsPreconnected (⋃ n ∈ t, s n) := by
  have h1 : ∀ {i j k : β}, i ∈ t → j ∈ t → k ∈ Ico i j → k ∈ t := fun hi hj hk =>
    ht.out hi hj (Ico_subset_Icc_self hk)
  have h2 : ∀ {i j k : β}, i ∈ t → j ∈ t → k ∈ Ico i j → succ k ∈ t := fun hi hj hk =>
    ht.out hi hj ⟨hk.1.trans <| le_succ _, succ_le_of_lt hk.2⟩
  have h3 : ∀ {i j k : β}, i ∈ t → j ∈ t → k ∈ Ico i j → (s k ∩ s (succ k)).Nonempty :=
    fun hi hj hk => K _ (h1 hi hj hk) (h2 hi hj hk)
  refine' IsPreconnected.biUnion_of_reflTransGen H fun i hi j hj => _
  exact reflTransGen_of_succ _ (fun k hk => ⟨h3 hi hj hk, h1 hi hj hk⟩) fun k hk =>
      ⟨by rw [inter_comm]; exact h3 hj hi hk, h2 hj hi hk⟩
#align is_preconnected.bUnion_of_chain IsPreconnected.biUnion_of_chain

/-- The iUnion of connected sets indexed by a subset of a type with an archimedean successor
  (like `ℕ` or `ℤ`) such that any two neighboring sets meet is preconnected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8acb47e4588e836c15e517cee37cb8a60018219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
