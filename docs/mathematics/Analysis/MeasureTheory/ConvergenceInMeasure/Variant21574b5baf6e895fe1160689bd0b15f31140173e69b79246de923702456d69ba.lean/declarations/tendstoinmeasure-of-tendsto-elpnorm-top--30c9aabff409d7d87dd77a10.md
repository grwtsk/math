# tendstoInMeasure_of_tendsto_eLpNorm_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:578f992b-cbce-9ebd-a29b-662474c205fe",
  "kind": "theorem",
  "lexical_name": "tendstoInMeasure_of_tendsto_eLpNorm_top",
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
  "slug": "tendstoinmeasure-of-tendsto-elpnorm-top--30c9aabff409d7d87dd77a10",
  "source": {
    "blob": "ea81916c9b9bb173df04ddb5f9933c88f7b9a3de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 441,
    "path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30c9aabff409d7d87dd77a102aadc1f3596783bf51abc2256296377a6fae57e2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:578f992b-cbce-9ebd-a29b-662474c205fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoInMeasure_of_tendsto_eLpNorm_top {E} [SeminormedAddCommGroup E] {f : ι → α → E}
    {g : α → E} {l : Filter ι} (hfg : Tendsto (fun n => eLpNorm (f n - g) ∞ μ) l (𝓝 0)) :
    TendstoInMeasure μ f l g := by
  refine tendstoInMeasure_of_ne_top fun δ hδ hδ_top ↦ ?_
  replace hfg : Tendsto (fun n ↦ essSup (fun x ↦ ‖(f n - g) x‖ₑ) μ) l (𝓝 0) :=
    tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds hfg
      (fun n ↦ by positivity) (fun n ↦ eLpNormEssSup_le_eLpNorm_top)
  rw [ENNReal.tendsto_nhds_zero] at hfg ⊢
  intro ε hε
  specialize hfg (δ / 2) (ENNReal.div_pos_iff.2 ⟨hδ.ne', ENNReal.ofNat_ne_top⟩)
  refine hfg.mono fun n hn => ?_
  simp only [Pi.sub_apply] at *
  have : essSup (fun x : α => ‖f n x - g x‖ₑ) μ < δ :=
    hn.trans_lt (ENNReal.half_lt_self hδ.ne' hδ_top)
  refine ((le_of_eq ?_).trans (ae_lt_of_essSup_lt this).le).trans hε.le
  congr with x
  simp [edist_eq_enorm_sub]

/-- Convergence in Lp implies convergence in measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea81916c9b9bb173df04ddb5f9933c88f7b9a3de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
