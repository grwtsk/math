# rootSet_derivative_subset_convexHull_rootSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a83a62c-6350-e8d9-5c2d-0e0c0d225c76",
  "kind": "theorem",
  "lexical_name": "rootSet_derivative_subset_convexHull_rootSet",
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
  "slug": "rootset-derivative-subset-convexhull-rootset--15f898759fd8cfdb23d90ca3",
  "source": {
    "blob": "00d686f09dabb5812a59aee8fc87c51a18eb11cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussLucas/Variantf25415906ece5ef37e504aef6df397c05b2c0f10cb1b2b026c2b21703507edb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15f898759fd8cfdb23d90ca3e79a84f87a7f147d4b33485391f5f11aabdb7eca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussLucas/Variantf25415906ece5ef37e504aef6df397c05b2c0f10cb1b2b026c2b21703507edb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a83a62c-6350-e8d9-5c2d-0e0c0d225c76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootSet_derivative_subset_convexHull_rootSet (h₀ : 0 < P.degree) :
    P.derivative.rootSet ℂ ⊆ convexHull ℝ (P.rootSet ℂ) := by
  intro z hz
  rw [mem_rootSet, coe_aeval_eq_eval] at hz
  rw [eq_centerMass_of_eval_derivative_eq_zero h₀ hz.2]
  apply Finset.centerMass_mem_convexHull
  · simp [derivRootWeight_nonneg]
  · apply sum_derivRootWeight_pos h₀
  · simp [mem_rootSet]

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussLucas/Variantf25415906ece5ef37e504aef6df397c05b2c0f10cb1b2b026c2b21703507edb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussLucas/Variantf25415906ece5ef37e504aef6df397c05b2c0f10cb1b2b026c2b21703507edb8.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00d686f09dabb5812a59aee8fc87c51a18eb11cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
