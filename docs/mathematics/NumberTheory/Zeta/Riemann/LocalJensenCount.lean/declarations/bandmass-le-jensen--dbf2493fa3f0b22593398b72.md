# bandMass_le_jensen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02205967-6698-67fa-9f01-63b285c0e32c",
  "kind": "theorem",
  "lexical_name": "bandMass_le_jensen",
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
  "slug": "bandmass-le-jensen--dbf2493fa3f0b22593398b72",
  "source": {
    "blob": "1ce3a8ed8e9ca331ececc848c9f9b0e912015791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 144,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/LocalJensenCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbf2493fa3f0b22593398b7297e2506e3c468dd89747431540edb40ff4c7acce",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/LocalJensenCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02205967-6698-67fa-9f01-63b285c0e32c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bandMass_le_jensen (N : ℕ) (hN : 2 ≤ N) (Mplus Mminus : ℝ)
    (hMp : 1 ≤ Mplus) (hMm : 1 ≤ Mminus)
    (hp : ∀ z ∈ sphere (upperCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ Mplus)
    (hm : ∀ z ∈ sphere (lowerCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ Mminus) :
    (bandMass N : ℝ) ≤
      (Real.log (Mplus / ‖riemannZeta (upperCenter N)‖) +
        Real.log (Mminus / ‖riemannZeta (lowerCenter N)‖)) / Real.log (6 / 5 : ℝ) := by
  classical
  let Splus := (heightBand N).filter (fun z : ZeroPoint => 0 ≤ z.1.im)
  let Sminus := (heightBand N).filter (fun z : ZeroPoint => ¬ 0 ≤ z.1.im)
  have hp' := canonical_subfamily_jensen (upperCenter N) Mplus hMp
    (analytic_zeta_upper_disk N hN) (upper_center_ne_zero N) hp Splus
    (fun z hz => band_point_upper N z (Finset.mem_filter.mp hz).1 (Finset.mem_filter.mp hz).2)
  have hm' := canonical_subfamily_jensen (lowerCenter N) Mminus hMm
    (analytic_zeta_lower_disk N hN) (lower_center_ne_zero N) hm Sminus
    (fun z hz => band_point_lower N z (Finset.mem_filter.mp hz).1
      (lt_of_not_ge (Finset.mem_filter.mp hz).2))
  have hsplit : (bandMass N : ℝ) =
      (∑ z ∈ Splus, (multiplicity z : ℝ)) + ∑ z ∈ Sminus, (multiplicity z : ℝ) := by
    simp only [bandMass, Nat.cast_sum, Splus, Sminus, Finset.sum_filter]
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro z hz
    by_cases hi : 0 ≤ z.1.im <;> simp [hi]
  rw [hsplit, add_div]
  exact add_le_add hp' hm'

/-- A common source modulus ceiling and positive anchor floor produce a scalar local-count bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/LocalJensenCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/LocalJensenCount.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ce3a8ed8e9ca331ececc848c9f9b0e912015791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
