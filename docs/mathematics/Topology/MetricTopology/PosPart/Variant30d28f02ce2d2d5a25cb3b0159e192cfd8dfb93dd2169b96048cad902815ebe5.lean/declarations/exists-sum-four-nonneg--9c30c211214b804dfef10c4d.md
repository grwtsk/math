# exists_sum_four_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3343d475-5167-f7b5-211e-ba4fd5e6dff8",
  "kind": "lemma",
  "lexical_name": "exists_sum_four_nonneg",
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
  "slug": "exists-sum-four-nonneg--9c30c211214b804dfef10c4d",
  "source": {
    "blob": "59e4e54f90c5530df4ce3c87148f5ed13decca60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 64,
    "path": "GRWTSK/Topology/MetricTopology/PosPart/Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c30c211214b804dfef10c4d81dc6e2ba4fcddb8483aa8c8cb7ae54404c957fb",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PosPart/Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3343d475-5167-f7b5-211e-ba4fd5e6dff8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_sum_four_nonneg {A : Type*} [NonUnitalCStarAlgebra A] [PartialOrder A]
    [StarOrderedRing A] (a : A) :
    ∃ x : Fin 4 → A, (∀ i, 0 ≤ x i) ∧ (∀ i, ‖x i‖ ≤ ‖a‖) ∧ a = ∑ i : Fin 4, I ^ (i : ℕ) • x i := by
  use ![(realPart a)⁺, (imaginaryPart a)⁺, (realPart a)⁻, (imaginaryPart a)⁻]
  rw [← and_assoc, ← forall_and]
  constructor
  · intro i
    fin_cases i
    all_goals
      constructor
      · simp
        cfc_tac
    · exact CStarAlgebra.norm_posPart_le _ |>.trans <| realPart.norm_le a
    · exact CStarAlgebra.norm_posPart_le _ |>.trans <| imaginaryPart.norm_le a
    · exact CStarAlgebra.norm_negPart_le _ |>.trans <| realPart.norm_le a
    · exact CStarAlgebra.norm_negPart_le _ |>.trans <| imaginaryPart.norm_le a
  · nth_rw 1 [← CStarAlgebra.linear_combination_nonneg a]
    simp [Fin.sum_univ_four, sub_eq_add_neg]
    rw [add_add_add_comm]
    have : ((3 : Fin 4) : ℕ) = 3 := rfl -- ugh, seriously, why can't `norm_num` do this?
    match_scalars
    all_goals simp [this, I_pow_three]

end CStarAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PosPart/Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PosPart/Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e4e54f90c5530df4ce3c87148f5ed13decca60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
