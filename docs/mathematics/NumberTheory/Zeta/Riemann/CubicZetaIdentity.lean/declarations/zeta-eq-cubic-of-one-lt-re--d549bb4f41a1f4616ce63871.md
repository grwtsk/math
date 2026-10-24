# zeta_eq_cubic_of_one_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfc407a9-1dd2-65f7-3efd-3be32834d654",
  "kind": "theorem",
  "lexical_name": "zeta_eq_cubic_of_one_lt_re",
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
  "slug": "zeta-eq-cubic-of-one-lt-re--d549bb4f41a1f4616ce63871",
  "source": {
    "blob": "4543990a599ffb9fb6e6cb0f2b32c75a89bc7b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 98,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d549bb4f41a1f4616ce638718c2e9fb632353fcc0e8320ed7058ccf9aea3a27d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfc407a9-1dd2-65f7-3efd-3be32834d654`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_eq_cubic_of_one_lt_re (s : ℂ) (hs : 1 < s.re) :
    riemannZeta s = (s - 1)⁻¹ + 1 / 2 + s / 12 -
      s * (s + 1) * (s + 2) * cubicRemainder s := by
  have hne : s ≠ 1 := by intro he; simp [he] at hs
  have h₁ := terminal_logPower_tendsto_zero (1 - s) (by
    simp only [Complex.sub_re, Complex.one_re]; linarith)
  have h₂ := terminal_logPower_tendsto_zero (-s) (by
    simp only [Complex.neg_re]; linarith)
  have h₃ := terminal_logPower_tendsto_zero (-s - 1) (by
    simp only [Complex.sub_re, Complex.neg_re, Complex.one_re]; linarith)
  have hR := prefix_tendsto s (by linarith : -2 < s.re)
  have hlim := (((((tendsto_const_nhds (x := (1 : ℂ))).sub h₁).div_const (s - 1)).add
    (((tendsto_const_nhds (x := (1 : ℂ))).sub h₂).div_const (2 : ℂ))).add
    ((((tendsto_const_nhds (x := (1 : ℂ))).sub h₃).const_mul s).div_const (12 : ℂ))).sub
    (hR.const_mul (s * (s + 1) * (s + 2)))
  have hsame : Tendsto
      (fun N : ℕ => ∑ k ∈ Finset.range N, logPower ((k : ℝ) + 1) (-s)) atTop
      (𝓝 ((s - 1)⁻¹ + 1 / 2 + s / 12 -
        s * (s + 1) * (s + 2) * cubicRemainder s)) := by
    have he := hlim.congr' (Eventually.of_forall
      (fun N : ℕ => (finite_zeta_telescope s hne N).symm))
    simpa only [sub_zero, mul_one, one_div] using he
  exact tendsto_nhds_unique (dirichlet_prefix_tendsto s hs) hsame

/-- An independently specified regular expression, not a redefinition of zeta. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4543990a599ffb9fb6e6cb0f2b32c75a89bc7b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
