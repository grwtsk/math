# zeta_growth_quarter_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f761b768-b821-c7e5-19eb-28c01eee5cfd",
  "kind": "theorem",
  "lexical_name": "zeta_growth_quarter_explicit",
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
  "slug": "zeta-growth-quarter-explicit--b493652d1431690137af05b7",
  "source": {
    "blob": "8a53c155d9d22710a053a3573734ed409642ac61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b493652d1431690137af05b7c2bfdda4f37770177f06e470302c5b591c3adc78",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f761b768-b821-c7e5-19eb-28c01eee5cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_growth_quarter_explicit {s : ℂ} (h₁ : (1/4 : ℝ) ≤ s.re) (h₃ : 1 ≤ |s.im|) :
    ‖riemannZeta s‖ ≤ (13/2) * |s.im| := by
  have h := Zeta23.RvM.riemannZeta_linear_growth (δ := 1/4) (by norm_num) h₁ h₃
  have : (5/2 + ((1:ℝ)/4)⁻¹) = (13/2 : ℝ) := by norm_num
  rwa [this] at h

/-! ## E1b: the partial fraction with fully numeric constant
`zeta_logDeriv_partial_fraction_explicit` is the forall-form of
Zeta23.WeilEF.zeta_logDeriv_partial_fraction (Landau.lean) with constant 135000000: the same
proof body with the growth input specialized to A := 1, C0 := 13/2 (from
zeta_growth_quarter_explicit, `simpa [Real.rpow_one]`), so A' = max 1 0 = 1, C0 + 2 = 17/2,
and the final numeric fold
  (44795000*50/91)*(log 3 + log (17/2) + 1 + 1) <= 135000000
via log 3 <= 9/8 (3 <= e^(9/8): e*e^(1/8) >= 2.7182818*(1+1/8) = 3.058, add_one_le_exp),
log (17/2) <= log 9 = 2*log 3 <= 9/4; sum <= 43/8; 24612638*43/8 <= 132293000.
-/

set_option maxHeartbeats 1600000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a53c155d9d22710a053a3573734ed409642ac61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
