# integrable_posConvolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0cae026-a4a4-c131-3e26-8c152f7cb0bd",
  "kind": "theorem",
  "lexical_name": "integrable_posConvolution",
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
  "slug": "integrable-posconvolution--4feed999ad52737ed373fc89",
  "source": {
    "blob": "cbfe9c51f48fe1e6f501e0174521e9939c4295b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1391,
    "line": 1382,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4feed999ad52737ed373fc89f9580e940b51dd82da2d694ff4fe184c38b44cca",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0cae026-a4a4-c131-3e26-8c152f7cb0bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1382–1391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_posConvolution {f : ℝ → E} {g : ℝ → E'} {μ ν : Measure ℝ} [SFinite μ]
    [SFinite ν] [IsAddRightInvariant μ] [NoAtoms ν] (hf : IntegrableOn f (Ioi 0) ν)
    (hg : IntegrableOn g (Ioi 0) μ) (L : E →L[ℝ] E' →L[ℝ] F) :
    Integrable (posConvolution f g L ν) μ := by
  rw [← integrable_indicator_iff (measurableSet_Ioi : MeasurableSet (Ioi (0 : ℝ)))] at hf hg
  rw [posConvolution_eq_convolution_indicator f g L ν]
  exact (hf.convolution_integrand L hg).integral_prod_left

/-- The integral over `Ioi 0` of a forward convolution of two functions is equal to the product
of their integrals over this set. (Compare `integral_convolution` for the two-sided convolution.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean#L1382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbfe9c51f48fe1e6f501e0174521e9939c4295b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
