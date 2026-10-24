# norm_lower_from_quadratic_enclosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02d0dcab-acb7-0408-c910-dc9c020be24e",
  "kind": "lemma",
  "lexical_name": "norm_lower_from_quadratic_enclosure",
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
  "slug": "norm-lower-from-quadratic-enclosure--a1253ca9f862e06ee331bf87",
  "source": {
    "blob": "97dc2829e0bfede0def62dbb44e315d40fadf53e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1253ca9f862e06ee331bf87d050f4239610b46a55adbddd059ac955220b1e1c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02d0dcab-acb7-0408-c910-dc9c020be24e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_lower_from_quadratic_enclosure {s v : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re)
    (he : ‖v - reference s‖ ≤ (91 / 1200 : ℝ) * ‖s + 2‖ * ‖s + 3‖) :
    (21 / 320 : ℝ) ≤ ‖v‖ := by
  have h2 : (5 / 2 : ℝ) ≤ ‖s + 2‖ := by
    have h := Complex.re_le_norm (s + 2)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have h3 : (7 / 2 : ℝ) ≤ ‖s + 3‖ := by
    have h := Complex.re_le_norm (s + 3)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have hprod : (35 / 4 : ℝ) ≤ ‖s + 2‖ * ‖s + 3‖ := by
    have h := mul_le_mul h2 h3 (by norm_num : (0 : ℝ) ≤ 7 / 2) (norm_nonneg _)
    norm_num at h
    exact h
  have hn : ‖reference s‖ = ‖s + 2‖ * ‖s + 3‖ / 12 := by
    norm_num [reference, norm_div, norm_mul]
  have htri : ‖reference s‖ ≤ ‖v‖ + ‖v - reference s‖ := by
    calc
      _ = ‖v - (v - reference s)‖ := by congr 1; ring
      _ ≤ _ := norm_sub_le _ _
  rw [hn] at htri
  have hgap : (3 / 400 : ℝ) * (‖s + 2‖ * ‖s + 3‖) ≤ ‖v‖ := by nlinarith
  calc
    (21 / 320 : ℝ) = (3 / 400) * (35 / 4) := by norm_num
    _ ≤ (3 / 400 : ℝ) * (‖s + 2‖ * ‖s + 3‖) :=
      mul_le_mul_of_nonneg_left hprod (by norm_num)
    _ ≤ _ := hgap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97dc2829e0bfede0def62dbb44e315d40fadf53e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
