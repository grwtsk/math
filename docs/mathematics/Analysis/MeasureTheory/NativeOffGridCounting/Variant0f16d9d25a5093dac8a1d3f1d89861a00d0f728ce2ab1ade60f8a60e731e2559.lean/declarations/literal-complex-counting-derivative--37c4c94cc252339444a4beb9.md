# literal_complex_counting_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a9e214c-8614-3d78-fe6f-b2b9a1c5109b",
  "kind": "theorem",
  "lexical_name": "literal_complex_counting_derivative",
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
  "slug": "literal-complex-counting-derivative--37c4c94cc252339444a4beb9",
  "source": {
    "blob": "027fc26a5a08cdc94cdd17467c5e4a54c9360e0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 48,
    "path": "GRWTSK/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37c4c94cc252339444a4beb901b4ed3845a2c6320640015187cbc371eaf1d4d8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a9e214c-8614-3d78-fe6f-b2b9a1c5109b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_complex_counting_derivative {x : ℝ} (hx : 0 < x) :
    HasDerivAt (fun y : ℝ ↦ phase * Complex.exp (exponent * (Real.log y : ℂ)))
      (phase * exponent * Complex.exp ((exponent - 1) * (Real.log x : ℂ))) x := by
  have hd := (((Real.hasDerivAt_log hx.ne').ofReal_comp).const_mul exponent).cexp.const_mul phase
  apply hd.congr_deriv
  have he : Complex.exp (Real.log x : ℂ) = (x : ℂ) := by
    rw [← Complex.ofReal_exp, Real.exp_log hx]
  have harg : exponent * (Real.log x : ℂ) =
      (exponent - 1) * (Real.log x : ℂ) + (Real.log x : ℂ) := by ring
  rw [harg, Complex.exp_add, he]
  push_cast
  have hxc : (x : ℂ) ≠ 0 := by exact_mod_cast hx.ne'
  field_simp [hxc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `027fc26a5a08cdc94cdd17467c5e4a54c9360e0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
