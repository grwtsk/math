# exists_open_singleton_of_open_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e96b4e724267e55a28c0d080afa3d662cb6bd3ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 309,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9b63e28-5fd6-459d-ae1b-436b9f4ca1d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4086b296-f0a9-2b0b-3d6a-d771f476d4bd",
  "kind": "theorem",
  "lexical_name": "exists_open_singleton_of_open_finite",
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
  "slug": "exists-open-singleton-of-open-finite--3e471f84b5afae0a4a3d0c0f",
  "source": {
    "blob": "e96b4e724267e55a28c0d080afa3d662cb6bd3ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 309,
    "path": "GRWTSK/Topology/GeneralTopology/Separation/Variantb38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e471f84b5afae0a4a3d0c0f917f89cb7151504459e7739561ec54facd5576fa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Separation/Variantb38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4086b296-f0a9-2b0b-3d6a-d771f476d4bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_open_singleton_of_open_finite [T0Space α] {s : Set α} (hfin : s.Finite)
    (hne : s.Nonempty) (ho : IsOpen s) : ∃ x ∈ s, IsOpen ({x} : Set α) := by
  lift s to Finset α using hfin
  induction' s using Finset.strongInductionOn with s ihs
  rcases em (∃ t, t ⊂ s ∧ t.Nonempty ∧ IsOpen (t : Set α)) with (⟨t, hts, htne, hto⟩ | ht)
  · rcases ihs t hts htne hto with ⟨x, hxt, hxo⟩
    exact ⟨x, hts.1 hxt, hxo⟩
  · -- Porting note: was `rcases minimal_nonempty_open_eq_singleton ho hne _ with ⟨x, hx⟩`
    --               https://github.com/leanprover/std4/issues/116
    rsuffices ⟨x, hx⟩ : ∃ x, s.toSet = {x}
    · exact ⟨x, hx.symm ▸ rfl, hx ▸ ho⟩
    refine minimal_nonempty_open_eq_singleton ho hne ?_
    refine' fun t hts htne hto => of_not_not fun hts' => ht _
    lift t to Finset α using s.finite_toSet.subset hts
    exact ⟨t, ssubset_iff_subset_ne.2 ⟨hts, mt Finset.coe_inj.2 hts'⟩, htne, hto⟩
#align exists_open_singleton_of_open_finite exists_open_singleton_of_open_finite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Separation/Variantb38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Separation/Variantb38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e96b4e724267e55a28c0d080afa3d662cb6bd3ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
