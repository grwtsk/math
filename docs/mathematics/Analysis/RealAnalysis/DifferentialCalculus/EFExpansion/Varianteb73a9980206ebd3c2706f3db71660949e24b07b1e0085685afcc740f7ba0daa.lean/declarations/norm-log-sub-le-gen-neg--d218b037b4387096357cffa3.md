# norm_log_sub_le_gen_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f5b513e-7577-70c7-d497-e5515ee1a643",
  "kind": "theorem",
  "lexical_name": "norm_log_sub_le_gen_neg",
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
  "slug": "norm-log-sub-le-gen-neg--d218b037b4387096357cffa3",
  "source": {
    "blob": "9b07462fa708a42283cb7334515d99edaba3fc28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 188,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d218b037b4387096357cffa394214f6f8ace608a3b75c3150327949cf0393910",
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

Occurrence: `result:1f5b513e-7577-70c7-d497-e5515ee1a643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_log_sub_le_gen_neg {a t : ℝ} (ha0 : 0 < a) (ha1 : a ≤ 1) (ht : 2 ≤ t) :
    ‖Complex.log (((a:ℝ):ℂ) - ((t/2:ℝ):ℂ) * I)
        - (((Real.log (t/2) : ℝ) : ℂ) - ((Real.pi/2 : ℝ) : ℂ) * I)‖ ≤ 6 / t := by
  have h := norm_log_sub_le_gen ha0 ha1 ht
  set z : ℂ := ((a:ℝ):ℂ) + ((t/2:ℝ):ℂ) * I with hz
  have harg : z.arg ≠ Real.pi := by
    have : 0 ≤ z.re := by simp [hz]; exact ha0.le
    have h1 := Complex.arg_le_pi_div_two_iff.mpr (Or.inl this)
    intro h2; rw [h2] at h1; linarith [Real.pi_pos]
  have hconj : conj z = ((a:ℝ):ℂ) - ((t/2:ℝ):ℂ) * I := by
    rw [hz, map_add, map_mul, Complex.conj_ofReal, Complex.conj_ofReal, Complex.conj_I]; ring
  have hlog : Complex.log (conj z) = conj (Complex.log z) := by
    rw [Complex.log_conj_eq_ite, if_neg harg]
  rw [← hconj, hlog]
  have e : (((Real.log (t/2) : ℝ) : ℂ) - ((Real.pi/2 : ℝ) : ℂ) * I)
      = conj (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I) := by
    rw [map_add, map_mul, Complex.conj_ofReal, Complex.conj_ofReal, Complex.conj_I]; ring
  rw [e, ← map_sub, Complex.norm_conj]
  exact h

/-- the explicit form of L₂ on Re s ∈ (1, 3/2), off the real axis:
L₂(s) = −log π/2 + ¼ψ(s/2) + ¼ψ((3−s)/2) − 1/(2(1−s)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b07462fa708a42283cb7334515d99edaba3fc28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
