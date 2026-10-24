# norm_le_of_forall_inner_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b39da79b-dab2-0913-9a1b-446e377e056b",
  "kind": "lemma",
  "lexical_name": "norm_le_of_forall_inner_le",
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
  "slug": "norm-le-of-forall-inner-le--83200203879a2b36d1d49681",
  "source": {
    "blob": "a4a163a01b299793de881cb3302f1ccf9494e853",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 632,
    "line": 600,
    "path": "GRWTSK/Analysis/CStarMatrix/Variant8257de46b6ef38883b6562bbae3e2858838836b0914d3bac70a271b5dc10a824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83200203879a2b36d1d49681ed329d0ec041dd9b1cc75124d2fd66f634b6f597",
  "verification": {
    "reference": "docs/verification/Analysis/CStarMatrix/Variant8257de46b6ef38883b6562bbae3e2858838836b0914d3bac70a271b5dc10a824.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b39da79b-dab2-0913-9a1b-446e377e056b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_le_of_forall_inner_le {M : CStarMatrix m n A} {C : ℝ≥0}
    (h : ∀ v w, ‖⟪w, toCLM M v⟫_A‖ ≤ C * ‖v‖ * ‖w‖) : ‖M‖ ≤ C := by
  refine (toCLM M).opNorm_le_bound (by simp) fun v ↦ ?_
  obtain (h₀ | h₀) := (norm_nonneg (toCLM M v)).eq_or_lt
  · rw [← h₀]
    positivity
  · refine le_of_mul_le_mul_right ?_ h₀
    simpa [← sq, norm_sq_eq A] using h ..

end CStarMatrix

section TopologyAux
/-
## Replacing the uniformity and bornology

Note that while the norm that we have defined on `CStarMatrix m n A` induces the product uniformity,
it is not defeq to `Pi.uniformSpace`. In this section, we show that the norm indeed does induce
the product topology and use this fact to properly set up the
`NormedAddCommGroup (CStarMatrix m n A)` instance such that the uniformity is still
`Pi.uniformSpace` and the bornology is `Pi.instBornology`.

To do this, we locally register a `NormedAddCommGroup` instance on `CStarMatrix` which registers
the "bad" topology, and we also locally use the matrix norm `Matrix.normedAddCommGroup`
(which takes the norm of the biggest entry as the norm of the matrix)
in order to show that the map `ofMatrix` is bilipschitz. We then finally register the
`NormedAddCommGroup (C⋆ᵐᵒᵈ (n → A))` instance via `NormedAddCommGroup.ofCoreReplaceAll`.
-/

namespace CStarMatrix

variable {m n A : Type*} [Fintype m] [Fintype n]
  [NonUnitalCStarAlgebra A] [PartialOrder A] [StarOrderedRing A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CStarMatrix/Variant8257de46b6ef38883b6562bbae3e2858838836b0914d3bac70a271b5dc10a824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CStarMatrix/Variant8257de46b6ef38883b6562bbae3e2858838836b0914d3bac70a271b5dc10a824.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4a163a01b299793de881cb3302f1ccf9494e853` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
