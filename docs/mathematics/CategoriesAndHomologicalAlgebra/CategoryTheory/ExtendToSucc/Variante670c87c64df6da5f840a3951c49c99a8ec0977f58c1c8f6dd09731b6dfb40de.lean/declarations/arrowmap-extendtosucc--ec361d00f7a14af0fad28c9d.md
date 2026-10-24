# arrowMap_extendToSucc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7426f532daafaf37fa3c5a6bc6dd6b6736eb0704",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e670c87c64df6da5f840a3951c49c99a8ec0977f58c1c8f6dd09731b6dfb40de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44c26079-618c-354f-bbae-2d061276dd7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8502f78f-4ee8-7ffa-e555-111730208e2a",
  "kind": "lemma",
  "lexical_name": "arrowMap_extendToSucc",
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
  "slug": "arrowmap-extendtosucc--ec361d00f7a14af0fad28c9d",
  "source": {
    "blob": "7426f532daafaf37fa3c5a6bc6dd6b6736eb0704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 182,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variante670c87c64df6da5f840a3951c49c99a8ec0977f58c1c8f6dd09731b6dfb40de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec361d00f7a14af0fad28c9d9c1f6edd91c1adf4d5b4c24b85990d988d3aeb9c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variante670c87c64df6da5f840a3951c49c99a8ec0977f58c1c8f6dd09731b6dfb40de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8502f78f-4ee8-7ffa-e555-111730208e2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma arrowMap_extendToSucc (i₁ i₂ : J) (hi : i₁ ≤ i₂) (hi₂ : i₂ ≤ j) :
    arrowMap (extendToSucc hj F τ) i₁ i₂ hi (hi₂.trans (Order.le_succ j)) =
      arrowMap F i₁ i₂ hi hi₂ := by
  simp [arrowMap, extendToSucc_map hj F τ i₁ i₂ hi hi₂,
    extendToSuccObjIso, extendToSucc.objIso]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variante670c87c64df6da5f840a3951c49c99a8ec0977f58c1c8f6dd09731b6dfb40de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtendToSucc/Variante670c87c64df6da5f840a3951c49c99a8ec0977f58c1c8f6dd09731b6dfb40de.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7426f532daafaf37fa3c5a6bc6dd6b6736eb0704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
