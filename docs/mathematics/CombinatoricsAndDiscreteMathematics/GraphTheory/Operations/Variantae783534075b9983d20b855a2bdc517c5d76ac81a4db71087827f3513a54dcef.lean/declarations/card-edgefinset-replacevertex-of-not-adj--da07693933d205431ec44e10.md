# card_edgeFinset_replaceVertex_of_not_adj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bb216eb-7361-829e-df08-17a9cf2aa037",
  "kind": "theorem",
  "lexical_name": "card_edgeFinset_replaceVertex_of_not_adj",
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
  "slug": "card-edgefinset-replacevertex-of-not-adj--da07693933d205431ec44e10",
  "source": {
    "blob": "f5ab0fb3640a8eb269b4cdaff06c58652ceb5335",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da07693933d205431ec44e10414fec4397f9ce887f6af92be80147267f823a6b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bb216eb-7361-829e-df08-17a9cf2aa037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_edgeFinset_replaceVertex_of_not_adj (hn : ¬G.Adj s t) :
    #(G.replaceVertex s t).edgeFinset = #G.edgeFinset + G.degree s - G.degree t := by
  have inc : G.incidenceFinset t ⊆ G.edgeFinset := by simp [incidenceFinset, incidenceSet_subset]
  rw [G.edgeFinset_replaceVertex_of_not_adj hn,
    card_union_of_disjoint G.disjoint_sdiff_neighborFinset_image, card_sdiff inc,
    ← Nat.sub_add_comm <| card_le_card inc, card_incidenceFinset_eq_degree]
  congr 2
  rw [card_image_of_injective, card_neighborFinset_eq_degree]
  unfold Function.Injective
  aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ab0fb3640a8eb269b4cdaff06c58652ceb5335` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
