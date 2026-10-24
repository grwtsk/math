# integral_Icc_eq_integral_Ioc'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76d5cc9c-2c13-df60-73b2-4eeee7afe9ef",
  "kind": "theorem",
  "lexical_name": "integral_Icc_eq_integral_Ioc'",
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
  "slug": "integral-icc-eq-integral-ioc--2c16140ecbed430c0c0a2b3b",
  "source": {
    "blob": "38870d9281f38ed1ccfa0ea21d604040e52a66e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 616,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf08c48361783f4f58fbbbb26d175196d052ca8ed36905808ef891807a217668b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c16140ecbed430c0c0a2b3bb0c7d13d31cebf7b99e8c0ca9764267b61181462",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SetIntegral/Variantf08c48361783f4f58fbbbb26d175196d052ca8ed36905808ef891807a217668b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76d5cc9c-2c13-df60-73b2-4eeee7afe9ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_Icc_eq_integral_Ioc' (ha : μ {a} = 0) :
    ∫ t in Icc a b, f t ∂μ = ∫ t in Ioc a b, f t ∂μ :=
  set_integral_congr_set_ae (Ioc_ae_eq_Icc' ha).symm
#align measure_theory.integral_Icc_eq_integral_Ioc' MeasureTheory.integral_Icc_eq_integral_Ioc'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SetIntegral/Variantf08c48361783f4f58fbbbb26d175196d052ca8ed36905808ef891807a217668b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf08c48361783f4f58fbbbb26d175196d052ca8ed36905808ef891807a217668b.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38870d9281f38ed1ccfa0ea21d604040e52a66e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
