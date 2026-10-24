# restriction_backwardShift_exponential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e03201bb-0cdf-04f0-d184-b114317ab10a",
  "kind": "theorem",
  "lexical_name": "restriction_backwardShift_exponential",
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
  "slug": "restriction-backwardshift-exponential--b4529ae535d502b9f322799a",
  "source": {
    "blob": "e62c4248d0f4eca80c68b3972470e154e92f716f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 607,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialStatements/Variant3eb5480b7a47892faa69d34a42fb8a08178a185219dd88d93eccb71c1ca57bb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4529ae535d502b9f322799a488bb7f869bb0be9103ccffcb6319c9ece16442e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialStatements/Variant3eb5480b7a47892faa69d34a42fb8a08178a185219dd88d93eccb71c1ca57bb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e03201bb-0cdf-04f0-d184-b114317ab10a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restriction_backwardShift_exponential (a : ℝ) (ha : 0 ≤ a)
    (z : ℂ) (hz : 0 < z.re) :
    restriction (fullShift (-a) (zeroExtension (exponentialVector z hz))) =
      Complex.exp (-conj z * (a : ℂ)) • exponentialVector z hz := by
  apply Lp.ext
  have he := (measurePreserving_sub_right volume (-a)).quasiMeasurePreserving.ae_eq_comp
    (zeroExtension_exponential_ae z hz)
  filter_upwards [restriction_ae (fullShift (-a) (zeroExtension (exponentialVector z hz))),
    ae_restrict_of_ae (fullShift_ae (-a) (zeroExtension (exponentialVector z hz))),
    ae_restrict_of_ae he, Lp.coeFn_smul (Complex.exp (-conj z * (a : ℂ))) (exponentialVector z hz),
    exponentialVector_ae z hz, ae_restrict_mem measurableSet_Ioi]
    with t hr hs heq hsm hex ht
  simp only [Function.comp_apply] at heq
  rw [hr, hs, heq, hsm, Pi.smul_apply, hex]
  rw [indicator_of_mem (show t - -a ∈ Ioi (0 : ℝ) by
    change 0 < t - -a
    linarith [show 0 < t from ht])]
  change Complex.exp (-conj z * ((t - -a : ℝ) : ℂ)) =
    Complex.exp (-conj z * (a : ℂ)) * Complex.exp (-conj z * (t : ℂ))
  rw [← Complex.exp_add]
  congr 1
  push_cast
  ring

/-- The half-line exponential tests actual shifts with the Laplace exponential factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialStatements/Variant3eb5480b7a47892faa69d34a42fb8a08178a185219dd88d93eccb71c1ca57bb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialStatements/Variant3eb5480b7a47892faa69d34a42fb8a08178a185219dd88d93eccb71c1ca57bb0.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e62c4248d0f4eca80c68b3972470e154e92f716f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
