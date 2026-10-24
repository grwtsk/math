# hasFTaylorSeriesUpTo_iteratedFDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:906fd0b2-928a-6df5-f6c9-88660554fd1d",
  "kind": "theorem",
  "lexical_name": "hasFTaylorSeriesUpTo_iteratedFDeriv",
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
  "slug": "hasftaylorseriesupto-iteratedfderiv--a46292172dc32a9daefa6253",
  "source": {
    "blob": "a2a1b62436fc49c1e81f0064db010828b4774ac6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 795,
    "line": 745,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant5d7907353e4db1dacf0ed9efb99f1e0140a3b64496c7582a9131660950aacab0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a46292172dc32a9daefa6253a9182aa06a03a939ac1787d6fb70bd2ca29978e2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant5d7907353e4db1dacf0ed9efb99f1e0140a3b64496c7582a9131660950aacab0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:906fd0b2-928a-6df5-f6c9-88660554fd1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 745–795.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFTaylorSeriesUpTo_iteratedFDeriv :
    HasFTaylorSeriesUpTo ⊤ f (fun v n ↦ f.iteratedFDeriv n v) := by
  classical
  constructor
  · simp [ContinuousMultilinearMap.iteratedFDeriv]
  · rintro n - x
    suffices H : curryLeft (f.iteratedFDeriv (Nat.succ n) x) = (∑ e : Fin n ↪ ι,
          ((iteratedFDerivComponent f e.toEquivRange).linearDeriv
            (Pi.compRightL 𝕜 _ Subtype.val x)) ∘L (Pi.compRightL 𝕜 _ Subtype.val)) by
      have A : HasFDerivAt (f.iteratedFDeriv n) (∑ e : Fin n ↪ ι,
          ((iteratedFDerivComponent f e.toEquivRange).linearDeriv (Pi.compRightL 𝕜 _ Subtype.val x))
            ∘L (Pi.compRightL 𝕜 _ Subtype.val)) x := by
        apply HasFDerivAt.fun_sum (fun s _hs ↦ ?_)
        exact (ContinuousMultilinearMap.hasFDerivAt _ _).comp x (ContinuousLinearMap.hasFDerivAt _)
      rwa [← H] at A
    ext v m
    simp only [ContinuousMultilinearMap.iteratedFDeriv, curryLeft_apply, sum_apply,
      iteratedFDerivComponent_apply, Finset.univ_sigma_univ,
      Pi.compRightL_apply, _root_.sum_apply, ContinuousLinearMap.comp_apply, linearDeriv_apply,
      Finset.sum_sigma']
    rw [← (Equiv.embeddingFinSucc n ι).sum_comp]
    congr with e
    congr with k
    by_cases hke : k ∈ Set.range e
    · simp only [hke, ↓reduceDIte]
      split_ifs with hkf
      · simp only [← Equiv.succ_embeddingFinSucc_fst_symm_apply e hkf hke, Fin.cons_succ]
      · obtain rfl : k = e 0 := by
          rcases hke with ⟨j, rfl⟩
          simpa using hkf
        simp only [Function.Embedding.toEquivRange_symm_apply_self, Fin.cons_zero, Function.update,
          Pi.compRightL_apply]
        split_ifs with h
        · congr!
        · exfalso
          apply h
          simp_rw [← Equiv.embeddingFinSucc_snd e]
    · have hkf : k ∉ Set.range (Equiv.embeddingFinSucc n ι e).1 := by
        contrapose hke
        rw [Equiv.embeddingFinSucc_fst] at hke
        exact Set.range_comp_subset_range _ _ hke
      simp only [hke, hkf, ↓reduceDIte, Pi.compRightL,
        ContinuousLinearMap.coe_mk', LinearMap.coe_mk, AddHom.coe_mk]
      rw [Function.update_of_ne]
      contrapose hke
      rw [show k = _ from Subtype.ext_iff.1 hke, Equiv.embeddingFinSucc_snd e]
      exact Set.mem_range_self _
  · rintro n -
    apply continuous_finsetSum _ (fun e _ ↦ ?_)
    exact (ContinuousMultilinearMap.coe_continuous _).comp (ContinuousLinearMap.continuous _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant5d7907353e4db1dacf0ed9efb99f1e0140a3b64496c7582a9131660950aacab0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant5d7907353e4db1dacf0ed9efb99f1e0140a3b64496c7582a9131660950aacab0.lean#L745).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a1b62436fc49c1e81f0064db010828b4774ac6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
