# extDerivWithin_apply_vectorField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3df0ba5d19add3c8a4cbcaa6761efc85d53cdacb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57bd3428d4d3d9bc029a75bb0e581e2461081ac42f3b3947e714dc36aa9e09de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d0cb7b5-5439-607d-e4c1-377797225014",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74febe5c-c5d0-5530-0027-c52f5f12852b",
  "kind": "theorem",
  "lexical_name": "extDerivWithin_apply_vectorField",
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
  "slug": "extderivwithin-apply-vectorfield--d457a3c510d6ef0a4c2b9600",
  "source": {
    "blob": "3df0ba5d19add3c8a4cbcaa6761efc85d53cdacb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant57bd3428d4d3d9bc029a75bb0e581e2461081ac42f3b3947e714dc36aa9e09de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d457a3c510d6ef0a4c2b960092995a37707e8d712bad8435be734b12afd95c4d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant57bd3428d4d3d9bc029a75bb0e581e2461081ac42f3b3947e714dc36aa9e09de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74febe5c-c5d0-5530-0027-c52f5f12852b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extDerivWithin_apply_vectorField
    {ω : E → E [⋀^Fin (n + 1)]→L[𝕜] F} {V : Fin (n + 2) → E → E}
    (hω : DifferentiableWithinAt 𝕜 ω s x) (hV : ∀ i, DifferentiableWithinAt 𝕜 (V i) s x)
    (hsx : UniqueDiffWithinAt 𝕜 s x) :
    extDerivWithin ω s x (V · x) =
      (∑ i, (-1) ^ i.val • fderivWithin 𝕜 (fun x ↦ ω x (i.removeNth (V · x))) s x (V i x)) -
        ∑ i : Fin (n + 1), ∑ j ≥ i,
          (-1) ^ (i + j : ℕ) •
            ω x (Matrix.vecCons (lieBracketWithin 𝕜 (V i.castSucc) (V j.succ) s x)
              (j.removeNth <| i.castSucc.removeNth (V · x))) := by
  have H₀ (i : Fin (n + 2)) (j : Fin (n + 1)) :
      DifferentiableWithinAt 𝕜 (fun y ↦ i.removeNth (V · y) j) s x := hV ..
  symm
  simp only [extDerivWithin_apply,
    fderivWithin_continuousAlternatingMap_apply_const_apply,
    fderivWithin_continuousAlternatingMap_apply_apply hω (H₀ _) hsx, *,
    smul_add, sum_add_distrib, add_sub_assoc, add_eq_left, sub_eq_zero, smul_sum]
  rw [Fin.sum_sum_eq_sum_triangle_add]
  refine Fintype.sum_congr _ _ fun i ↦ sum_congr rfl fun j hj ↦ ?_
  rw [mem_Ici] at hj
  simp only [← Fin.insertNth_removeNth, map_insertNth]
  rw [Fin.removeNth_removeNth_eq_swap]
  have H₁ : i.castSucc.succAbove j = j.succ := by simp [Fin.succAbove_of_le_castSucc, hj]
  have H₂ : j.predAbove i.castSucc = i := by simp [Fin.predAbove_of_le_castSucc, hj]
  have H₃ : j.succ.succAbove i = i.castSucc := by simp [Fin.succAbove_of_castSucc_lt, hj]
  simp +unfoldPartialApp [pow_add, lieBracketWithin, mul_smul, smul_comm ((-1) ^ (j : ℕ)), smul_sub,
      ← sub_eq_add_neg, H₁, H₂, H₃, Fin.removeNth]

/--
If `ω` is a differentiable `(n + 1)`-form and `V i` are `n + 2` differentiable vector fields, then

$$
  dω(V_0(x), \dots, V_{n + 1}(x)) =
    \sum_{i=0}^{n + 1} (-1)^i •
      D_x\left(ω\big(x; V_0(x), \dots, \widehat{V_i(x)}, \dots, V_{n + 1}(x)\big)\right)(V_i(x)) -
      \sum_{0 \le i \le j\le n} (-1)^{i + j}
        ω\big(x; [V_i, V_{j + 1}](x),
          V_0(x), …, \widehat{V_i(x)}, …, \widehat{V_{j + 1}(x)}, …, V_k(x)\big),
$$

where $[V_i, V_{j + 1}]$ is the commutator of the vector fields $V_i$ and $V_{j + 1}$.
As usual, $\widehat{V_i(x)}$ means that this item is removed from the sequence.

In informal texts, this formula is usually written as

$$
  dω(V_0(x), \dots, V_{n + 1}(x)) =
    \sum_{i=0}^{n + 1} (-1)^i •
      D_x\left(ω\big(x; V_0(x), \dots, \widehat{V_i(x)}, \dots, V_{n + 1}(x)\big)\right)(V_i(x)) -
      \sum_{0 \le i < j\le n + 1} (-1)^{i + j}
        ω\big(x; [V_i, V_j](x),
          V_0(x), …, \widehat{V_i(x)}, …, \widehat{V_j(x)}, …, V_k(x)\big).
$$

In the sum from our formalization,
each index `(i, j)` corresponds to the index `(Fin.castSucc i, Fin.succ j)`
in the sum used in informal texts.

For this reason, `i + j` in our sum has the opposite parity compared to informal texts,
which changes the sign before the sum from `+` to `-`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant57bd3428d4d3d9bc029a75bb0e581e2461081ac42f3b3947e714dc36aa9e09de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant57bd3428d4d3d9bc029a75bb0e581e2461081ac42f3b3947e714dc36aa9e09de.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3df0ba5d19add3c8a4cbcaa6761efc85d53cdacb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
