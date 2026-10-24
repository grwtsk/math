# logDeriv_hardyW_eq_of_zeta_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db45599c-da14-a1ac-d8cc-2434ce1320df",
  "kind": "lemma",
  "lexical_name": "logDeriv_hardyW_eq_of_zeta_ne",
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
  "slug": "logderiv-hardyw-eq-of-zeta-ne--8637a40b10952ad6de53966e",
  "source": {
    "blob": "914d33c50b2fa2dc9431a58ebc899c28af675d97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8637a40b10952ad6de53966e1e70cb4f8165932070bfd8b1d416580354154c77",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db45599c-da14-a1ac-d8cc-2434ce1320df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logDeriv_hardyW_eq_of_zeta_ne {s : ℂ} (hs : s.im ≠ 0) (hζ : riemannZeta s ≠ 0) (hG : Gw s ≠ 0) :
    logDeriv hardyW s = logDeriv riemannZeta s + logDeriv Gw s := by
  have hs1 := ne_one_of_im_ne_zero hs
  have hcont : ContinuousAt riemannZeta s := (differentiableAt_riemannZeta hs1).continuousAt
  have hev : hardyW =ᶠ[𝓝 s] fun z => riemannZeta z * Gw z := by
    filter_upwards [hcont.eventually_ne hζ] with z hz
    exact hardyW_eq_zeta_mul hz
  have h1 : logDeriv hardyW s = logDeriv (fun z => riemannZeta z * Gw z) s := by
    rw [logDeriv_apply, logDeriv_apply, hev.deriv_eq, hev.eq_of_nhds]
  rw [h1, logDeriv_mul s hζ hG (differentiableAt_riemannZeta hs1) (Gw_analyticAt hs hζ).differentiableAt]

/-- **the vertical side**: for t₁ from hardyW_two_line_lower and t₁ ≤ T₁ ≤ T₂,
|Im ∫_{T₁}^{T₂} (W′/W)(2+it)·i dt| ≤ 2π. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `914d33c50b2fa2dc9431a58ebc899c28af675d97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
