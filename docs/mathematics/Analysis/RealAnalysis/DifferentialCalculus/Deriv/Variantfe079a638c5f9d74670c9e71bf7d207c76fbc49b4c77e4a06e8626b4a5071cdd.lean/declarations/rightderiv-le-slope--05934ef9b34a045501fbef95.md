# rightDeriv_le_slope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3100ca3a-00d8-9103-7e01-bc834944b631",
  "kind": "lemma",
  "lexical_name": "rightDeriv_le_slope",
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
  "slug": "rightderiv-le-slope--05934ef9b34a045501fbef95",
  "source": {
    "blob": "e362013b12c648b244b3d41443f5c1995cc87421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 571,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantfe079a638c5f9d74670c9e71bf7d207c76fbc49b4c77e4a06e8626b4a5071cdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05934ef9b34a045501fbef95dc5a73681573f9ba8b85ad20f5d90e7c3371945e",
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

Occurrence: `result:3100ca3a-00d8-9103-7e01-bc834944b631`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rightDeriv_le_slope (hfc : ConvexOn ℝ S f) (hx : x ∈ S) (hy : y ∈ S) (hxy : x < y)
    (hfd : DifferentiableWithinAt ℝ f (Ioi x) x) :
    derivWithin f (Ioi x) x ≤ slope f x y :=
  le_slope_of_hasDerivWithinAt_Ioi hfc hx hy hxy hfd.hasDerivWithinAt

@[deprecated (since := "2025-01-26")]
alias right_deriv_le_slope := rightDeriv_le_slope

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantfe079a638c5f9d74670c9e71bf7d207c76fbc49b4c77e4a06e8626b4a5071cdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantfe079a638c5f9d74670c9e71bf7d207c76fbc49b4c77e4a06e8626b4a5071cdd.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e362013b12c648b244b3d41443f5c1995cc87421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
