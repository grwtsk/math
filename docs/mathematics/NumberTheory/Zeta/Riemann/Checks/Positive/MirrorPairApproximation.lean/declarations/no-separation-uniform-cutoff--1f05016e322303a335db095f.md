# no_separation_uniform_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47c541d1-f4a6-54ac-192c-82802763f196",
  "kind": "theorem",
  "lexical_name": "no_separation_uniform_cutoff",
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
  "slug": "no-separation-uniform-cutoff--1f05016e322303a335db095f",
  "source": {
    "blob": "851f7c40c7ba423aaccdb06df9208336a6367944",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 79,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/MirrorPairApproximation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f05016e322303a335db095fcce76c29e44c9fab083330852ab8de5c76b3b972",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/Positive/MirrorPairApproximation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47c541d1-f4a6-54ac-192c-82802763f196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_separation_uniform_cutoff (n : ℕ) :
    ∃ d : ℂ, d ≠ 0 ∧ ¬ (repeated d=0 ∧ repeated (-d)=0) ∧
      ¬ ((looseExact n d).budget < energy repeated 0 d) := by
  have hp : 0 < eps n := by unfold eps; positivity
  have hu : eps n ≤ 1 := by
    unfold eps
    apply (div_le_iff₀ (by positivity : (0 : ℝ) < (n : ℝ)+1)).mpr
    nlinarith [Nat.cast_nonneg (α := ℝ) n]
  have hdn : (eps n : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hp.ne'
  refine ⟨(eps n : ℂ),hdn,?_,?_⟩
  · intro h
    exact (pow_ne_zero 2 hdn) h.1
  · rw [repeated_energy]
    have hn : ‖(eps n : ℂ)‖=eps n := by
      rw [Complex.norm_real,Real.norm_eq_abs,abs_of_pos hp]
    rw [hn]
    change ¬ ((eps n)^2+‖(eps n : ℂ)‖^2*0^2 < (eps n)^4)
    have hsq : (eps n)^2 ≤ 1 := by nlinarith
    have hmul := mul_nonneg (sq_nonneg (eps n)) (sub_nonneg.mpr hsq)
    nlinarith

-- Cross-error terms belong in a composed enclosure, not a sum of squared budgets.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/Positive/MirrorPairApproximation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/MirrorPairApproximation.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `851f7c40c7ba423aaccdb06df9208336a6367944` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
