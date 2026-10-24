# ofPreNNDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19acfb91e7ee7c294b57702eefab170fb9df590cf18513a122138d98df416eba",
  "kind": "def",
  "lexical_name": "ofPreNNDist",
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
  "slug": "ofprenndist--25bf584a6ecb5dfa46cd2415",
  "source": {
    "blob": "62ad9c29d39807b27712f0f71abdc4fc7219f9dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25bf584a6ecb5dfa46cd24152375a89bbf02e7386c0367dab64878e62fe06f6a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19acfb91e7ee7c294b57702eefab170fb9df590cf18513a122138d98df416eba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofPreNNDist (d : X → X → ℝ≥0) (dist_self : ∀ x, d x x = 0)
    (dist_comm : ∀ x y, d x y = d y x) : PseudoMetricSpace X where
  dist x y := ↑(⨅ l : List X, ((x::l).zipWith d (l ++ [y])).sum : ℝ≥0)
  dist_self x :=
    (NNReal.coe_eq_zero _).2 <|
      nonpos_iff_eq_zero.1 <| (ciInf_le (OrderBot.bddBelow _) []).trans_eq <| by simp [dist_self]
  dist_comm x y :=
    NNReal.coe_eq.2 <| by
      refine' reverse_surjective.iInf_congr _ fun l => _
      rw [← sum_reverse, zipWith_distrib_reverse, reverse_append, reverse_reverse,
        reverse_singleton, singleton_append, reverse_cons, reverse_reverse,
        zipWith_comm_of_comm _ dist_comm]
      simp only [length, length_append]
  dist_triangle x y z := by
    -- Porting note: added `unfold`
    unfold dist
    rw [← NNReal.coe_add, NNReal.coe_le_coe]
    refine' NNReal.le_iInf_add_iInf fun lxy lyz => _
    calc
      ⨅ l, (zipWith d (x::l) (l ++ [z])).sum ≤
          (zipWith d (x::lxy ++ y::lyz) ((lxy ++ y::lyz) ++ [z])).sum :=
        ciInf_le (OrderBot.bddBelow _) (lxy ++ y::lyz)
      _ = (zipWith d (x::lxy) (lxy ++ [y])).sum + (zipWith d (y::lyz) (lyz ++ [z])).sum := by
        rw [← sum_append, ← zipWith_append, cons_append, ← @singleton_append _ y, append_assoc,
          append_assoc, append_assoc]
        rw [length_cons, length_append, length_singleton]
  -- Porting note: `edist_dist` is no longer inferred
  edist_dist x y := rfl
#align pseudo_metric_space.of_prenndist PseudoMetricSpace.ofPreNNDist

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62ad9c29d39807b27712f0f71abdc4fc7219f9dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
