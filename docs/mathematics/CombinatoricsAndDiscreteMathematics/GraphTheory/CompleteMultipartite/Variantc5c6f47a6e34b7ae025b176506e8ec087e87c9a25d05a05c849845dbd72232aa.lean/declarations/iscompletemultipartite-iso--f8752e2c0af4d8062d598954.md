# IsCompleteMultipartite.iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdb2afebb02a8c51436602b3e26acb444c33510b48909063c2b0a91bebdd6a9d",
  "kind": "def",
  "lexical_name": "IsCompleteMultipartite.iso",
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
  "slug": "iscompletemultipartite-iso--f8752e2c0af4d8062d598954",
  "source": {
    "blob": "2f2513dbc8ad1126b4caebad3dbee329fd3412e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantc5c6f47a6e34b7ae025b176506e8ec087e87c9a25d05a05c849845dbd72232aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8752e2c0af4d8062d598954267065669863e2a858fb90324c5b6c3b4ffb0251",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantc5c6f47a6e34b7ae025b176506e8ec087e87c9a25d05a05c849845dbd72232aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdb2afebb02a8c51436602b3e26acb444c33510b48909063c2b0a91bebdd6a9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsCompleteMultipartite.iso (h : G.IsCompleteMultipartite) :
    G ≃g completeMultipartiteGraph (fun (c : Quotient h.setoid) ↦ {x // h.setoid.r c.out x}) where
  toFun := fun x ↦ ⟨_, ⟨_, Quotient.mk_out x⟩⟩
  invFun := fun ⟨_, x⟩ ↦ x.1
  right_inv := fun ⟨_, x⟩ ↦ Sigma.subtype_ext (Quotient.mk_eq_iff_out.2 <| h.setoid.symm x.2) rfl
  map_rel_iff' := by
    simp_rw [Equiv.coe_fn_mk, comap_adj, top_adj, ne_eq, Quotient.eq]
    intros
    change ¬¬ G.Adj _ _ ↔ _
    rw [not_not]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantc5c6f47a6e34b7ae025b176506e8ec087e87c9a25d05a05c849845dbd72232aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantc5c6f47a6e34b7ae025b176506e8ec087e87c9a25d05a05c849845dbd72232aa.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2513dbc8ad1126b4caebad3dbee329fd3412e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
