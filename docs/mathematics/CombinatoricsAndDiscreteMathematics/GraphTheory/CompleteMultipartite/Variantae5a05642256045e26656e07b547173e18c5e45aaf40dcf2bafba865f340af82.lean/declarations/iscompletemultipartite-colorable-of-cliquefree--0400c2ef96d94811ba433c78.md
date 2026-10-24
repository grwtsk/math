# IsCompleteMultipartite.colorable_of_cliqueFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0696b003-5078-141b-926e-3ac90861d16e",
  "kind": "lemma",
  "lexical_name": "IsCompleteMultipartite.colorable_of_cliqueFree",
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
  "slug": "iscompletemultipartite-colorable-of-cliquefree--0400c2ef96d94811ba433c78",
  "source": {
    "blob": "5ba687cab9322e1ec74c73bd5e3f45df5ebde0f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0400c2ef96d94811ba433c78df5efaf2e4b79bed1f9fe4076ec8501cf3be3165",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0696b003-5078-141b-926e-3ac90861d16e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCompleteMultipartite.colorable_of_cliqueFree {n : ℕ} (h : G.IsCompleteMultipartite)
    (hc : G.CliqueFree n) : G.Colorable (n - 1) :=
    (completeMultipartiteGraph.colorable_of_cliqueFree _ (fun _ ↦ ⟨_, h.setoid.refl _⟩)
          <| hc.comap h.iso.symm.toEmbedding).of_embedding h.iso.toEmbedding

variable (G) in
/--
The vertices `v, w₁, w₂` form an `IsPathGraph3Compl` in `G` iff `w₁w₂` is the only edge present
between these three vertices. It is a witness to the non-complete-multipartite-ness of `G` (see
`not_isCompleteMultipartite_iff_exists_isPathGraph3Compl`). This structure is an explicit way of
saying that the induced graph on `{v, w₁, w₂}` is the complement of `P3`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ba687cab9322e1ec74c73bd5e3f45df5ebde0f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
