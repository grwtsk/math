# band_shift_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b30c32c8-36e1-8651-7fc2-0e6d1bd814d2",
  "kind": "lemma",
  "lexical_name": "band_shift_norm",
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
  "slug": "band-shift-norm--7a6f8f72a616d9a1a18e702a",
  "source": {
    "blob": "163d8bf9bf46cb3e9d41d04ce14a90aa8d3efc97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 36,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a6f8f72a616d9a1a18e702af6fb561c9d5d8606861488a4d6e3dedbb4763c09",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b30c32c8-36e1-8651-7fc2-0e6d1bd814d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma band_shift_norm {s : ℂ} {j : ℝ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) (hj : -1 ≤ j) (hj1 : j ≤ 4) :
    ‖s+(j : ℂ)‖ ≤ (15 : ℝ) := by
  have hb : |s.re+j| ≤ (5 : ℝ) := abs_le.mpr ⟨by linarith,by linarith⟩
  have hb2 := mul_le_mul hb hb (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 5)
  have ht2 : s.im^2 ≤ (196 : ℝ) := by
    have h := mul_le_mul ht1 ht1 (by linarith : 0 ≤ s.im) (by norm_num : (0 : ℝ) ≤ 14)
    nlinarith
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 15)).mp
  rw [Complex.sq_norm,Complex.normSq_apply]
  simp only [Complex.add_re,Complex.add_im,Complex.ofReal_re,Complex.ofReal_im,add_zero]
  nlinarith [sq_abs (s.re+j)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `163d8bf9bf46cb3e9d41d04ce14a90aa8d3efc97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
