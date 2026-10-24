# zeta_sub_approximation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b1205b6-9e1e-06ba-e22f-75c2b817770e",
  "kind": "theorem",
  "lexical_name": "zeta_sub_approximation",
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
  "slug": "zeta-sub-approximation--4cf5edc3f256188f83bcac53",
  "source": {
    "blob": "46ddd85c851d0748432a29612e952f385ce02433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 92,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cf5edc3f256188f83bcac53f3d18885a29e6000865c12df1c1cf33221c7ee6c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b1205b6-9e1e-06ba-e22f-75c2b817770e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_sub_approximation (N : ℕ) (s : ℂ) (hσ : -2 < s.re) (hs : s ≠ 1) :
    riemannZeta s - approximation N s = analyticTail N s := by
  have hfinite := finite_zeta_telescope s hs N
  have hsource := zeta_eq_cubic s hσ hs
  have ht := terminal_power_identities (cutoff N) (cutoff_pos N) s
  change (∑ k ∈ Finset.range N, logPower ((k : ℝ) + 1) (-s)) =
    (1 - logPower (cutoff N) (1 - s)) / (s - 1) +
    (1 - logPower (cutoff N) (-s)) / 2 +
    s * (1 - logPower (cutoff N) (-s - 1)) / 12 -
    s * (s + 1) * (s + 2) * cellPrefix N s at hfinite
  rw [ht.1, ht.2] at hfinite
  unfold approximation
  have hsum : (∑ i : Fin N, logPower ((i.1 : ℝ) + 1) (-s)) =
      ∑ k ∈ Finset.range N, logPower ((k : ℝ) + 1) (-s) :=
    Fin.sum_univ_eq_sum_range (fun k => logPower ((k : ℝ) + 1) (-s)) N
  rw [hsum, hfinite, hsource]
  unfold terminalFactor analyticTail
  have hL : (cutoff N : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (cutoff_pos N).ne'
  field_simp [sub_ne_zero.mpr hs, hL]
  <;> ring

/-- Finite prefixes are entire in the complex parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46ddd85c851d0748432a29612e952f385ce02433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
