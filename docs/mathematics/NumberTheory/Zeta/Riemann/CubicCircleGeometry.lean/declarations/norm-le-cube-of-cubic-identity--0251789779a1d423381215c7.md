# norm_le_cube_of_cubic_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2229cb12-a559-0519-aba2-712009b94f5c",
  "kind": "theorem",
  "lexical_name": "norm_le_cube_of_cubic_identity",
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
  "slug": "norm-le-cube-of-cubic-identity--0251789779a1d423381215c7",
  "source": {
    "blob": "de4d3fc751818d5e38ae5a391dc7add991016d63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 85,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0251789779a1d423381215c78ceb865d73ee7d574e9eca21d84fbe5caef01243",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2229cb12-a559-0519-aba2-712009b94f5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_le_cube_of_cubic_identity (s value R : ℂ) (v : ℝ) (hv : 4 ≤ v)
    (hi : ‖(s - 1)⁻¹‖ ≤ 2) (h₀ : ‖s‖ ≤ 3 * v)
    (h₁ : ‖s + 1‖ ≤ 3 * v) (h₂ : ‖s + 2‖ ≤ 3 * v)
    (hR : ‖R‖ ≤ 1 / 48)
    (he : value = (s - 1)⁻¹ + 1 / 2 + s / 12 - s * (s + 1) * (s + 2) * R) :
    ‖value‖ ≤ v ^ 3 := by
  have hv0 : 0 ≤ v := by linarith
  have hp : ‖s * (s + 1) * (s + 2) * R‖ ≤ (9 / 16) * v ^ 3 := by
    simp only [norm_mul]
    calc
      _ ≤ (3 * v) * (3 * v) * (3 * v) * (1 / 48) := by gcongr
      _ = _ := by ring
  have hs12 : ‖s / 12‖ ≤ v / 4 := by
    rw [norm_div]
    norm_num only [Complex.norm_ofNat]
    linarith
  rw [he]
  have ht := (norm_sub_le ((s - 1)⁻¹ + 1 / 2 + s / 12)
    (s * (s + 1) * (s + 2) * R)).trans
      (add_le_add_left ((norm_add_le ((s - 1)⁻¹ + 1 / 2) (s / 12)).trans
        (add_le_add_left (norm_add_le ((s - 1)⁻¹) (1 / 2)) _)) _)
  norm_num only [norm_div, norm_one, Complex.norm_ofNat] at ht
  exact (show ‖(s - 1)⁻¹ + 1 / 2 + s / 12 - s * (s + 1) * (s + 2) * R‖ ≤
    5 / 2 + v / 4 + (9 / 16) * v ^ 3 by linarith).trans (scalar_cubic_budget v hv)

end
end GRWTSK.RiemannHypothesis.CubicCircleGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de4d3fc751818d5e38ae5a391dc7add991016d63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
