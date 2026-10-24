# norm_zeta_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c52aace8-381f-3b76-c21f-c1333fdd3879",
  "kind": "theorem",
  "lexical_name": "norm_zeta_le",
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
  "slug": "norm-zeta-le--8fb02691abce967ed712256d",
  "source": {
    "blob": "b609cabdb0ee85ab7a1b9a4ec06b2e8cc45313c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fb02691abce967ed712256d727af327affb164447d7152a4cd1aa0218bd0344",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c52aace8-381f-3b76-c21f-c1333fdd3879`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_zeta_le {z : ℂ} {σ δ B : ℝ}
    (hσ : 0 < σ) (hδ : 0 < δ) (hz : σ ≤ z.re)
    (hpole : δ ≤ ‖z - 1‖) (hB : ‖z‖ ≤ B) :
    ‖riemannZeta z‖ ≤ B / δ + B / σ := by
  have hz1 : z ≠ 1 := by
    intro he
    have hh := hpole
    rw [he, sub_self, norm_zero] at hh
    linarith
  rw [zeta_eq_fractional (hσ.trans_le hz) hz1]
  calc
    _ ≤ ‖z / (z - 1)‖ + ‖z * fractionalMellin z‖ := norm_sub_le _ _
    _ = ‖z‖ / ‖z - 1‖ + ‖z‖ * ‖fractionalMellin z‖ := by rw [norm_div, norm_mul]
    _ ≤ B / δ + B / σ := by
      apply add_le_add
      · exact (div_le_div_of_nonneg_left (norm_nonneg z) hδ hpole).trans
          (div_le_div_of_nonneg_right hB hδ.le)
      · calc
          _ ≤ ‖z‖ * (1 / σ) := mul_le_mul_of_nonneg_left
            (fractionalMellin_norm_le hσ hz) (norm_nonneg z)
          _ ≤ B * (1 / σ) := mul_le_mul_of_nonneg_right hB (by positivity)
          _ = B / σ := by ring

/-- Three scalar checks control the entire closed outer disk, not a finite grid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b609cabdb0ee85ab7a1b9a4ec06b2e8cc45313c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
