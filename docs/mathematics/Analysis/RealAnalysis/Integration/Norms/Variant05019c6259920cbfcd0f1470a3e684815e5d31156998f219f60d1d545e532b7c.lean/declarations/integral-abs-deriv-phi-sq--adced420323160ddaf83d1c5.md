# integral_abs_deriv_phi_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d95bee9-4b4a-7002-8b24-650ec997d67b",
  "kind": "theorem",
  "lexical_name": "integral_abs_deriv_phi_sq",
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
  "slug": "integral-abs-deriv-phi-sq--adced420323160ddaf83d1c5",
  "source": {
    "blob": "7392f1f6f96b918508d0a01f898f76d8012a9b6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 148,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adced420323160ddaf83d1c5f3fbcbe2b3e94e5b99d11b3e5ad26202a538157d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d95bee9-4b4a-7002-8b24-650ec997d67b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_deriv_phi_sq (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) :
    ∫ u, |deriv (fun u => phi ϱ L w u ^ 2) u| = 2 := by
  have hφ1 : ContDiff ℝ 1 (phi ϱ L w) := (phi_contDiff hϱ hw hwL).of_le (by norm_num)
  have hderiv_sq : ∀ u : ℝ, deriv (fun u => phi ϱ L w u ^ 2) u
      = 2 * phi ϱ L w u * deriv (phi ϱ L w) u := by
    intro u
    have hd : HasDerivAt (phi ϱ L w) (deriv (phi ϱ L w) u) u :=
      ((hφ1.differentiable (by norm_num)) u).hasDerivAt
    have hpow : HasDerivAt (fun v => phi ϱ L w v ^ 2)
        ((2 : ℕ) * phi ϱ L w u ^ (2 - 1) * deriv (phi ϱ L w) u) u := hd.pow 2
    rw [hpow.deriv]
    norm_num
  refine integral_abs_deriv_eq_two (L := L) (by linarith) (hφ1.pow 2)
    (fun u => by rw [phi_even]) (fun u hu => ?_) (fun u hu => by
      rw [phi_eq_zero hϱ hw hu]; ring) (by
      rw [phi_eq_one hϱ hw (by rw [abs_zero]; linarith)]; ring)
  rw [hderiv_sq u]
  have h1 : 0 ≤ phi ϱ L w u := phi_nonneg hϱ u
  have h2 : deriv (phi ϱ L w) u ≤ 0 := by
    rw [deriv_phi_pos hϱ hw hu]
    have := deriv_nonneg_of_monotone hϱ.monotone
      (rho_differentiable hϱ ((L / 2 - u) / w))
    have h3 : 0 ≤ deriv ϱ ((L / 2 - u) / w) / w := div_nonneg this hw.le
    linarith
  nlinarith


/-- deriv ϱ vanishes left of 0 (ϱ is locally 0 there). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7392f1f6f96b918508d0a01f898f76d8012a9b6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
