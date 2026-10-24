# signedCovariance_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2baef3ab-c94c-03ba-de25-73ab6c982e31",
  "kind": "theorem",
  "lexical_name": "signedCovariance_integrable",
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
  "slug": "signedcovariance-integrable--88c02d4ec59d2d8d88e17fed",
  "source": {
    "blob": "800d43d9914c031f6aea3971d108d8b33017640c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 131,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant4dad100832403e847d92509469a7d9cf4fa2c0d7da9adabc4a7239540ba26472.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88c02d4ec59d2d8d88e17fed91ab38cbf890e2b9f314ebe6c5023c96e4cc1825",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant4dad100832403e847d92509469a7d9cf4fa2c0d7da9adabc4a7239540ba26472.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2baef3ab-c94c-03ba-de25-73ab6c982e31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedCovariance_integrable (a : ℝ) (ha : 0 ≤ a) :
    IntegrableOn (fun s : ℝ => Real.exp (-a * s) * signedCorrelation s) (Ioi 0) := by
  have h := (weighted_signed_product_integrable a ha).integral_prod_right
  simpa only [signedCorrelation, integral_const_mul, halfLineMeasure, IntegrableOn] using h

/-- Fubini gives the exact signed covariance in either integration order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant4dad100832403e847d92509469a7d9cf4fa2c0d7da9adabc4a7239540ba26472.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant4dad100832403e847d92509469a7d9cf4fa2c0d7da9adabc4a7239540ba26472.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `800d43d9914c031f6aea3971d108d8b33017640c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
