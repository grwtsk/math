# derivE2_div_E2_conj_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d94cd46-27c0-ddc8-61fc-31504d42aeab",
  "kind": "theorem",
  "lexical_name": "derivE2_div_E2_conj_symm",
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
  "slug": "derive2-div-e2-conj-symm--42bab79e9b10789a8fe5ec72",
  "source": {
    "blob": "9b07462fa708a42283cb7334515d99edaba3fc28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 660,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42bab79e9b10789a8fe5ec72526f5c3cdd87be3a3d3a199e83fd7d61096301f1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d94cd46-27c0-ddc8-61fc-31504d42aeab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 660–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivE2_div_E2_conj_symm (hc1 : 9/8 ≤ c) (hc2 : c ≤ 5/4)
    (_hW : ∀ t : ℝ, hardyW (((c:ℝ):ℂ) + t * I) ≠ 0) (t : ℝ) (ht : t ≠ 0) :
    conj (deriv E2fn (((c:ℝ):ℂ) + ((-t : ℝ) : ℂ) * I) / E2fn (((c:ℝ):ℂ) + ((-t : ℝ) : ℂ) * I))
      = deriv E2fn (((c:ℝ):ℂ) + t * I) / E2fn (((c:ℝ):ℂ) + t * I) := by
  have h : deriv E2fn (((c:ℝ):ℂ) + ((-t : ℝ) : ℂ) * I) / E2fn (((c:ℝ):ℂ) + ((-t : ℝ) : ℂ) * I)
      = conj (deriv E2fn (((c:ℝ):ℂ) + t * I) / E2fn (((c:ℝ):ℂ) + t * I)) :=
    (archLineData_L2 hc1 hc2).derivE_div_E_conj ht
  rw [h, Complex.conj_conj]

end uniform

/-! ## X8. The line bounds and continuity for E₂ and F_𝒵 = L₂ + W′/W -/

section linebounds

/-- **X8a.** ‖E₂(c+it)‖ ≤ M log(2+|t|) and t ↦ E₂(c+it) is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean#L660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b07462fa708a42283cb7334515d99edaba3fc28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
