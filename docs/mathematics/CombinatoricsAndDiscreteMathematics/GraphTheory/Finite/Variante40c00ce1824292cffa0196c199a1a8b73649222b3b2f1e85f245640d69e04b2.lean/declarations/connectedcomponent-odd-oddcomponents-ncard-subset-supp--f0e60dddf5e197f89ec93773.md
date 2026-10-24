# ConnectedComponent.odd_oddComponents_ncard_subset_supp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78049e86-7378-d193-88f5-b45883abd33b",
  "kind": "lemma",
  "lexical_name": "ConnectedComponent.odd_oddComponents_ncard_subset_supp",
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
  "slug": "connectedcomponent-odd-oddcomponents-ncard-subset-supp--f0e60dddf5e197f89ec93773",
  "source": {
    "blob": "edf6e57ef0964eea86b2c54ea0cb86d1a176ab47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Finite/Variante40c00ce1824292cffa0196c199a1a8b73649222b3b2f1e85f245640d69e04b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0e60dddf5e197f89ec937730c396c8c77901870fe706ad78615e9c06aa474fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Finite/Variante40c00ce1824292cffa0196c199a1a8b73649222b3b2f1e85f245640d69e04b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78049e86-7378-d193-88f5-b45883abd33b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConnectedComponent.odd_oddComponents_ncard_subset_supp [Finite V] {G'}
    (h : G ≤ G') (c' : ConnectedComponent G') :
    Odd {c ∈ G.oddComponents | c.supp ⊆ c'.supp}.ncard ↔ Odd c'.supp.ncard := by
  simp_rw [← Nat.card_coe_set_eq]
  classical
  cases nonempty_fintype V
  rw [Nat.card_eq_card_toFinset c'.supp, ← disjiUnion_supp_toFinset_eq_supp_toFinset h]
  simp only [Finset.card_disjiUnion, Set.toFinset_card, Fintype.card_ofFinset]
  rw [Finset.odd_sum_iff_odd_card_odd, Nat.card_eq_fintype_card, Fintype.card_ofFinset]
  congr! 2
  ext c
  simp_rw [Set.toFinset_ofPred, mem_filter, ← Set.ncard_coe_finset, coe_filter,
    mem_supp_iff, mem_univ, true_and, supp, and_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Finite/Variante40c00ce1824292cffa0196c199a1a8b73649222b3b2f1e85f245640d69e04b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Finite/Variante40c00ce1824292cffa0196c199a1a8b73649222b3b2f1e85f245640d69e04b2.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edf6e57ef0964eea86b2c54ea0cb86d1a176ab47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
