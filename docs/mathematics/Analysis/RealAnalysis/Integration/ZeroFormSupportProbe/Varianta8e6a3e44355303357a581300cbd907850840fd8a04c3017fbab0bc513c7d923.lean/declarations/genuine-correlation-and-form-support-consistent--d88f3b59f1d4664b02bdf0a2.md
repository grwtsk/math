# genuine_correlation_and_form_support_consistent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e022c71-49ab-81fc-4200-351e3110ccd2",
  "kind": "theorem",
  "lexical_name": "genuine_correlation_and_form_support_consistent",
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
  "slug": "genuine-correlation-and-form-support-consistent--d88f3b59f1d4664b02bdf0a2",
  "source": {
    "blob": "1c0102946631c332104cfa51781b33d3141cd2d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroFormSupportProbe/Varianta8e6a3e44355303357a581300cbd907850840fd8a04c3017fbab0bc513c7d923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d88f3b59f1d4664b02bdf0a2747e1354a45d87ee0f302d2ca61bdd543102e8c8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroFormSupportProbe/Varianta8e6a3e44355303357a581300cbd907850840fd8a04c3017fbab0bc513c7d923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e022c71-49ab-81fc-4200-351e3110ccd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem genuine_correlation_and_form_support_consistent {f : ℝ → ℝ} {A R : ℝ}
    (hf : Continuous f) (hcompact : HasCompactSupport f)
    (hsupport : Function.support f ⊆ Icc (-A) A) (hAR : A ≤ R) :
    (∀ t : ℝ, Integrable (fun x ↦ f x * f (x - t)) volume) ∧
      realArithmeticForm R f = realArithmeticForm A f :=
  ⟨correlation_integrand_integrable hf hcompact,
    realArithmeticForm_support_consistent hsupport hAR⟩

end

end ZeroFormSupportProbe

#check ZeroFormSupportProbe.correlation_integrand_integrable
#check ZeroFormSupportProbe.correlation_zero_of_two_mul_radius_le
#check ZeroFormSupportProbe.mem_primeCutoff_iff
#check ZeroFormSupportProbe.primeCutoff_mono
#check ZeroFormSupportProbe.prime_sum_support_consistent
#check ZeroFormSupportProbe.realArithmeticForm_support_consistent
#check ZeroFormSupportProbe.genuine_correlation_and_form_support_consistent

#print axioms ZeroFormSupportProbe.correlation_integrand_integrable
#print axioms ZeroFormSupportProbe.correlation_zero_of_two_mul_radius_le
#print axioms ZeroFormSupportProbe.mem_primeCutoff_iff
#print axioms ZeroFormSupportProbe.primeCutoff_mono
#print axioms ZeroFormSupportProbe.prime_sum_support_consistent
#print axioms ZeroFormSupportProbe.realArithmeticForm_support_consistent
#print axioms ZeroFormSupportProbe.genuine_correlation_and_form_support_consistent
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroFormSupportProbe/Varianta8e6a3e44355303357a581300cbd907850840fd8a04c3017fbab0bc513c7d923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroFormSupportProbe/Varianta8e6a3e44355303357a581300cbd907850840fd8a04c3017fbab0bc513c7d923.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c0102946631c332104cfa51781b33d3141cd2d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
