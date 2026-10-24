# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IndexedPartition.Variante59a8eed9d828df9d1a47816e8c08e498ad9d680540cb0c13ba3f00148c34f0a.Set.PairwiseDisjoint.isPartition_of_exists_of_ne_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adfaf772-4efa-c772-58c4-0954e998a5f5",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IndexedPartition.Variante59a8eed9d828df9d1a47816e8c08e498ad9d680540cb0c13ba3f00148c34f0a.Set.PairwiseDisjoint.isPartition_of_exists_of_ne_empty",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-in--0968f4ea0710ea2f0f72a028",
  "source": {
    "blob": "8cd00d85af110ddd81db1f3e9a18d8fa8d40837a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 212,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variant5fc2e92853ce27f1e6ec7afb0468f69cf02d8596602b286f1d0a6895dde2bab9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0968f4ea0710ea2f0f72a02849c253c4a15df9c054425b6c0aee56a89e597ae6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variant5fc2e92853ce27f1e6ec7afb0468f69cf02d8596602b286f1d0a6895dde2bab9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adfaf772-4efa-c772-58c4-0954e998a5f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IndexedPartition.Variante59a8eed9d828df9d1a47816e8c08e498ad9d680540cb0c13ba3f00148c34f0a.Set.PairwiseDisjoint.isPartition_of_exists_of_ne_empty {α : Type*} {s : Set (Set α)}
    (h₁ : s.PairwiseDisjoint id) (h₂ : ∀ a : α, ∃ x ∈ s, a ∈ x) (h₃ : ∅ ∉ s) :
    Setoid.IsPartition s := by
  refine ⟨h₃, fun a ↦ existsUnique_of_exists_of_unique (h₂ a) ?_⟩
  intro b₁ b₂ hb₁ hb₂
  apply h₁.elim hb₁.1 hb₂.1
  simp only [Set.not_disjoint_iff]
  exact ⟨a, hb₁.2, hb₂.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variant5fc2e92853ce27f1e6ec7afb0468f69cf02d8596602b286f1d0a6895dde2bab9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variant5fc2e92853ce27f1e6ec7afb0468f69cf02d8596602b286f1d0a6895dde2bab9.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cd00d85af110ddd81db1f3e9a18d8fa8d40837a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
