# deformation_projection_twelveBand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:622be605-1e7a-7a53-ffd6-2b4fe3ace970",
  "kind": "theorem",
  "lexical_name": "deformation_projection_twelveBand",
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
  "slug": "deformation-projection-twelveband--9ded9a2c6cc5e5438a151613",
  "source": {
    "blob": "4cd6102f617274562526f661bb7469777a9e2616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 210,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ded9a2c6cc5e5438a1516130458ebaeb3d6d688e8518121f66408ee383fc70f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:622be605-1e7a-7a53-ffd6-2b4fe3ace970`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deformation_projection_twelveBand {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (11 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (12 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (7/16 : ℝ)*‖s-1‖^2 ≤ (deformation t s*(starRingEnd ℂ) (s-1)).re := by
  have hs := twelve_source_projection hx hx1 hlo hhi
  have heq : (deformation t s*(starRingEnd ℂ) (s-1)).re =
      (1-t)*‖s-1‖^2+t*(poleNormalizedZeta s*(starRingEnd ℂ) (s-1)).re := by
    unfold deformation
    rw [add_mul, Complex.add_re, self_projection]
    rw [mul_assoc, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im]
    rw [sub_mul, Complex.sub_re, self_projection]
    ring
  rw [heq]
  have h1 := mul_le_mul_of_nonneg_left hs ht
  have h2 := mul_nonneg (sub_nonneg.mpr ht1) (sq_nonneg ‖s-1‖)
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd6102f617274562526f661bb7469777a9e2616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
