# IsPathGraph3Compl.pathGraph3ComplEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff7b8eedc522dc2c78b8c2456ee0646f13ca94ffdaa8843aae5fbbb219199e3a",
  "kind": "def",
  "lexical_name": "IsPathGraph3Compl.pathGraph3ComplEmbedding",
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
  "slug": "ispathgraph3compl-pathgraph3complembedding--919b9bc5e9ce50af4405d236",
  "source": {
    "blob": "5ba687cab9322e1ec74c73bd5e3f45df5ebde0f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:919b9bc5e9ce50af4405d2366b34f95c8f30882249696eda90ee9b0f7c31d73a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff7b8eedc522dc2c78b8c2456ee0646f13ca94ffdaa8843aae5fbbb219199e3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsPathGraph3Compl.pathGraph3ComplEmbedding {v w₁ w₂ : α} (h : G.IsPathGraph3Compl v w₁ w₂) :
    (pathGraph 3)ᶜ ↪g G where
  toFun := fun x ↦
    match x with
    | 0 => w₁
    | 1 => v
    | 2 => w₂
  inj' := by
    intro _ _ _
    have := h.ne_fst
    have := h.ne_snd
    have := h.adj.ne
    aesop
  map_rel_iff' := by
    intro _ _
    simp_rw [Function.Embedding.coeFn_mk, compl_adj, ne_eq, pathGraph_adj, not_or]
    have := h.adj
    have := h.adj.symm
    have h1 := h.not_adj_fst
    have h2 := h.not_adj_snd
    have ⟨_, _⟩ : ¬ G.Adj w₁ v ∧ ¬ G.Adj w₂ v := by rw [adj_comm] at h1 h2; exact ⟨h1, h2⟩
    aesop

/-- Embedding of `(pathGraph 3)ᶜ` into `G` that is not complete-multipartite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ba687cab9322e1ec74c73bd5e3f45df5ebde0f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
