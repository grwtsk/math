# mappingConeCompTriangleh_comm₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63ff57cbe92dff31cad80c3c3998163372814f1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8fe13e4-d66f-3958-08ca-1f17c5662030",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99463af3-d74c-773b-f8cc-52ae24091921",
  "kind": "lemma",
  "lexical_name": "mappingConeCompTriangleh_comm₁",
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
  "slug": "mappingconecomptriangleh-comm--1bb843c962cbc9f600c423f9",
  "source": {
    "blob": "63ff57cbe92dff31cad80c3c3998163372814f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 155,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bb843c962cbc9f600c423f9ef7569ab4a30084de7721aeea1759ee4e59cafed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99463af3-d74c-773b-f8cc-52ae24091921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mappingConeCompTriangleh_comm₁ :
    (mappingConeCompTriangleh f g).mor₂ ≫
      (HomotopyCategory.quotient _ _).map (mappingConeCompHomotopyEquiv f g).hom =
    (HomotopyCategory.quotient _ _).map (mappingCone.inr _) := by
  rw [← cancel_mono (HomotopyCategory.isoOfHomotopyEquiv
      (mappingConeCompHomotopyEquiv f g)).inv, assoc]
  dsimp [mappingConeCompTriangleh]
  rw [← Functor.map_comp, ← Functor.map_comp, ← Functor.map_comp,
    mappingConeCompHomotopyEquiv_hom_inv_id, comp_id,
    mappingConeCompHomotopyEquiv_comm₁ f g,
    mappingConeCompTriangle_mor₂]

end CochainComplex

namespace HomotopyCategory

open CochainComplex

variable [HasZeroObject C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63ff57cbe92dff31cad80c3c3998163372814f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
