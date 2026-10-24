# copyCount_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecfe9051-dca5-e7bf-80ef-f8e5437e3cd6",
  "kind": "lemma",
  "lexical_name": "copyCount_bot",
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
  "slug": "copycount-bot--d1ea649e18cc9d42b97e685e",
  "source": {
    "blob": "b3bf5c6d2304831d3fe78339b748cd6fd416210f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 559,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variantb9a64c0d349e250fd1c31f89c26a6d12907d9a776529c99aa62c3521881fd9c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1ea649e18cc9d42b97e685e847aa9f8faa2d197cf55024e7bd91c66324e919f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Copy/Variantb9a64c0d349e250fd1c31f89c26a6d12907d9a776529c99aa62c3521881fd9c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecfe9051-dca5-e7bf-80ef-f8e5437e3cd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma copyCount_bot (G : SimpleGraph V) : copyCount G (⊥ : SimpleGraph V) = 1 := by
  classical
  rw [copyCount]
  convert!
    card_singleton (α := G.Subgraph)
      { verts := .univ
        Adj := ⊥
        adj_sub := False.elim
        edge_vert := False.elim }
  simp only [eq_singleton_iff_unique_mem, mem_filter_univ, Nonempty.forall]
  refine ⟨⟨⟨(Equiv.Set.univ _).symm, by simp⟩⟩, fun H' e ↦
    Subgraph.ext ((set_fintype_card_eq_univ_iff _).1 <| Fintype.card_congr e.toEquiv.symm) ?_⟩
  ext a b
  simp only [Prop.bot_eq_false, Pi.bot_apply, iff_false]
  exact fun hab ↦ e.symm.map_rel_iff.2 hab.coe

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Copy/Variantb9a64c0d349e250fd1c31f89c26a6d12907d9a776529c99aa62c3521881fd9c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variantb9a64c0d349e250fd1c31f89c26a6d12907d9a776529c99aa62c3521881fd9c4.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3bf5c6d2304831d3fe78339b748cd6fd416210f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
