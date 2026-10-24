# gamma_line_shift_chi'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a05fc2a5-47af-6a0f-a2c0-d34e3e854f73",
  "kind": "theorem",
  "lexical_name": "gamma_line_shift_chi'",
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
  "slug": "gamma-line-shift-chi--7deefed2021bc8bc0ace7f66",
  "source": {
    "blob": "14c0a0b99efcbafcb8dbc842ec062c8e19f4e25d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 659,
    "line": 633,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7deefed2021bc8bc0ace7f664a0765cf3f9cec80f48158761066590ed871846b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a05fc2a5-47af-6a0f-a2c0-d34e3e854f73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 633–659.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gamma_line_shift_chi' (hq : 1 < q) (hprim : χ.IsPrimitive)
    {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
    {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3/2) :
    ∫ t : ℝ, (Hfn k ((c:ℝ) + t * I) + Hfn k (1 - c - t * I))
        * (logDeriv (completedLSym χ) (((c:ℝ):ℂ) + t * I)
          - logDeriv χ.LFunction (((c:ℝ):ℂ) + t * I))
      = ∫ t : ℝ, paperFT k t * ((2 * Real.pi * muq (parity χ) q t : ℝ) : ℂ) := by
  have hχ1 : χ ≠ 1 := ne_one_of_primitive hq hprim
  -- rewrite the integrand as (H₁+H₂)·G, G := logDeriv (archChi q (parity χ))
  have hpt : ∀ t : ℝ, logDeriv (completedLSym χ) (((c:ℝ):ℂ) + t * I)
        - logDeriv χ.LFunction (((c:ℝ):ℂ) + t * I)
      = logDeriv (archChi q (parity χ)) (((c:ℝ):ℂ) + t * I) := by
    intro t
    have hre : 0 < ((((c:ℝ)):ℂ) + t * I).re := by simp; linarith
    exact logDeriv_completedLSym_sub_L hq hχ1 hre
      (DirichletCharacter.LFunction_ne_zero_of_one_le_re χ (Or.inl hχ1) (by simp; linarith))
  simp_rw [hpt]
  rw [line_shift_generic (fun s hs => differentiableAt_logDeriv_archChi q (parity χ) hs)
    (norm_logDeriv_archChi_le q (parity χ) (parity_le_one' χ)) hk hkc hc1 hc2]
  refine integral_congr_ae (Eventually.of_forall fun t => ?_)
  dsimp only
  rw [archChi_bracket q (parity χ) (parity_le_one' χ) hq.le t]

end LineShift

end ThmE
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean#L633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14c0a0b99efcbafcb8dbc842ec062c8e19f4e25d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
