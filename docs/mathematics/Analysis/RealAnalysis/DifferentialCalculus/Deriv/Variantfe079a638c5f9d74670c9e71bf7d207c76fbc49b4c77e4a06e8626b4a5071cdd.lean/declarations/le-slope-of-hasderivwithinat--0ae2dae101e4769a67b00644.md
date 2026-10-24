# le_slope_of_hasDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f1b66e6-613a-bb47-d474-927897a668a8",
  "kind": "lemma",
  "lexical_name": "le_slope_of_hasDerivWithinAt",
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
  "slug": "le-slope-of-hasderivwithinat--0ae2dae101e4769a67b00644",
  "source": {
    "blob": "e362013b12c648b244b3d41443f5c1995cc87421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 590,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantfe079a638c5f9d74670c9e71bf7d207c76fbc49b4c77e4a06e8626b4a5071cdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ae2dae101e4769a67b00644fc580dddf1d2f97050bfbfba62b8708730f89039",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantfe079a638c5f9d74670c9e71bf7d207c76fbc49b4c77e4a06e8626b4a5071cdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f1b66e6-613a-bb47-d474-927897a668a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_slope_of_hasDerivWithinAt (hfc : ConvexOn ℝ S f) (hx : x ∈ S) (hy : y ∈ S) (hxy : x < y)
    (hf' : HasDerivWithinAt f f' S x) :
    f' ≤ slope f x y :=
  hfc.le_slope_of_hasDerivWithinAt_Ioi hx hy hxy <|
    hf'.mono_of_mem_nhdsWithin <| hfc.1.ordConnected.mem_nhdsGT hx hy hxy

/-- Reformulation of `ConvexOn.le_slope_of_hasDerivWithinAt` using `derivWithin`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantfe079a638c5f9d74670c9e71bf7d207c76fbc49b4c77e4a06e8626b4a5071cdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantfe079a638c5f9d74670c9e71bf7d207c76fbc49b4c77e4a06e8626b4a5071cdd.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e362013b12c648b244b3d41443f5c1995cc87421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
