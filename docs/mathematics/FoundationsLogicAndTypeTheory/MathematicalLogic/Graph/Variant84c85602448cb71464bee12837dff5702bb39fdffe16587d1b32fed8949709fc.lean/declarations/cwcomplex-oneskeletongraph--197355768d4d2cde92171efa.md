# CWComplex.OneSkeletonGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf468414558769a4c3c229b4b731df75d156eb948da02fad8b3d4bbbcc0c6f9f",
  "kind": "def",
  "lexical_name": "CWComplex.OneSkeletonGraph",
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
  "slug": "cwcomplex-oneskeletongraph--197355768d4d2cde92171efa",
  "source": {
    "blob": "4538fa4b120fe03e6d2eec2e3b957d0224ce208a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Graph/Variant84c85602448cb71464bee12837dff5702bb39fdffe16587d1b32fed8949709fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:197355768d4d2cde92171efaa86c1350d4efe7c9e4a65df42b044a0b07163a0e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Graph/Variant84c85602448cb71464bee12837dff5702bb39fdffe16587d1b32fed8949709fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf468414558769a4c3c229b4b731df75d156eb948da02fad8b3d4bbbcc0c6f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CWComplex.OneSkeletonGraph (C : Set X) [CWComplex C] : Graph (cell C 0) (cell C 1) where
  vertexSet := univ
  edgeSet := univ
  IsLink e x y := cellFrontier 1 e = closedCell 0 x ∪ closedCell 0 y
  isLink_symm := by grind [symm_def]
  eq_or_eq_of_isLink_of_isLink e x y z w h1 h2 := by
    simp_rw [closedCell_zero_eq_singleton] at h1 h2
    rw [h1] at h2
    simp only [(RelCWComplex.injective_map_zero C).eq_iff, union_singleton, pair_eq_pair_iff] at h2
    tauto
  left_mem_of_isLink _ _ _ _ := mem_univ _
  edge_mem_iff_exists_isLink e := by
    simp only [mem_univ, true_iff]
    exact exists_cellFrontier_one_eq e

namespace CWComplex.OneSkeletonGraph

variable {C : Set X} [CWComplex C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Graph/Variant84c85602448cb71464bee12837dff5702bb39fdffe16587d1b32fed8949709fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Graph/Variant84c85602448cb71464bee12837dff5702bb39fdffe16587d1b32fed8949709fc.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4538fa4b120fe03e6d2eec2e3b957d0224ce208a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
