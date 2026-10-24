# re_logDeriv_Gammaℝ_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a713e4c-9b91-09af-b69a-8edd234cd207",
  "kind": "theorem",
  "lexical_name": "re_logDeriv_Gammaℝ_half",
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
  "slug": "re-logderiv-gamma-half--405b2b6e2c041b4d63223142",
  "source": {
    "blob": "376a2cd6a598862f487e75be59d2e645495db596",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 115,
    "path": "GRWTSK/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:405b2b6e2c041b4d632231424e59e21edf2a82a625040449b443f42246c59838",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a713e4c-9b91-09af-b69a-8edd234cd207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_logDeriv_Gammaℝ_half (t : ℝ) :
    (logDeriv Complex.Gammaℝ (1/2 + t * I)).re = Real.pi * mu t := by
  rw [logDeriv_Gammaℝ (by simp)]
  have : ((1:ℂ)/2 + t * I) / 2 = 1 / 4 + Complex.I * t / 2 := by ring
  rw [this, mu]
  simp only [Complex.add_re, Complex.neg_re, Complex.div_ofNat_re, Complex.ofReal_re, Complex.mul_re,
    Complex.one_re]
  have hπ := Real.pi_ne_zero
  field_simp
  simp
  ring

/-- (M4) the Γ-side identity: for 0 < T₁ and any T₂,
(1/π)·Im(halfContour (logDeriv Γℝ) T₁ T₂) = ∫_{T₁}^{T₂} μ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `376a2cd6a598862f487e75be59d2e645495db596` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
