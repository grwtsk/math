# induce_sUnion_connected_of_pairwise_not_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:124cec48-0d5a-827a-a6cf-f341871e7fe6",
  "kind": "lemma",
  "lexical_name": "induce_sUnion_connected_of_pairwise_not_disjoint",
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
  "slug": "induce-sunion-connected-of-pairwise-not-disjoint--e9745cc5b6d13488b7b55404",
  "source": {
    "blob": "3fe7a276929710cab52b4bb3a5ab19fa83621d62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 215,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9745cc5b6d13488b7b554046eab06e721f1539204b97200c3997b5ac20d7234",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:124cec48-0d5a-827a-a6cf-f341871e7fe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma induce_sUnion_connected_of_pairwise_not_disjoint {S : Set (Set V)} (Sn : S.Nonempty)
    (Snd : ∀ {s t}, s ∈ S → t ∈ S → (s ∩ t).Nonempty)
    (Sc : ∀ {s}, s ∈ S → (G.induce s).Connected) :
    (G.induce (⋃₀ S)).Connected := by
  obtain ⟨s, sS⟩ := Sn
  obtain ⟨v, vs⟩ := (Sc sS).nonempty
  apply G.induce_connected_of_patches _ (Set.subset_sUnion_of_mem sS vs)
  rintro w hw
  simp only [Set.mem_sUnion, exists_prop] at hw
  obtain ⟨t, tS, wt⟩ := hw
  refine ⟨s ∪ t, Set.union_subset (Set.subset_sUnion_of_mem sS) (Set.subset_sUnion_of_mem tS),
          Or.inl vs, Or.inr wt, induce_union_connected (Sc sS) (Sc tS) (Snd sS tS) _ _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fe7a276929710cab52b4bb3a5ab19fa83621d62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
