# regularizedHGFunCoeff_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:686fa8d1-695b-c99b-8ac1-4fdd109c1236",
  "kind": "theorem",
  "lexical_name": "regularizedHGFunCoeff_add_one",
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
  "slug": "regularizedhgfuncoeff-add-one--16a033a6a43b7a488a1e0fc8",
  "source": {
    "blob": "38bfa10e46f812e298907e324621ca5c50f169e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16a033a6a43b7a488a1e0fc809951f491c9934f5fd19a79f30dbfe9106f53245",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:686fa8d1-695b-c99b-8ac1-4fdd109c1236`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularizedHGFunCoeff_add_one (hb : ∀ k ∈ b, k ≠ -n) :
    regularizedHGFunCoeff a b (n + 1) = regularizedHGFunCoeff a b n *
      ((a.map (· + (n : ℂ))).prod / ((b.map (· + (n : ℂ))).prod  * (n + 1))) := calc
  _ = (a.map fun i ↦ ((ascPochhammer ℂ n).eval i) * (i + n)).prod /
      (n ! * (n + 1) * (b.map fun j ↦ Gamma (j + n) * (j + n)).prod) := by
    unfold regularizedHGFunCoeff
    congrm ((a.map ?_).prod / (?_ * Multiset.prod ?_))
    · ext j
      simp [ascPochhammer_succ_right]
    · rw [Nat.factorial_succ]
      grind
    · refine Multiset.map_congr rfl (fun j hj ↦ ?_)
      simp only [Nat.cast_add, Nat.cast_one, ← add_assoc]
      grind
  _ = _ := by
    unfold regularizedHGFunCoeff
    simp_rw [div_mul_div_comm, Multiset.prod_map_mul]
    ring

/-- Recursion formula for the coefficients of the hypergeometric series.

This is mainly used to calculate the convergence radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38bfa10e46f812e298907e324621ca5c50f169e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
