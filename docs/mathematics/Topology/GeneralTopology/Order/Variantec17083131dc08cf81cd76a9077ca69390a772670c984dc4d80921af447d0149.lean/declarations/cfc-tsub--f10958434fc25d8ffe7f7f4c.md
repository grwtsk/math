# cfc_tsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d472009-bb49-5812-6b11-4a7d1c2b91b3",
  "kind": "theorem",
  "lexical_name": "cfc_tsub",
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
  "slug": "cfc-tsub--f10958434fc25d8ffe7f7f4c",
  "source": {
    "blob": "ecb8aff199709e4025859741470e658246b3f3b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f10958434fc25d8ffe7f7f4c530f7baf7b4ec310effcb1c21eace12c723d9812",
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

Occurrence: `result:0d472009-bb49-5812-6b11-4a7d1c2b91b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cfc_tsub {A : Type*} [TopologicalSpace A] [Ring A] [PartialOrder A] [StarRing A]
    [StarOrderedRing A] [Algebra ℝ A] [IsTopologicalRing A] [T2Space A]
    [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [NonnegSpectrumClass ℝ A] (f g : ℝ≥0 → ℝ≥0)
    (a : A) (hfg : ∀ x ∈ spectrum ℝ≥0 a, g x ≤ f x) (ha : 0 ≤ a := by cfc_tac)
    (hf : ContinuousOn f (spectrum ℝ≥0 a) := by cfc_cont_tac)
    (hg : ContinuousOn g (spectrum ℝ≥0 a) := by cfc_cont_tac) :
    cfc (fun x ↦ f x - g x) a = cfc f a - cfc g a := by
  have ha' := SpectrumRestricts.nnreal_of_nonneg ha
  have : (spectrum ℝ a).EqOn (fun x ↦ ((f x.toNNReal - g x.toNNReal : ℝ≥0) : ℝ))
      (fun x ↦ f x.toNNReal - g x.toNNReal) :=
    fun x hx ↦ NNReal.coe_sub <| hfg _ <| ha'.apply_mem hx
  rw [cfc_nnreal_eq_real, cfc_nnreal_eq_real, cfc_nnreal_eq_real, cfc_congr this]
  refine cfc_sub _ _ a ?_ ?_
  all_goals
    exact continuous_subtype_val.comp_continuousOn <|
      ContinuousOn.comp ‹_› continuous_real_toNNReal.continuousOn <| ha'.image ▸ Set.mapsTo_image ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb8aff199709e4025859741470e658246b3f3b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
