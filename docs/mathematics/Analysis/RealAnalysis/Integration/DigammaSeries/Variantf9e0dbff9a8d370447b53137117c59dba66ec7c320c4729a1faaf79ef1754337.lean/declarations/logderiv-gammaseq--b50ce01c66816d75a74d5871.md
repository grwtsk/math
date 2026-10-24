# logDeriv_gammaSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f850a6724d3ea807c539e9e8902e7d4e27ce803c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5057d844-dc59-240d-7b10-20aab01c180d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7716d1c5-2cea-4974-5871-b5d8cbb5f1fe",
  "kind": "theorem",
  "lexical_name": "logDeriv_gammaSeq",
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
  "slug": "logderiv-gammaseq--b50ce01c66816d75a74d5871",
  "source": {
    "blob": "f850a6724d3ea807c539e9e8902e7d4e27ce803c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b50ce01c66816d75a74d587160e58da2318ac4e0b7ee53fdd9ad6d374c83bed5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7716d1c5-2cea-4974-5871-b5d8cbb5f1fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_gammaSeq {z : ℂ} (hz : 0 < z.re) {n : ℕ} (hn : n ≠ 0) :
    logDeriv (fun w ↦ Complex.GammaSeq w n) z =
      Complex.log n - ∑ j ∈ Finset.range (n + 1), (z + j)⁻¹ := by
  have hnC : (n : ℂ) ≠ 0 := by exact_mod_cast hn
  have hf : (n.factorial : ℂ) ≠ 0 := by exact_mod_cast n.factorial_ne_zero
  have hp : (∏ j ∈ Finset.range (n + 1), (z + j)) ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr fun j _ ↦ add_nat_ne_zero hz j
  unfold Complex.GammaSeq
  rw [logDeriv_div (f := fun w : ℂ ↦ (n : ℂ) ^ w * n.factorial)
    (g := fun w : ℂ ↦ ∏ j ∈ Finset.range (n + 1), (w + j)) z
    (mul_ne_zero (Complex.cpow_ne_zero_iff.mpr (Or.inl hnC)) hf) hp
    ((differentiableAt_id.const_cpow (Or.inl hnC)).mul_const _)
    (by fun_prop), logDeriv_mul_const _ _ hf]
  rw [logDeriv_prod (fun j _ ↦ add_nat_ne_zero hz j) (by intros; fun_prop)]
  have hder : logDeriv (fun w : ℂ ↦ (n : ℂ) ^ w) z = Complex.log n := by
    rw [logDeriv_apply, (Complex.hasStrictDerivAt_const_cpow (Or.inl hnC)).hasDerivAt.deriv]
    exact mul_div_cancel_left₀ _ (Complex.cpow_ne_zero_iff.mpr (Or.inl hnC))
  rw [hder]
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  simp [logDeriv_apply]

/-- The real reciprocal difference is the source's positive kernel, including `b = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f850a6724d3ea807c539e9e8902e7d4e27ce803c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
