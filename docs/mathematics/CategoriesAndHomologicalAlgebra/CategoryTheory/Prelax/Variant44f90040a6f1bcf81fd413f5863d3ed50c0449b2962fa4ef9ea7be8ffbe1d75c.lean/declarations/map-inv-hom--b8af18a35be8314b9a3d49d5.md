# map₂_inv_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5bf157bf35644d705463c99cb0fb2d0da06755d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72ca5ee4-585b-f0f2-50dc-019daa899456",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e2ccbf7-6e89-bfec-46a6-98fad3cbc6c8",
  "kind": "lemma",
  "lexical_name": "map₂_inv_hom",
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
  "slug": "map-inv-hom--b8af18a35be8314b9a3d49d5",
  "source": {
    "blob": "a5bf157bf35644d705463c99cb0fb2d0da06755d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8af18a35be8314b9a3d49d55d29fba6fe2f64cd88ac5d42d89726d4effc0f74",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e2ccbf7-6e89-bfec-46a6-98fad3cbc6c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map₂_inv_hom {f g : a ⟶ b} (η : f ≅ g) :
    F.map₂ η.inv ≫ F.map₂ η.hom = 𝟙 (F.map g) := by
  rw [← F.map₂_comp, Iso.inv_hom_id, F.map₂_id]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5bf157bf35644d705463c99cb0fb2d0da06755d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
