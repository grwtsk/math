# norm_logDeriv_central

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4d146df-3873-dd34-3877-5e46c06a5666",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_central",
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
  "slug": "norm-logderiv-central--b4b0a62857aa0f08498b5f2b",
  "source": {
    "blob": "471739a3dc9e44874c66cd16e2f0b2ed6b9a7c40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4b0a62857aa0f08498b5f2b8cdefd71590cdd53eca9f59da761a321dd698536",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4d146df-3873-dd34-3877-5e46c06a5666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_central (N : ℕ) (hN : 2 ≤ N) (σ y : ℝ)
    (hσ : σ ∈ Icc (0 : ℝ) 2) (hy : |y| = separatedHeight N) :
    ‖logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤
      80 * growthLog N + diskCountBudget N * (4 * (localCountBudget N + 1) + 1) := by
  have hc : ∃ c : ℂ, (c = upperCenter N ∨ c = lowerCenter N) ∧ |y - c.im| ≤ 1 / 2 := by
    by_cases hsign : 0 ≤ y
    · have he : y = separatedHeight N := by simpa only [abs_of_nonneg hsign] using hy
      exact ⟨upperCenter N, Or.inl rfl, by simpa only [he] using selected_upper_near N⟩
    · have he : y = -separatedHeight N := by
        rw [abs_of_neg (lt_of_not_ge hsign)] at hy
        linarith
      exact ⟨lowerCenter N, Or.inr rfl, by simpa only [he] using selected_lower_near N⟩
  obtain ⟨c, hc, hnear⟩ := hc
  obtain ⟨g, hg, hn, he, _hoff⟩ := exists_zeta_disk_quotient N hN c hc
  exact norm_zeta_logDeriv_of_quotient N hN c hc σ y hσ hy hnear g
    (quotient_diffContOnCl g hg) hn he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `471739a3dc9e44874c66cd16e2f0b2ed6b9a7c40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
