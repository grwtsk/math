# integral_prod_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68a69491-2bba-5f44-c4be-ecc38e8b40a5",
  "kind": "theorem",
  "lexical_name": "integral_prod_swap",
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
  "slug": "integral-prod-swap--3ec1da54f263bb653850cfa0",
  "source": {
    "blob": "7b19aac2a6d9a12221b5f6a581db723e4e4de211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 350,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ec1da54f263bb653850cfa0393564de23657288a549d4be338f43e5756efd83",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68a69491-2bba-5f44-c4be-ecc38e8b40a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_prod_swap (f : α × β → E) (hf : AEStronglyMeasurable f (μ.prod ν)) :
    ∫ z, f z.swap ∂ν.prod μ = ∫ z, f z ∂μ.prod ν := by
  rw [← prod_swap] at hf
  rw [← integral_map measurable_swap.aemeasurable hf, prod_swap]
#align measure_theory.integral_prod_swap MeasureTheory.integral_prod_swap

variable {E' : Type*} [NormedAddCommGroup E'] [CompleteSpace E'] [NormedSpace ℝ E']

/-! Some rules about the sum/difference of double integrals. They follow from `integral_add`, but
  we separate them out as separate lemmas, because they involve quite some steps. -/


/-- Integrals commute with addition inside another integral. `F` can be any function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b19aac2a6d9a12221b5f6a581db723e4e4de211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
