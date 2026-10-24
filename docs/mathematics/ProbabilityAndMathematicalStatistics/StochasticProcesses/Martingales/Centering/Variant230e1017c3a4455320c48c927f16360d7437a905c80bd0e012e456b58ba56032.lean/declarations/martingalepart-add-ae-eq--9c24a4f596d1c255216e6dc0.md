# martingalePart_add_ae_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0272d846-c279-bfa5-55d1-69b79bf6afe4",
  "kind": "theorem",
  "lexical_name": "martingalePart_add_ae_eq",
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
  "slug": "martingalepart-add-ae-eq--9c24a4f596d1c255216e6dc0",
  "source": {
    "blob": "6b661578e33ef4373fe78bd6ac267b7d1a4296d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 225,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant230e1017c3a4455320c48c927f16360d7437a905c80bd0e012e456b58ba56032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c24a4f596d1c255216e6dc096db8bcf7cf7f28e2bb2534be7630728148fd467",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant230e1017c3a4455320c48c927f16360d7437a905c80bd0e012e456b58ba56032.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0272d846-c279-bfa5-55d1-69b79bf6afe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem martingalePart_add_ae_eq [CompleteSpace E] [SigmaFiniteFiltration μ ℱ] {f g : ℕ → Ω → E}
    (hf : Martingale f ℱ μ) (hg : StronglyAdapted ℱ fun n => g (n + 1)) (hg0 : g 0 = 0)
    (hgint : ∀ n, Integrable (g n) μ) (n : ℕ) : martingalePart (f + g) ℱ μ n =ᵐ[μ] f n := by
  set h := f - martingalePart (f + g) ℱ μ with hhdef
  have hh : h = predictablePart (f + g) ℱ μ - g := by
    rw [hhdef, sub_eq_sub_iff_add_eq_add, add_comm (predictablePart (f + g) ℱ μ),
      martingalePart_add_predictablePart]
  have hhpred : StronglyAdapted ℱ fun n => h (n + 1) := by
    rw [hh]
    exact stronglyAdapted_predictablePart.sub hg
  have := (IsStronglyPredictable.of_measurable_add_one (hg0.symm ▸ stronglyMeasurable_zero) hg)
  have hhmgle : Martingale h ℱ μ := hf.sub (martingale_martingalePart
    (hf.stronglyAdapted.add this.stronglyAdapted) fun n => (hf.integrable n).add <| hgint n)
  refine (eventuallyEq_iff_sub.2 ?_).symm
  filter_upwards [hhmgle.eq_zero_of_predictable hhpred n] with ω hω
  unfold h at hω
  rw [Pi.sub_apply] at hω
  rw [hω, Pi.sub_apply, martingalePart]
  simp [hg0]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant230e1017c3a4455320c48c927f16360d7437a905c80bd0e012e456b58ba56032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant230e1017c3a4455320c48c927f16360d7437a905c80bd0e012e456b58ba56032.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b661578e33ef4373fe78bd6ac267b7d1a4296d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
