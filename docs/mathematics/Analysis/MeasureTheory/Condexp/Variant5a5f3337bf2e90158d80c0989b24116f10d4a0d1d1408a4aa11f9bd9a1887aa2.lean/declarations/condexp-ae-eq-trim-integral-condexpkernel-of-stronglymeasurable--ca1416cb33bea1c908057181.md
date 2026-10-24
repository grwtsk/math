# condExp_ae_eq_trim_integral_condExpKernel_of_stronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be2dad6a-07bf-e743-f99e-8ea94a9ecf2d",
  "kind": "theorem",
  "lexical_name": "condExp_ae_eq_trim_integral_condExpKernel_of_stronglyMeasurable",
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
  "slug": "condexp-ae-eq-trim-integral-condexpkernel-of-stronglymeasurable--ca1416cb33bea1c908057181",
  "source": {
    "blob": "45df1ede5b0efb7e1c2777d9e55efc9d3d569f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 270,
    "path": "GRWTSK/Analysis/MeasureTheory/Condexp/Variant5a5f3337bf2e90158d80c0989b24116f10d4a0d1d1408a4aa11f9bd9a1887aa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca1416cb33bea1c908057181e6d456cddda1af0c087825b313c920649c5d9575",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Condexp/Variant5a5f3337bf2e90158d80c0989b24116f10d4a0d1d1408a4aa11f9bd9a1887aa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be2dad6a-07bf-e743-f99e-8ea94a9ecf2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_ae_eq_trim_integral_condExpKernel_of_stronglyMeasurable
    [NormedAddCommGroup F] {f : Ω → F} [NormedSpace ℝ F] [CompleteSpace F]
    (hm : m ≤ mΩ) (hf : StronglyMeasurable f) (hf_int : Integrable f μ) :
    μ[f | m] =ᵐ[μ.trim hm] fun ω ↦ ∫ y, f y ∂condExpKernel μ m ω := by
  refine StronglyMeasurable.ae_eq_trim_of_stronglyMeasurable hm ?_ ?_ ?_
  · exact stronglyMeasurable_condExp
  · exact hf.integral_condExpKernel
  · exact condExp_ae_eq_integral_condExpKernel hm hf_int

/-- The conditional expectation of `f` with respect to a σ-algebra `m` is
(`μ.trim hm`)-almost everywhere equal to the integral `∫ y, f y ∂(condExpKernel μ m ω)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Condexp/Variant5a5f3337bf2e90158d80c0989b24116f10d4a0d1d1408a4aa11f9bd9a1887aa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Condexp/Variant5a5f3337bf2e90158d80c0989b24116f10d4a0d1d1408a4aa11f9bd9a1887aa2.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45df1ede5b0efb7e1c2777d9e55efc9d3d569f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
