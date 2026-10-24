# norm_zeta_logDeriv_of_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f207267-85d9-6191-0584-7fb621a1dc6c",
  "kind": "theorem",
  "lexical_name": "norm_zeta_logDeriv_of_quotient",
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
  "slug": "norm-zeta-logderiv-of-quotient--4c3432b8d3de76efe3ed7686",
  "source": {
    "blob": "a96388ad55f1b301f9dc57c1aec40cfc6470af67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 70,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/JensenDiskQuotientLog.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c3432b8d3de76efe3ed768676b45a79f7aa614aacd32e48d88854fa61385f70",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/JensenDiskQuotientLog.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f207267-85d9-6191-0584-7fb621a1dc6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_zeta_logDeriv_of_quotient (N : ℕ) (hN : 2 ≤ N) (c : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) (σ y : ℝ)
    (hσ : σ ∈ Icc (0 : ℝ) 2) (hy : |y| = separatedHeight N)
    (hnear : |y - c.im| ≤ 1 / 2) (g : ℂ → ℂ)
    (hg : DiffContOnCl ℂ g (ball 0 (3 : ℝ)))
    (hn : ∀ w ∈ ball 0 (11 / 4 : ℝ), g w ≠ 0)
    (hquot : ∀ w ∈ closedBall 0 (3 : ℝ),
      riemannZeta (c + w) = g w *
        ∏ z ∈ diskHead N c, (factor 3 (z.1 - c) w) ^ multiplicity z) :
    ‖logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤
      80 * growthLog N + diskCountBudget N * (4 * (localCountBudget N + 1) + 1) := by
  obtain ⟨L, hg0, h0, hL, _hd, hr, he⟩ := exists_zeta_disk_log_of_quotient N hN c hc g hg hn hquot
  have hcr : c.re = 2 := by rcases hc with rfl | rfl <;> simp
  have hw : ‖((σ : ℂ) + (y : ℂ) * Complex.I) - c‖ ≤ 9 / 4 :=
    central_point_norm c _ hcr (by simpa using hσ) (by simpa using hnear)
  have hmem : ((σ : ℂ) + (y : ℂ) * Complex.I) - c ∈ ball (0 : ℂ) (11 / 4 : ℝ) := by
    rw [Metric.mem_ball, dist_zero_right]
    linarith
  apply norm_zeta_logDeriv_of_factorization N hN c hc σ y hσ hy hnear (g 0) hg0 L hL h0 hr
  exact eventuallyEq_of_mem (isOpen_ball.mem_nhds hmem) (fun w hw => he w hw)

end
end GRWTSK.RiemannHypothesis.JensenDiskQuotientLog
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/JensenDiskQuotientLog.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/JensenDiskQuotientLog.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a96388ad55f1b301f9dc57c1aec40cfc6470af67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
