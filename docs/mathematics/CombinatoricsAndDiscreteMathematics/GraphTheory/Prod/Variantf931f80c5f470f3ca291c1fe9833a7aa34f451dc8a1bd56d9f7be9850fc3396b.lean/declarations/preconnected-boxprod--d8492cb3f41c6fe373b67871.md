# Preconnected.boxProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ca6f1ee-3346-a1bf-68ac-934549b6f68f",
  "kind": "theorem",
  "lexical_name": "Preconnected.boxProd",
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
  "slug": "preconnected-boxprod--d8492cb3f41c6fe373b67871",
  "source": {
    "blob": "12b2c84447356740af6b70ed4eac96d6a769074b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8492cb3f41c6fe373b6787142fbf97de88e66c4bba6522f2b58608a19b89cb2",
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

Occurrence: `result:2ca6f1ee-3346-a1bf-68ac-934549b6f68f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Preconnected.boxProd (hG : G.Preconnected) (hH : H.Preconnected) :
    (G □ H).Preconnected := by
  rintro x y
  obtain ⟨w₁⟩ := hG x.1 y.1
  obtain ⟨w₂⟩ := hH x.2 y.2
  rw [← @Prod.mk.eta _ _ x, ← @Prod.mk.eta _ _ y]
  exact ⟨(w₁.boxProdLeft _ _).append (w₂.boxProdRight _ _)⟩
#align simple_graph.preconnected.box_prod SimpleGraph.Preconnected.boxProd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b2c84447356740af6b70ed4eac96d6a769074b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
