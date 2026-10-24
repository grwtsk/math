# Ideal.exists_subset_radical_span_sup_of_subset_radical_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99737026-9ada-c993-a9ca-8486d26491bc",
  "kind": "lemma",
  "lexical_name": "Ideal.exists_subset_radical_span_sup_of_subset_radical_sup",
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
  "slug": "ideal-exists-subset-radical-span-sup-of-subset-radical-sup--5726703539b12d70fee4bc0b",
  "source": {
    "blob": "98cf31c4dc554e040119c5fea8ecfb3a37c2f9c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1318,
    "line": 1308,
    "path": "GRWTSK/Algebra/Operations/Variant57f98a1c8229224f08f6f4918c92d5e7fea1f650d3794e228366652790677d0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5726703539b12d70fee4bc0b08cba60edbd93d2625f37b6bddd11bf9800a3bb7",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant57f98a1c8229224f08f6f4918c92d5e7fea1f650d3794e228366652790677d0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99737026-9ada-c993-a9ca-8486d26491bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1308–1318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.exists_subset_radical_span_sup_of_subset_radical_sup {R : Type*} [CommSemiring R]
    (s : Set R) (I J : Ideal R) (hs : s ⊆ (I ⊔ J).radical) :
    ∃ (t : s → R), Set.range t ⊆ I ∧ s ⊆ (span (Set.range t) ⊔ J).radical := by
  replace hs : ∀ z : s, ∃ (m : ℕ) (a b : R) (ha : a ∈ I) (hb : b ∈ J), a + b = z ^ m := by
    rintro ⟨z, hzs⟩
    simp only [Ideal.radical, Submodule.mem_sup, Ideal.mem_span_singleton'] at hs
    obtain ⟨m, y, hyq, b, hb, hy⟩ := hs hzs
    exact ⟨m, y, b, hyq, hb, hy⟩
  choose m a b ha hb heq using hs
  refine ⟨a, by rwa [Set.range_subset_iff], fun z hz ↦ ⟨m ⟨z, hz⟩, heq ⟨z, hz⟩ ▸ ?_⟩⟩
  exact Ideal.add_mem _ (mem_sup_left (subset_span ⟨⟨z, hz⟩, rfl⟩)) (mem_sup_right <| hb _)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant57f98a1c8229224f08f6f4918c92d5e7fea1f650d3794e228366652790677d0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant57f98a1c8229224f08f6f4918c92d5e7fea1f650d3794e228366652790677d0f.lean#L1308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98cf31c4dc554e040119c5fea8ecfb3a37c2f9c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
