# squarefreeWeightSum_subtract_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55d07658-6dfb-bbb5-8240-9f2752d89cc5",
  "kind": "theorem",
  "lexical_name": "squarefreeWeightSum_subtract_four",
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
  "slug": "squarefreeweightsum-subtract-four--641e0729da154d1e472da298",
  "source": {
    "blob": "5388826d5112797c622ec2c364ba65acc3289eba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:641e0729da154d1e472da2983aaca0cf19434307e7ed7605e7412016be8e76a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55d07658-6dfb-bbb5-8240-9f2752d89cc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefreeWeightSum_subtract_four (N : Nat) :
    squarefreeWeightSum N <=
      reciprocalSqrtSum N - reciprocalSqrtSum (N / 4) / 2 := by
  classical
  let T := Finset.Icc 1 N
  let V := (Finset.Icc 1 (N / 4)).image (fun (j : Nat) => (4 * j : Nat))
  have hVT : V ⊆ T := multiples_four_subset N
  have hzero : (V.sum fun d =>
      abs ((ArithmeticFunction.moebius d : Int) : Real) / Real.sqrt (d : Real)) = 0 := by
    apply Finset.sum_eq_zero
    intro d hd
    obtain ⟨j, hj, rfl⟩ := Finset.mem_image.mp hd
    rw [mobius_four_mul_zero]
    simp
  have hm : squarefreeWeightSum N <=
      ((T \ V).sum fun (d : Nat) => 1 / Real.sqrt (d : Real)) := by
    unfold squarefreeWeightSum
    change (T.sum fun d => abs ((ArithmeticFunction.moebius d : Int) : Real) /
      Real.sqrt (d : Real)) <= _
    rw [← Finset.sum_sdiff hVT, hzero, add_zero]
    apply Finset.sum_le_sum
    intro d hd
    have hab : abs ((ArithmeticFunction.moebius d : Int) : Real) <= 1 := by
      exact_mod_cast ArithmeticFunction.abs_moebius_le_one (n := d)
    exact div_le_div_of_nonneg_right hab (Real.sqrt_nonneg _)
  have he : ((T \ V).sum fun (d : Nat) => 1 / Real.sqrt (d : Real)) =
      reciprocalSqrtSum N - reciprocalSqrtSum (N / 4) / 2 := by
    have h := Finset.sum_sdiff hVT (f := fun (d : Nat) => 1 / Real.sqrt (d : Real))
    have hv := reciprocal_four_sum N
    change (V.sum fun (d : Nat) => 1 / Real.sqrt (d : Real)) = _ at hv
    unfold reciprocalSqrtSum at *
    linarith
  exact hm.trans_eq he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5388826d5112797c622ec2c364ba65acc3289eba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
