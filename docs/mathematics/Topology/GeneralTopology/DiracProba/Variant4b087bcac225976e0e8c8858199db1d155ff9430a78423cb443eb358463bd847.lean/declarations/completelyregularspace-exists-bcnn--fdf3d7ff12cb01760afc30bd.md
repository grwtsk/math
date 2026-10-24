# CompletelyRegularSpace.exists_BCNN

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d1c0caf-ba4d-586a-3d3b-e67f32b11b33",
  "kind": "lemma",
  "lexical_name": "CompletelyRegularSpace.exists_BCNN",
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
  "slug": "completelyregularspace-exists-bcnn--fdf3d7ff12cb01760afc30bd",
  "source": {
    "blob": "0de6275ad78f936ad4c7dbfbf6fa838b71a91e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdf3d7ff12cb01760afc30bd38d4df9b5b2335a20ca15827ef7309e9e4dd988a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d1c0caf-ba4d-586a-3d3b-e67f32b11b33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CompletelyRegularSpace.exists_BCNN {X : Type*} [TopologicalSpace X] [CompletelyRegularSpace X]
    {K : Set X} (K_closed : IsClosed K) {x : X} (x_notin_K : x ∉ K) :
    ∃ (f : X →ᵇ ℝ≥0), f x = 1 ∧ (∀ y ∈ K, f y = 0) := by
  obtain ⟨g, g_cont, gx_zero, g_one_on_K⟩ :=
    CompletelyRegularSpace.completely_regular x K K_closed x_notin_K
  have g_bdd : ∀ x y, dist (Real.toNNReal (g x)) (Real.toNNReal (g y)) ≤ 1 := by
    refine fun x y ↦ ((Real.lipschitzWith_toNNReal).dist_le_mul (g x) (g y)).trans ?_
    simpa using Real.dist_le_of_mem_Icc_01 (g x).prop (g y).prop
  set g' := BoundedContinuousFunction.mkOfBound
      ⟨fun x ↦ Real.toNNReal (g x), continuous_real_toNNReal.comp g_cont.subtype_val⟩ 1 g_bdd
  set f := 1 - g'
  refine ⟨f, by simp [f, g', gx_zero], fun y y_in_K ↦ by simp [f, g', g_one_on_K y_in_K, tsub_self]⟩

namespace MeasureTheory

section embed_to_probabilityMeasure

variable {X : Type*} [MeasurableSpace X]

/-- The Dirac delta mass at a point `x : X` as a `ProbabilityMeasure`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0de6275ad78f936ad4c7dbfbf6fa838b71a91e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
