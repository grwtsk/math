# exists_mem_subalgebra_near_continuousMap_of_separatesPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed85f3f4-b203-61a8-86d6-ed38a426737b",
  "kind": "theorem",
  "lexical_name": "exists_mem_subalgebra_near_continuousMap_of_separatesPoints",
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
  "slug": "exists-mem-subalgebra-near-continuousmap-of-separatespoints--442a0923d71bd3289f79ac4d",
  "source": {
    "blob": "2423b858edcaa7a4364c27ac2b4d5ea335513cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 312,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:442a0923d71bd3289f79ac4dd2b7b7dd52ce089e802c9de774cbcb2fe2a45ff0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed85f3f4-b203-61a8-86d6-ed38a426737b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_subalgebra_near_continuousMap_of_separatesPoints (A : Subalgebra ℝ C(X, ℝ))
    (w : A.SeparatesPoints) (f : C(X, ℝ)) (ε : ℝ) (pos : 0 < ε) :
    ∃ g : A, ‖(g : C(X, ℝ)) - f‖ < ε := by
  have w :=
    mem_closure_iff_frequently.mp (continuousMap_mem_subalgebra_closure_of_separatesPoints A w f)
  rw [Metric.nhds_basis_ball.frequently_iff] at w
  obtain ⟨g, H, m⟩ := w ε pos
  rw [Metric.mem_ball, dist_eq_norm] at H
  exact ⟨⟨g, m⟩, H⟩
#align continuous_map.exists_mem_subalgebra_near_continuous_map_of_separates_points ContinuousMap.exists_mem_subalgebra_near_continuousMap_of_separatesPoints

/-- An alternative statement of the Stone-Weierstrass theorem,
for those who like their epsilons and don't like bundled continuous functions.

If `A` is a subalgebra of `C(X, ℝ)` which separates points (and `X` is compact),
every real-valued continuous function on `X` is within any `ε > 0` of some element of `A`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2423b858edcaa7a4364c27ac2b4d5ea335513cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
