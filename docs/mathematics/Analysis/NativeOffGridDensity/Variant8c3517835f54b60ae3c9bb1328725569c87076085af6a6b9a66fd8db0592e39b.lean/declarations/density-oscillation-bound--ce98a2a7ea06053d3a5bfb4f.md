# density_oscillation_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0154f7aa-9203-2163-c205-72b4fa49829e",
  "kind": "theorem",
  "lexical_name": "density_oscillation_bound",
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
  "slug": "density-oscillation-bound--ce98a2a7ea06053d3a5bfb4f",
  "source": {
    "blob": "35c69b1a903328d66b3897c4fd0a18ddce2148a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 75,
    "path": "GRWTSK/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce98a2a7ea06053d3a5bfb4f5d07b64a3f38ee36654ce5945e1e593c7a9369d6",
  "verification": {
    "reference": "docs/verification/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0154f7aa-9203-2163-c205-72b4fa49829e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_oscillation_bound {x : ℝ} (hx : 1 ≤ x) :
    |density x - 1| ≤ 1 / 2 := by
  have hxpos : 0 < x := by linarith
  have hlog : 0 ≤ Real.log x := Real.log_nonneg hx
  have hexp : ‖Complex.exp ((exponent - 1) * (Real.log x : ℂ))‖ ≤ 1 := by
    rw [Complex.norm_exp]
    apply Real.exp_le_one_iff.mpr
    simp only [Complex.mul_re, Complex.sub_re, Complex.one_re, Complex.ofReal_re,
      Complex.ofReal_im, mul_zero, sub_zero, exponent_real_part]
    nlinarith
  have h := (Complex.abs_re_le_norm
    (phase * exponent * Complex.exp ((exponent - 1) * (Real.log x : ℂ)))).trans
      (by rw [norm_mul, literal_phase_amplitude]; nlinarith :
        ‖phase * exponent * Complex.exp ((exponent - 1) * (Real.log x : ℂ))‖ ≤ 1 / 2)
  simpa only [density, add_sub_cancel_left] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c69b1a903328d66b3897c4fd0a18ddce2148a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
