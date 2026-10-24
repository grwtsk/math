# lintegral_eq_lintegral_meas_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9aeb10ce211de0ececd83a30212e61be39f0b41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66e32482-4df7-dd46-e59e-7df012f335dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b448a0b-ce11-812f-517b-e765266ba9d8",
  "kind": "theorem",
  "lexical_name": "lintegral_eq_lintegral_meas_le",
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
  "slug": "lintegral-eq-lintegral-meas-le--d7a959cb51fb435eb869b7f3",
  "source": {
    "blob": "c9aeb10ce211de0ececd83a30212e61be39f0b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 212,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7a959cb51fb435eb869b7f34414243960683d35ad971793ed8aaeba78c364cd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b448a0b-ce11-812f-517b-e765266ba9d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_eq_lintegral_meas_le (μ : Measure α) [SigmaFinite μ] (f_nn : 0 ≤ f)
    (f_mble : Measurable f) :
    (∫⁻ ω, ENNReal.ofReal (f ω) ∂μ) = ∫⁻ t in Ioi 0, μ {a : α | t ≤ f a} := by
  set cst := fun _ : ℝ => (1 : ℝ)
  have cst_intble : ∀ t > 0, IntervalIntegrable cst volume 0 t := fun _ _ =>
    intervalIntegrable_const
  have key :=
    lintegral_comp_eq_lintegral_meas_le_mul μ f_nn f_mble cst_intble
      (eventually_of_forall fun _ => zero_le_one)
  simp_rw [ENNReal.ofReal_one, mul_one] at key
  rw [← key]
  congr with ω
  simp only [intervalIntegral.integral_const, sub_zero, Algebra.id.smul_eq_mul, mul_one]
#align measure_theory.lintegral_eq_lintegral_meas_le MeasureTheory.lintegral_eq_lintegral_meas_le

/-- An application of the layer cake formula / Cavalieri's principle / tail probability formula:

For a nonnegative function `f` on a sigma-finite measure space, the Lebesgue integral of `f` can
be written (roughly speaking) as: `∫⁻ f^p ∂μ = p * ∫⁻ t in (0).. ∞, t^(p-1) * μ {ω | f(ω) ≥ t}`.

See `lintegral_rpow_eq_lintegral_meas_lt_mul` for a version with sets of the form `{ω | f(ω) > t}`
instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9aeb10ce211de0ececd83a30212e61be39f0b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
