# integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b99cd72-a3cc-72bf-1b58-794f17f6bd76",
  "kind": "lemma",
  "lexical_name": "integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable_aux1",
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
  "slug": "integral-bilinear-haslinederivat-right-eq-neg-left-of-integrable-aux1--0dacdf96dccdbdf5f0f436b0",
  "source": {
    "blob": "676329355ecfbd25655d6a877de6193d3cee275a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dacdf96dccdbdf5f0f436b06343ec8cf3ce764ecbc547e42a90237c86c349f7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b99cd72-a3cc-72bf-1b58-794f17f6bd76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable_aux1 [SigmaFinite μ]
    {f f' : E × ℝ → F} {g g' : E × ℝ → G} {B : F →L[ℝ] G →L[ℝ] W}
    (hf'g : Integrable (fun x ↦ B (f' x) (g x)) (μ.prod volume))
    (hfg' : Integrable (fun x ↦ B (f x) (g' x)) (μ.prod volume))
    (hfg : Integrable (fun x ↦ B (f x) (g x)) (μ.prod volume))
    (hf : ∀ x, HasLineDerivAt ℝ f (f' x) x (0, 1)) (hg : ∀ x, HasLineDerivAt ℝ g (g' x) x (0, 1)) :
    ∫ x, B (f x) (g' x) ∂(μ.prod volume) = - ∫ x, B (f' x) (g x) ∂(μ.prod volume) := calc
  ∫ x, B (f x) (g' x) ∂(μ.prod volume)
    = ∫ x, (∫ t, B (f (x, t)) (g' (x, t))) ∂μ := integral_prod _ hfg'
  _ = ∫ x, (- ∫ t, B (f' (x, t)) (g (x, t))) ∂μ := by
    apply integral_congr_ae
    filter_upwards [hf'g.prod_right_ae, hfg'.prod_right_ae, hfg.prod_right_ae]
      with x hf'gx hfg'x hfgx
    apply integral_bilinear_hasDerivAt_right_eq_neg_left_of_integrable ?_ ?_ hfg'x hf'gx hfgx
    · intro t
      convert (hf (x, t)).scomp_of_eq t ((hasDerivAt_id t).add (hasDerivAt_const t (-t))) (by simp)
        <;> simp
    · intro t
      convert (hg (x, t)).scomp_of_eq t ((hasDerivAt_id t).add (hasDerivAt_const t (-t))) (by simp)
        <;> simp
  _ = - ∫ x, B (f' x) (g x) ∂(μ.prod volume) := by rw [integral_neg, integral_prod _ hf'g]

variable [BorelSpace E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant2c42c1016389d7140ce734ef5a403e76914cd3f856c890e8b9c43ba9623d03e1.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `676329355ecfbd25655d6a877de6193d3cee275a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
