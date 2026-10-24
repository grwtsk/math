# two_mul_sum_mult_one_sub_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43a5e459-26b0-07e8-4c9e-b8834b18fafd",
  "kind": "theorem",
  "lexical_name": "two_mul_sum_mult_one_sub_re",
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
  "slug": "two-mul-sum-mult-one-sub-re--8bf25e67a56a2e79081b2b05",
  "source": {
    "blob": "a0f7bda568b05342598acbd68ddba122a04e5816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 397,
    "path": "GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bf25e67a56a2e79081b2b05b3be2b4793e94026291538d91ff56ba00c306276",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43a5e459-26b0-07e8-4c9e-b8834b18fafd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_mul_sum_mult_one_sub_re (T : ℝ) :
    2 * ∑ ρ ∈ (finite_absWindow T).toFinset, (zeroMult ρ : ℝ) * (1 - ρ.re) = (NT T : ℝ) := by
  rw [two_mul]
  nth_rewrite 2 [sum_mult_one_sub_re]
  rw [← Finset.sum_add_distrib, NT, Nat.cast_sum]
  exact Finset.sum_congr rfl (fun ρ _ => by ring)

/-- Re ξ′/ξ(σ+it) ≥ N_T/(8t²) for 1 ≤ σ ≤ 2 and |t| ≥ max(2, 2T). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f7bda568b05342598acbd68ddba122a04e5816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
