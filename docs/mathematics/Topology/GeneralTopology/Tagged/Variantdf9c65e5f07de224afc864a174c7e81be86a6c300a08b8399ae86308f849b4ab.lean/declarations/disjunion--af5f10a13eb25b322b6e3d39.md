# disjUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01ecd459345943bb7e10da630ca428520a22af89df428a2ab5e79668054cd2a6",
  "kind": "def",
  "lexical_name": "disjUnion",
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
  "slug": "disjunion--af5f10a13eb25b322b6e3d39",
  "source": {
    "blob": "1bbcace960582ec52e7a6c6ca542a72867708958",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 343,
    "path": "GRWTSK/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af5f10a13eb25b322b6e3d39117ca9a06edacf9c955fb97d2dd615929e4c89c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01ecd459345943bb7e10da630ca428520a22af89df428a2ab5e79668054cd2a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def disjUnion (π₁ π₂ : TaggedPrepartition I) (h : Disjoint π₁.iUnion π₂.iUnion) :
    TaggedPrepartition I where
  toPrepartition := π₁.toPrepartition.disjUnion π₂.toPrepartition h
  tag := π₁.boxes.piecewise π₁.tag π₂.tag
  tag_mem_Icc J := by
    dsimp only [Finset.piecewise]
    split_ifs
    exacts [π₁.tag_mem_Icc J, π₂.tag_mem_Icc J]
#align box_integral.tagged_prepartition.disj_union BoxIntegral.TaggedPrepartition.disjUnion

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bbcace960582ec52e7a6c6ca542a72867708958` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
