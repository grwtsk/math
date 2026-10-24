# le_inf_support_list_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e309f455-aba2-8ec8-ae32-2d35d3f5eafb",
  "kind": "theorem",
  "lexical_name": "le_inf_support_list_prod",
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
  "slug": "le-inf-support-list-prod--7f744254d0af5f7bb069da59",
  "source": {
    "blob": "8f43553cd5baadcf7d390fb8c624d22a831a5c58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 150,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f744254d0af5f7bb069da5905211e4347d2ec69c6eaba28e7386638dfa1df96",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e309f455-aba2-8ec8-ae32-2d35d3f5eafb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_inf_support_list_prod (degt0 : 0 ≤ degt 0)
    (degtm : ∀ a b, degt a + degt b ≤ degt (a + b)) (l : List (AddMonoidAlgebra R A)) :
    (l.map fun f : AddMonoidAlgebra R A => f.support.inf degt).sum ≤ l.prod.support.inf degt := by
  refine' OrderDual.ofDual_le_ofDual.mpr _
  refine' sup_support_list_prod_le _ _ l
  · refine' (OrderDual.ofDual_le_ofDual.mp _)
    exact degt0
  · refine' (fun a b => OrderDual.ofDual_le_ofDual.mp _)
    exact degtm a b
#align add_monoid_algebra.le_inf_support_list_prod AddMonoidAlgebra.le_inf_support_list_prod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f43553cd5baadcf7d390fb8c624d22a831a5c58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
