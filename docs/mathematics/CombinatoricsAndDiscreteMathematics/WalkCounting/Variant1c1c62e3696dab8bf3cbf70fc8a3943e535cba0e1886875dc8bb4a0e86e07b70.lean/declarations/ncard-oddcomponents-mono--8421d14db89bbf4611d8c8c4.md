# ncard_oddComponents_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07c7ff51-8771-d186-20a5-00f924214875",
  "kind": "lemma",
  "lexical_name": "ncard_oddComponents_mono",
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
  "slug": "ncard-oddcomponents-mono--8421d14db89bbf4611d8c8c4",
  "source": {
    "blob": "306289f93a83a0d02fd463ebfb20e8ab4438e574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 276,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8421d14db89bbf4611d8c8c49a7dcbb309a5836608e4942555aabf5f29f06205",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07c7ff51-8771-d186-20a5-00f924214875`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ncard_oddComponents_mono [Finite V] {G' : SimpleGraph V} (h : G ≤ G') :
     G'.oddComponents.ncard ≤ G.oddComponents.ncard := by
  have aux (c : G'.ConnectedComponent) (hc : Odd c.supp.ncard) :
      {c' : G.ConnectedComponent | Odd c'.supp.ncard ∧ c'.supp ⊆ c.supp}.Nonempty := by
    refine Set.nonempty_of_ncard_ne_zero fun h' ↦ ?_
    simpa [-Nat.card_eq_fintype_card, -Set.coe_setOf, h']
      using (c.odd_oddComponents_ncard_subset_supp _ h).2 hc
  let f : G'.oddComponents → G.oddComponents :=
    fun ⟨c, hc⟩ ↦ ⟨(aux c hc).choose, (aux c hc).choose_spec.1⟩
  refine Finite.card_le_of_injective f fun c c' fcc' ↦ ?_
  simp only [Subtype.mk.injEq, f] at fcc'
  exact Subtype.val_injective (ConnectedComponent.eq_of_common_vertex
    ((fcc' ▸ (aux c.1 c.2).choose_spec.2) (ConnectedComponent.nonempty_supp _).some_mem)
      ((aux c'.1 c'.2).choose_spec.2 (ConnectedComponent.nonempty_supp _).some_mem))

end WalkCounting

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `306289f93a83a0d02fd463ebfb20e8ab4438e574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
