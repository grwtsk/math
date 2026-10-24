# _root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.measurableEmbedding_const_smul₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fcf0e12-1102-ed7b-2fc9-175ea23f7297",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.measurableEmbedding_const_smul₀",
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
  "slug": "root-grwtsk-analysis-measuretheory-smul-variant1ab99e4a531b1e43130b3554d--b77f89a063e42a9e17f40e8c",
  "source": {
    "blob": "08e4f7c99c7d21e5e6b48452b6e869417739b793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 93,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b77f89a063e42a9e17f40e8c301bf7f679d37fb005f2276cbe438ff3c3c613bb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fcf0e12-1102-ed7b-2fc9-175ea23f7297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.measurableEmbedding_const_smul₀ {c : G₀} (hc : c ≠ 0) :
    MeasurableEmbedding ((· • ·) c : α → α) :=
  (smul₀ c hc).measurableEmbedding
#align measurable_embedding_const_smul₀ measurableEmbedding_const_smul₀

section Mul

variable [MeasurableMul G] [MeasurableMul G₀]

/-- If `G` is a group with measurable multiplication, then left multiplication by `g : G` is a
measurable automorphism of `G`. -/
@[to_additive
      "If `G` is an additive group with measurable addition, then addition of `g : G`
      on the left is a measurable automorphism of `G`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08e4f7c99c7d21e5e6b48452b6e869417739b793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
