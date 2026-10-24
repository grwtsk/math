# logDeriv_completedLSym_one_sub_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0a91077-f42b-3d81-9df4-4491d546b8cb",
  "kind": "theorem",
  "lexical_name": "logDeriv_completedLSym_one_sub_conj",
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
  "slug": "logderiv-completedlsym-one-sub-conj--86452818d01501e209364ee0",
  "source": {
    "blob": "84c70d1e4b5f80d1277d1af74612d069d085396a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 131,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86452818d01501e209364ee04894362c7aab95223b5e8916f04b5dbeabd781a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0a91077-f42b-3d81-9df4-4491d546b8cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_completedLSym_one_sub_conj (hq : 1 < q) (hprim : χ.IsPrimitive) (s : ℂ) :
    logDeriv (completedLSym χ) (1 - conj s) = -conj (logDeriv (completedLSym χ) s) := by
  have hχ1 := ne_one_of_primitive hq hprim
  -- from the functional equation, as an identity of functions of w
  have hcomp : (completedLSym χ) ∘ (fun u : ℂ => 1 - u) = fun w => rootNumber χ * completedLSym χ⁻¹ w := by
    funext w; exact completedLSym_one_sub hprim w
  have hd : DifferentiableAt ℂ (completedLSym χ) (1 - conj s) := differentiable_completedLSym hχ1 _
  have hg : DifferentiableAt ℂ (fun u : ℂ => 1 - u) (conj s) :=
    (differentiableAt_const _).sub differentiableAt_id
  have key := logDeriv_comp (x := conj s) hd hg
  rw [hcomp, logDeriv_const_mul _ _ (rootNumber_ne_zero hq hprim),
    logDeriv_completedLSym_inv_conj hq hχ1] at key
  have hderiv : deriv (fun u : ℂ => 1 - u) (conj s) = -1 := by
    rw [deriv_const_sub, deriv_id'']
  rw [hderiv] at key
  -- key : conj (logDeriv Λ_sym s) = logDeriv Λ_sym (1 - conj s) * (-1)
  linear_combination key

/-! ## Continuity of Λ_sym'/Λ_sym at good heights -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84c70d1e4b5f80d1277d1af74612d069d085396a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
