# orthonormal_mFourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ca4ff3b-4ae0-a4d3-c8cb-bb8fe24f9d91",
  "kind": "theorem",
  "lexical_name": "orthonormal_mFourier",
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
  "slug": "orthonormal-mfourier--a6bbd88752227b12bc9339bc",
  "source": {
    "blob": "f26bb6b01b442b4af05c5cd67d3de86eff514f00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 172,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6bbd88752227b12bc9339bc0e04d5e54644d7f27b946da5ac4ea7d04bede0db",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ca4ff3b-4ae0-a4d3-c8cb-bb8fe24f9d91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthonormal_mFourier : Orthonormal ℂ (mFourierLp (d := d) 2) := by
  rw [orthonormal_iff_ite]
  intro m n
  simp only [ContinuousMap.inner_toLp, ← mFourier_neg, ← mFourier_add]
  split_ifs with h
  · simpa only [h, add_neg_cancel, mFourier_zero, measureReal_univ_eq_one, one_smul] using
      integral_const (α := UnitAddTorus d) (μ := volume) (1 : ℂ)
  rw [mFourier, ContinuousMap.coe_mk, MeasureTheory.integral_fintype_prod_eq_prod]
  obtain ⟨i, hi⟩ := Function.ne_iff.mp h
  apply Finset.prod_eq_zero (Finset.mem_univ i)
  simpa only [eq_false_intro hi, if_false, ContinuousMap.inner_toLp, ← fourier_neg,
    ← fourier_add] using (orthonormal_iff_ite.mp <| orthonormal_fourier) (m i) (n i)

end Lp

section fourierCoeff

variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]

/-- The `n`-th Fourier coefficient of a function `UnitAddTorus d → E`, for `E` a complete normed
`ℂ`-vector space, defined as the integral over `UnitAddTorus d` of `mFourier (-n) t • f t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f26bb6b01b442b4af05c5cd67d3de86eff514f00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
