# dirichlet_prefix_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d89982c8-c2a7-5b08-e3bd-77c34d75e2e5",
  "kind": "theorem",
  "lexical_name": "dirichlet_prefix_tendsto",
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
  "slug": "dirichlet-prefix-tendsto--72cfa8e5746d7569b0797c35",
  "source": {
    "blob": "4543990a599ffb9fb6e6cb0f2b32c75a89bc7b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 64,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72cfa8e5746d7569b0797c35c7f85dde71cbf4564ad92109daa43839541f4eb2",
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

Occurrence: `result:d89982c8-c2a7-5b08-e3bd-77c34d75e2e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichlet_prefix_tendsto (s : ℂ) (hs : 1 < s.re) :
    Tendsto (fun N : ℕ => ∑ k ∈ Finset.range N, logPower ((k : ℝ) + 1) (-s))
      atTop (𝓝 (riemannZeta s)) := by
  have hsum : Summable (fun k : ℕ => 1 / ((k : ℂ) + 1) ^ s) := by
    simpa only [Nat.cast_one] using summable_shifted_reciprocal_cpow s hs 1
  have he (k : ℕ) : logPower ((k : ℝ) + 1) (-s) = 1 / ((k : ℂ) + 1) ^ s := by
    simpa only [Complex.ofReal_add, Complex.ofReal_natCast, Complex.ofReal_one] using
      logPower_neg_eq_reciprocal_cpow ((k : ℝ) + 1) (by positivity) s
  simp_rw [he]
  rw [zeta_eq_tsum_one_div_nat_add_one_cpow hs]
  exact hsum.hasSum.tendsto_sum_nat

/-- Exact finite identity: N included terms end at N; every terminal power is at N+1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4543990a599ffb9fb6e6cb0f2b32c75a89bc7b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
