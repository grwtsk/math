# IsClique.even_iff_exists_isMatching

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5c4092e9bc8efe4c61beb036b64f5e62ef437c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 289,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68dc3fa6-9611-c95d-b69b-644483f6f761",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a389f82-4a3c-f2c4-62e4-5fd5796d6af9",
  "kind": "lemma",
  "lexical_name": "IsClique.even_iff_exists_isMatching",
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
  "slug": "isclique-even-iff-exists-ismatching--146a5218c02df883d23006f8",
  "source": {
    "blob": "e5c4092e9bc8efe4c61beb036b64f5e62ef437c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 289,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:146a5218c02df883d23006f8fbc420063c9ce2a03300803a6ae41a89a869b909",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a389f82-4a3c-f2c4-62e4-5fd5796d6af9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsClique.even_iff_exists_isMatching {u : Set V} (hc : G.IsClique u)
    (hu : u.Finite) : Even u.ncard ↔ ∃ (M : Subgraph G), M.verts = u ∧ M.IsMatching := by
  refine ⟨fun h ↦ ?_, by
    rintro ⟨M, rfl, hMr⟩
    simpa [Set.ncard_eq_toFinset_card _ hu, Set.toFinite_toFinset,
      ← Set.toFinset_card] using! @hMr.even_card _ _ _ hu.fintype⟩
  obtain ⟨t, u, rfl, hd, hcard⟩ := Set.exists_union_disjoint_ncard_eq_of_even h
  obtain ⟨f⟩ : Nonempty (t ≃ u) := by
    rw [← Cardinal.eq, ← t.cast_ncard (Set.finite_union.mp hu).1,
      ← u.cast_ncard (Set.finite_union.mp hu).2]
    exact congrArg Nat.cast hcard
  exact Subgraph.IsMatching.exists_of_disjoint_sets_of_equiv hd f
    fun v ↦ hc (by simp) (by simp) <| hd.ne_of_mem (by simp) (by simp)

namespace ConnectedComponent

section Finite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5c4092e9bc8efe4c61beb036b64f5e62ef437c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
