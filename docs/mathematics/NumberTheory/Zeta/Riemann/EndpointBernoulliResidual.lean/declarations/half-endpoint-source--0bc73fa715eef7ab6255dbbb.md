# half_endpoint_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fdfb524-b331-b418-469b-02e9a63fd709",
  "kind": "theorem",
  "lexical_name": "half_endpoint_source",
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
  "slug": "half-endpoint-source--0bc73fa715eef7ab6255dbbb",
  "source": {
    "blob": "84097121ab51680e49244ce224b05dc44aaaefaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 69,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bc73fa715eef7ab6255dbbbd29c6bcc1068aae4726b24b55727ff083fc713ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fdfb524-b331-b418-469b-02e9a63fd709`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_endpoint_source {N : ℕ} (hN : 1 ≤ N) {s : ℂ}
    (hs : 0 < s.re) (hs1 : s ≠ 1) :
    riemannZeta s - EndpointCorrectedJet.model N 0 s = remainder 1 (N : ℝ) s := by
  have h := FinitePowerZetaJet.source_residual hN hs hs1
  rw [fractional_tail_split hN hs] at h
  have hs0 : s ≠ 0 := Complex.ne_zero_of_re_pos hs
  have he : -s * (tail 1 (N : ℝ) s + (N : ℂ) ^ (-s) / (2 * s)) =
      -(N : ℂ) ^ (-s) / 2 - s * tail 1 (N : ℝ) s := by
    field_simp [hs0]
    ring
  rw [he] at h
  rw [EndpointCorrectedJet.model_eq_previous_plus_corrections hN 0 hs1]
  simp only [Finset.range_zero, Finset.sum_empty, add_zero]
  simp only [remainder, PochhammerJet.value_succ, PochhammerJet.value_zero,
    Nat.cast_zero, add_zero, one_mul, Nat.factorial_one, Nat.cast_one, div_one]
  linear_combination h

/-- Multiplying the tail recurrence by the exact rising-factorial/factorial
coefficient creates the next correction and retains the next full integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84097121ab51680e49244ce224b05dc44aaaefaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
