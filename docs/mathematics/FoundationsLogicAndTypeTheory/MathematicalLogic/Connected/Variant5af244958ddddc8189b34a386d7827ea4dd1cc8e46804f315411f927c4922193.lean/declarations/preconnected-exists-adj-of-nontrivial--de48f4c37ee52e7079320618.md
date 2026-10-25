# Preconnected.exists_adj_of_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9a48b3f-5ca7-841d-ce0c-38535ec51dfa",
  "kind": "lemma",
  "lexical_name": "Preconnected.exists_adj_of_nontrivial",
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
  "slug": "preconnected-exists-adj-of-nontrivial--de48f4c37ee52e7079320618",
  "source": {
    "blob": "a5d8cc92b8b2acc14c73262422459bc4c022cba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 766,
    "line": 754,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de48f4c37ee52e7079320618d6c5d128560e28c83851508202c9c9d32a06117f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9a48b3f-5ca7-841d-ce0c-38535ec51dfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 754–766.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Preconnected.exists_adj_of_nontrivial [Nontrivial V] {G : SimpleGraph V} (h : G.Preconnected)
    (v : V) : ∃ u, G.Adj v u := by
  have ⟨u, huv⟩ := exists_ne v
  have ⟨w⟩ := h v u
  exact ⟨_, w.adj_snd <| w.not_nil_of_ne huv.symm⟩

/-! ### Bridge edges -/

section BridgeEdges
variable {u v : V} {e : Sym2 V}

/-- An edge of a graph is a *bridge* if without it, its incident vertices
are not reachable from one another. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean#L754).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d8cc92b8b2acc14c73262422459bc4c022cba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
