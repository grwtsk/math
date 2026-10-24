# DyadicConvolutionKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c71aab1ab4e7c9eae6872608450c3be449ce12c23bd4757a300c9b61d4e70241",
  "kind": "structure",
  "lexical_name": "DyadicConvolutionKernel",
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
  "slug": "dyadicconvolutionkernel--912a7ee3c3cc9a266e0b5627",
  "source": {
    "blob": "53cabc24d62dac43363592d28460909fd5da9052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 68,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:912a7ee3c3cc9a266e0b5627db502839db0c5ffb693000f3e6b7684cc50784a2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c71aab1ab4e7c9eae6872608450c3be449ce12c23bd4757a300c9b61d4e70241`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DyadicConvolutionKernel where
  /-- The spatial base kernel. -/
  baseKernel : ℝ → ℝ
  /-- Absolute Bochner integrability of the base kernel. -/
  baseIntegrable : Integrable baseKernel
  /-- The cancellation condition needed for a band-pass kernel. -/
  baseIntegral_eq_zero : ∫ x, baseKernel x = 0

/-- The usual one-dimensional, `L¹`-mass-preserving rescaling
`K_j(x) = 2^j K(2^j x)`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53cabc24d62dac43363592d28460909fd5da9052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
