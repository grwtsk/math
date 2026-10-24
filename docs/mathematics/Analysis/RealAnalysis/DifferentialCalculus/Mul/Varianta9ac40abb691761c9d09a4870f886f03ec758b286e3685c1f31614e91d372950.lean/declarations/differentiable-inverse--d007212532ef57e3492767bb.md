# Differentiable.inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c625329be59e8f6f32f242efbf6ccb9e783f1c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 706,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9ac40abb691761c9d09a4870f886f03ec758b286e3685c1f31614e91d372950.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08a09475-e5b8-3859-f099-130b3d93b21f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbc9fad5-5f99-436e-604b-4de9a1e8c978",
  "kind": "theorem",
  "lexical_name": "Differentiable.inverse",
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
  "slug": "differentiable-inverse--d007212532ef57e3492767bb",
  "source": {
    "blob": "5c625329be59e8f6f32f242efbf6ccb9e783f1c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 726,
    "line": 706,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Varianta9ac40abb691761c9d09a4870f886f03ec758b286e3685c1f31614e91d372950.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d007212532ef57e3492767bbfd36390e3d7c5fe97bff6b848f64062bd52ef676",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Varianta9ac40abb691761c9d09a4870f886f03ec758b286e3685c1f31614e91d372950.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbc9fad5-5f99-436e-604b-4de9a1e8c978`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 706–726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Differentiable.inverse (hf : Differentiable 𝕜 h) (hz : ∀ x, IsUnit (h x)) :
    Differentiable 𝕜 fun x => (h x)⁻¹ʳ := fun x => (hf x).inverse (hz x)

end AlgebraInverse

/-! ### Derivative of the inverse in a division ring

Note that some lemmas are primed as they are expressed without commutativity, whereas their
counterparts in commutative fields involve simpler expressions, and are given in
`Mathlib/Analysis/Calculus/Deriv/Inv.lean`.
-/

section DivisionRingInverse

variable {R : Type*} [NormedDivisionRing R] [NormedAlgebra 𝕜 R]

open NormedRing ContinuousLinearMap Ring

/-- At an invertible element `x` of a normed division algebra `R`, the inversion is strictly
differentiable, with derivative the linear map `fun t ↦ - x⁻¹ * t * x⁻¹`. For a nicer formula in
the commutative case, see `hasStrictFDerivAt_inv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Varianta9ac40abb691761c9d09a4870f886f03ec758b286e3685c1f31614e91d372950.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Varianta9ac40abb691761c9d09a4870f886f03ec758b286e3685c1f31614e91d372950.lean#L706).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c625329be59e8f6f32f242efbf6ccb9e783f1c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
