# finite_term_projection_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fe88982-2a22-3d06-822b-7b8b3149d513",
  "kind": "theorem",
  "lexical_name": "finite_term_projection_nonneg",
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
  "slug": "finite-term-projection-nonneg--76e597e5e8ed481d11e1f1a2",
  "source": {
    "blob": "4cd6102f617274562526f661bb7469777a9e2616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76e597e5e8ed481d11e1f1a24579995821492984a718a6fcccdf7e32973fdcb8",
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

Occurrence: `result:2fe88982-2a22-3d06-822b-7b8b3149d513`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_term_projection_nonneg {s : ℂ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (11 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (12 : ℝ)) :
    0 ≤ ((power s*coefficient s)*(starRingEnd ℂ) (s-1)).re := by
  have hy := twelve_height_squares hlo hhi
  have hc := TwelveHeightCertificate.bounds hx hx1 hy.1 hy.2
  have he := coefficient_projection s
  let q : ℝ := projectionSlope s.re (s.im^2)/967680
  have hq0 : 0 ≤ projectionSlope s.re (s.im^2) := by nlinarith [hc.1, hc.2.1]
  have hp : 0 ≤ (coefficient s*(starRingEnd ℂ) (s-1)).re := by nlinarith [hc.1, he.1]
  have hq : 0 ≤ q := by dsimp only [q]; positivity
  have hcone : 7*(coefficient s*(starRingEnd ℂ) (s-1)).re ≤ 132*q := by
    dsimp only [q]
    nlinarith [he.1, hc.2.1]
  have him : (coefficient s*(starRingEnd ℂ) (s-1)).im = s.im*q := by
    dsimp only [q]
    nlinarith [he.2]
  have hphase := Phase.cone_nonneg hp hq hcone hlo hhi
  rw [mul_assoc, Complex.mul_re, Phase.power_re, Phase.power_im, him]
  calc
    _ = Real.exp (-s.re*Real.log 2) *
        (Real.cos (s.im*Real.log 2)*(coefficient s*(starRingEnd ℂ) (s-1)).re +
          s.im*Real.sin (s.im*Real.log 2)*q) := by ring
    _ ≥ 0 := mul_nonneg (Real.exp_pos _).le hphase

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd6102f617274562526f661bb7469777a9e2616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
