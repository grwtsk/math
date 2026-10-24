# Topology.IsClosedEmbedding.map_tprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16917f7c-18fd-adb7-f50a-787bf3811098",
  "kind": "lemma",
  "lexical_name": "Topology.IsClosedEmbedding.map_tprod",
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
  "slug": "topology-isclosedembedding-map-tprod--9be4d0ba0e3afa0277fe02c5",
  "source": {
    "blob": "3016778253def5ff0b82482193f500d98342d8e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 265,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantdb6e86ce795727534db25b34ec9a28b6377644d0d5c379c3432752f74ca717f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9be4d0ba0e3afa0277fe02c535c30116544f47e164ceebd90307cc4d7988e02e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantdb6e86ce795727534db25b34ec9a28b6377644d0d5c379c3432752f74ca717f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16917f7c-18fd-adb7-f50a-787bf3811098`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Topology.IsClosedEmbedding.map_tprod {ι α α' G : Type*}
    [CommMonoid α] [CommMonoid α'] [TopologicalSpace α] [TopologicalSpace α'] [T2Space α']
    (f : ι → α) {L : SummationFilter ι} {g : G} [FunLike G α α'] [MonoidHomClass G α α']
    (hge : Topology.IsClosedEmbedding g) :
    g (∏'[L] i, f i) = ∏'[L] i, g (f i) := by
  by_cases hL : L.NeBot
  · by_cases h : Multipliable f L
    · exact h.map_tprod g hge.continuous
    · rw [tprod_eq_one_of_not_multipliable h, tprod_eq_one_of_not_multipliable, map_one]
      contrapose h
      -- need to show `g ∘ f` multipliable implies `g` multipliable
      simp only [Multipliable, HasProd] at h ⊢
      obtain ⟨b, hb⟩ := h
      obtain ⟨a, ha⟩ : b ∈ Set.range g :=
        hge.isClosed_range.mem_of_tendsto hb (.of_forall <| by simp [← _root_.map_prod])
      use a
      simp [hge.tendsto_nhds_iff, Function.comp_def, ha, hb]
  · simpa [tprod_bot hL] using
      (MonoidHomClass.toMonoidHom g).map_finprod_of_injective hge.injective _

/-- Special case of `Topology.IsClosedEmbedding.map_tprod`, logically weaker but possibly easier
to apply in practice. -/
@[to_additive /-- Special case of `Topology.IsClosedEmbedding.map_tsum`, logically weaker but
possibly easier to apply in practice. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantdb6e86ce795727534db25b34ec9a28b6377644d0d5c379c3432752f74ca717f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantdb6e86ce795727534db25b34ec9a28b6377644d0d5c379c3432752f74ca717f0.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3016778253def5ff0b82482193f500d98342d8e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
