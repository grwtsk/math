# re_digamma_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fad17551-b245-8420-c60b-347a222d9660",
  "kind": "theorem",
  "lexical_name": "re_digamma_mono",
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
  "slug": "re-digamma-mono--1d99e9cba65b96a643667a96",
  "source": {
    "blob": "3d6b1ff684cde59c88654a846ec5231d2cf6aea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 114,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d99e9cba65b96a643667a96c2ee9700ab7012c0a0ea950c585a5f4bd083a06d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fad17551-b245-8420-c60b-347a222d9660`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_digamma_mono (ha0 : 0 < a) (ha1 : a < 1) :
    MonotoneOn (fun t : ℝ => (Complex.digamma ((a : ℂ) + Complex.I * t)).re)
      (Set.Ici (0 : ℝ)) := by
  intro t₁ h₁ t₂ h₂ h12
  simp only
  rw [re_digamma_vertical ha0 ha1, re_digamma_vertical ha0 ha1]
  have ht1 : (0 : ℝ) ≤ t₁ := h₁
  have hsq : t₁ ^ 2 ≤ t₂ ^ 2 := by nlinarith
  have hmono1 : a / (a ^ 2 + t₂ ^ 2) ≤ a / (a ^ 2 + t₁ ^ 2) :=
    div_le_div_of_nonneg_left ha0.le (by positivity) (by linarith)
  have hterm : ∀ n : ℕ,
      (1 / ((n : ℝ) + 1) - ((n : ℝ) + 1 + a) / (((n : ℝ) + 1 + a) ^ 2 + t₁ ^ 2))
        ≤ 1 / ((n : ℝ) + 1) - ((n : ℝ) + 1 + a) / (((n : ℝ) + 1 + a) ^ 2 + t₂ ^ 2) := by
    intro n
    have hna : (0 : ℝ) < (n : ℝ) + 1 + a := by positivity
    have h2 : ((n : ℝ) + 1 + a) / (((n : ℝ) + 1 + a) ^ 2 + t₂ ^ 2)
        ≤ ((n : ℝ) + 1 + a) / (((n : ℝ) + 1 + a) ^ 2 + t₁ ^ 2) :=
      div_le_div_of_nonneg_left hna.le (by positivity) (by linarith)
    linarith
  have hsum := (summable_re_terms ha0 ha1 t₁).tsum_le_tsum hterm
    (summable_re_terms ha0 ha1 t₂)
  linarith

/-- Bridge to Zeta23.mu: μ(τ) in terms of the parametrized line at a = 1/4, t = τ/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d6b1ff684cde59c88654a846ec5231d2cf6aea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
