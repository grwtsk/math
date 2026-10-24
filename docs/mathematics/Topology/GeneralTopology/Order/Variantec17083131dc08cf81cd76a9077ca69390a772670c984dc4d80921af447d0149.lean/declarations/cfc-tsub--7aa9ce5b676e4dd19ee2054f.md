# cfcₙ_tsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf8e92e1-6389-6f83-47df-34f843fd0a0d",
  "kind": "theorem",
  "lexical_name": "cfcₙ_tsub",
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
  "slug": "cfc-tsub--7aa9ce5b676e4dd19ee2054f",
  "source": {
    "blob": "ecb8aff199709e4025859741470e658246b3f3b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aa9ce5b676e4dd19ee2054f4d2233388dd84928ffc8ed261e493667be8b4be1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf8e92e1-6389-6f83-47df-34f843fd0a0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cfcₙ_tsub {A : Type*} [TopologicalSpace A] [NonUnitalRing A] [PartialOrder A] [StarRing A]
    [StarOrderedRing A] [Module ℝ A] [IsScalarTower ℝ A A] [SMulCommClass ℝ A A]
    [IsTopologicalRing A] [T2Space A] [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [NonnegSpectrumClass ℝ A] (f g : ℝ≥0 → ℝ≥0)
    (a : A) (hfg : ∀ x ∈ σₙ ℝ≥0 a, g x ≤ f x) (ha : 0 ≤ a := by cfc_tac)
    (hf : ContinuousOn f (σₙ ℝ≥0 a) := by cfc_cont_tac) (hf0 : f 0 = 0 := by cfc_zero_tac)
    (hg : ContinuousOn g (σₙ ℝ≥0 a) := by cfc_cont_tac) (hg0 : g 0 = 0 := by cfc_zero_tac) :
    cfcₙ (fun x ↦ f x - g x) a = cfcₙ f a - cfcₙ g a := by
  have ha' := QuasispectrumRestricts.nnreal_of_nonneg ha
  have : (σₙ ℝ a).EqOn (fun x ↦ ((f x.toNNReal - g x.toNNReal : ℝ≥0) : ℝ))
      (fun x ↦ f x.toNNReal - g x.toNNReal) :=
    fun x hx ↦ NNReal.coe_sub <| hfg _ <| ha'.apply_mem hx
  rw [cfcₙ_nnreal_eq_real, cfcₙ_nnreal_eq_real, cfcₙ_nnreal_eq_real, cfcₙ_congr this]
  refine cfcₙ_sub _ _ a ?_ (by simpa) ?_
  all_goals
    exact continuous_subtype_val.comp_continuousOn <|
      ContinuousOn.comp ‹_› continuous_real_toNNReal.continuousOn <| ha'.image ▸ Set.mapsTo_image ..

namespace Unitization

variable {A : Type*} [NonUnitalCStarAlgebra A] [PartialOrder A] [StarOrderedRing A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb8aff199709e4025859741470e658246b3f3b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
