# hasSum_intervalIntegral_of_summable_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e613e4b2-38fb-e266-ff73-30c81fa7aae7",
  "kind": "theorem",
  "lexical_name": "hasSum_intervalIntegral_of_summable_norm",
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
  "slug": "hassum-intervalintegral-of-summable-norm--cbda9058b57845e3067e294e",
  "source": {
    "blob": "2fdb626dcfd6a29fc42271275f776c0e0af4969d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 250,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbda9058b57845e3067e294e59c4b516e9a0d7a7cca792e008ef7c44c8af24aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e613e4b2-38fb-e266-ff73-30c81fa7aae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_intervalIntegral_of_summable_norm [Countable ι] {f : ι → C(ℝ, E)}
    (hf_sum : Summable fun i : ι => ‖(f i).restrict (⟨uIcc a b, isCompact_uIcc⟩ : Compacts ℝ)‖) :
    HasSum (fun i : ι => ∫ x in a..b, f i x) (∫ x in a..b, ∑' i : ι, f i x) := by
  by_cases hE : CompleteSpace E; swap
  · simp [intervalIntegral, integral, hE, hasSum_zero]
  apply hasSum_integral_of_dominated_convergence
    (fun i (x : ℝ) => ‖(f i).restrict ↑(⟨uIcc a b, isCompact_uIcc⟩ : Compacts ℝ)‖)
    (fun i => (map_continuous <| f i).aestronglyMeasurable)
  · intro i; filter_upwards with x hx
    apply ContinuousMap.norm_coe_le_norm ((f i).restrict _) ⟨x, _⟩
    exact ⟨hx.1.le, hx.2⟩
  · exact ae_of_all _ fun x _ => hf_sum
  · exact intervalIntegrable_const
  · refine ae_of_all _ fun x hx => Summable.hasSum ?_
    let x : (⟨uIcc a b, isCompact_uIcc⟩ : Compacts ℝ) := ⟨x, ⟨hx.1.le, hx.2⟩⟩
    have := hf_sum.of_norm
    simpa only [Compacts.coe_mk, ContinuousMap.restrict_apply]
      using ContinuousMap.summable_apply this x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fdb626dcfd6a29fc42271275f776c0e0af4969d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
