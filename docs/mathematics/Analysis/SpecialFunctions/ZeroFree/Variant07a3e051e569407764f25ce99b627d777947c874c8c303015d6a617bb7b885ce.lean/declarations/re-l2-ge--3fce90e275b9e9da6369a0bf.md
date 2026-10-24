# re_L2_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b369792-9d4a-eedc-55dd-a43f10e27d99",
  "kind": "theorem",
  "lexical_name": "re_L2_ge",
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
  "slug": "re-l2-ge--3fce90e275b9e9da6369a0bf",
  "source": {
    "blob": "a0f7bda568b05342598acbd68ddba122a04e5816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 213,
    "path": "GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fce90e275b9e9da6369a0bf4e2c356a7f66dbd3d765716fdca8f4e367081fce",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b369792-9d4a-eedc-55dd-a43f10e27d99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_L2_ge : ∃ C : ℝ, ∀ s : ℂ, 1 ≤ s.re → 2 ≤ |s.im| →
    Real.log |s.im| / 2 - C ≤ (L2 s).re := by
  refine ⟨Real.log 2 / 2 + Real.log Real.pi / 2 + 9 / 4, fun s hre hi => ?_⟩
  have hs : s.im ≠ 0 := fun h => by rw [h, abs_zero] at hi; linarith
  have hA : Real.log (|s.im| / 2) - 4 ≤ (Complex.digamma (s / 2)).re := by
    have h := re_digamma_ge (z := s / 2) (by simp; linarith)
      (by rw [Complex.div_ofNat_im, abs_div, abs_two]; linarith)
    rwa [Complex.div_ofNat_im, abs_div, abs_two] at h
  have hB := re_digamma_half_one_sub_ge hre hi
  have hlog : Real.log (|s.im| / 2) = Real.log |s.im| - Real.log 2 := by
    rw [Real.log_div (by positivity) (by norm_num)]
  have e : (L2 s).re = -(Real.log Real.pi) / 2
      + 1 / 4 * ((Complex.digamma (s / 2)).re + (Complex.digamma ((1 - s) / 2)).re) := by
    rw [L2_eq_digamma hs, show (1 / 4 : ℂ) = ((1 / 4 : ℝ) : ℂ) by norm_num, Complex.add_re,
      Complex.re_ofReal_mul, Complex.add_re]
    congr 1
    rw [show (-(Real.log Real.pi : ℂ) / 2) = (((-(Real.log Real.pi) / 2 : ℝ)) : ℂ) by push_cast; ring,
      Complex.ofReal_re]
  rw [e]
  linarith

set_option maxHeartbeats 800000 in
/-- |Re L₋(σ+it)| ≤ C/t² for 1 ≤ σ ≤ 2, |t| ≥ 4. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f7bda568b05342598acbd68ddba122a04e5816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
