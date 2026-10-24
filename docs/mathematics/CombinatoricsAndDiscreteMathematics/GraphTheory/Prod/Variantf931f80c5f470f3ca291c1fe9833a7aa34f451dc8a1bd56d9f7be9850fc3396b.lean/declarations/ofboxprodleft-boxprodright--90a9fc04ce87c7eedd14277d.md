# ofBoxProdLeft_boxProdRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b22d44a-8d62-75db-2455-0b6387d0ce5e",
  "kind": "theorem",
  "lexical_name": "ofBoxProdLeft_boxProdRight",
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
  "slug": "ofboxprodleft-boxprodright--90a9fc04ce87c7eedd14277d",
  "source": {
    "blob": "12b2c84447356740af6b70ed4eac96d6a769074b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 165,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90a9fc04ce87c7eedd14277dd2a1d7dd1d4e457b72024e5de375f61e3d09ae4c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b22d44a-8d62-75db-2455-0b6387d0ce5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofBoxProdLeft_boxProdRight [DecidableEq α] [DecidableRel G.Adj] {b₁ b₂ : α} :
    ∀ (w : G.Walk b₁ b₂), (w.boxProdRight G a).ofBoxProdRight = w
  | nil => rfl
  | cons' x y z h w => by
    rw [Walk.boxProdRight, map_cons, ofBoxProdRight, Or.by_cases, dif_pos, ←
      Walk.boxProdRight]
    simp [ofBoxProdLeft_boxProdRight]
    exact⟨h, rfl⟩
#align simple_graph.walk.of_box_prod_left_box_prod_right SimpleGraph.Walk.ofBoxProdLeft_boxProdRight

end Walk

variable {G H}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b2c84447356740af6b70ed4eac96d6a769074b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
