# integrable_phiHat_sq_shift_mul_nucW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d657ac63-56a1-cde6-42e8-ca5e28d8c1db",
  "kind": "lemma",
  "lexical_name": "integrable_phiHat_sq_shift_mul_nucW",
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
  "slug": "integrable-phihat-sq-shift-mul-nucw--ba88d9ec47ad2d00e81f70f8",
  "source": {
    "blob": "4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba88d9ec47ad2d00e81f70f81b1d56113d5f5f23b33e5b83c0568407f3c4314e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d657ac63-56a1-cde6-42e8-ca5e28d8c1db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_phiHat_sq_shift_mul_nucW (hΓ : Zeta23.GammaFacts) (hF : LocalHypsCore cϱ p Fn)
    (cPi : ℝ) (c : ℕ → ℂ) {t : ℝ} (ht : 0 < t) :
    Integrable (fun τ => Fn.phiHat (τ - t) ^ 2 * nucW cPi p.X c τ) := by
  have h := ((mu_part_integrable hΓ hF ht).add ((Pi_part_integrable hF t).const_mul cPi)).add
    (Pc_part_integrable hF c t)
  have h' := h.comp_sub_right t
  refine h'.congr (Eventually.of_forall fun τ => ?_)
  simp only [Pi.add_apply, nucW, add_sub_cancel]
  ring

/-- the full integrand of GentryW ϖ c is integrable (0 < τ_k, τ_l). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
