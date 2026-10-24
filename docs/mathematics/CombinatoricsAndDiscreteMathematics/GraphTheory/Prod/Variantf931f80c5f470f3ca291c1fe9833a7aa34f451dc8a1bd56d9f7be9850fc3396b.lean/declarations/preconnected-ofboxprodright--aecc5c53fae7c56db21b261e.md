# Preconnected.ofBoxProdRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:152ba850-1035-e4a6-7634-628f87461244",
  "kind": "theorem",
  "lexical_name": "Preconnected.ofBoxProdRight",
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
  "slug": "preconnected-ofboxprodright--aecc5c53fae7c56db21b261e",
  "source": {
    "blob": "12b2c84447356740af6b70ed4eac96d6a769074b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 196,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aecc5c53fae7c56db21b261e0c8a1baca04e3d5ce4fdbb63642f8b9708ed31af",
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

Occurrence: `result:152ba850-1035-e4a6-7634-628f87461244`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Preconnected.ofBoxProdRight [Nonempty α] (h : (G □ H).Preconnected) :
    H.Preconnected := by
  classical
  rintro b₁ b₂
  obtain ⟨w⟩ := h (Classical.arbitrary _, b₁) (Classical.arbitrary _, b₂)
  exact ⟨w.ofBoxProdRight⟩
#align simple_graph.preconnected.of_box_prod_right SimpleGraph.Preconnected.ofBoxProdRight

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b2c84447356740af6b70ed4eac96d6a769074b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
