# exists_isSaddlePointOn'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fa895cc-f45c-081a-4edf-90726e083074",
  "kind": "theorem",
  "lexical_name": "exists_isSaddlePointOn'",
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
  "slug": "exists-issaddlepointon--c5ea8e83c16820c5b20730ca",
  "source": {
    "blob": "ddcfb8abece24797f880719f1a12a51e23dfd148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 408,
    "path": "GRWTSK/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5ea8e83c16820c5b20730caad6209be2b40db51db67a9361284e8c0b8d390db",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fa895cc-f45c-081a-4edf-90726e083074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem exists_isSaddlePointOn' :
    ∃ a ∈ X, ∃ b ∈ Y, IsSaddlePointOn X Y f a b := by
  have hmax_y (x) (hx : x ∈ X) : ∃ y ∈ Y, IsMaxOn (f x) Y y := (hfx x hx).exists_isMaxOn ne_Y kY
  choose! η η_mem η_max using hmax_y
  have hlsc : LowerSemicontinuousOn (fun x => f x (η x)) X :=
    lowerSemicontinuousOn_of_forall_isMaxOn_and_mem hfy η_mem η_max
  obtain ⟨a, ha, ha'⟩ : ∃ a ∈ X, IsMinOn (fun x ↦ f x (η x)) X a := hlsc.exists_isMinOn ne_X kX
  use a, ha
  have hmin_x (y) (hy : y ∈ Y) : ∃ x ∈ X, IsMinOn (f · y) X x := (hfy y hy).exists_isMinOn ne_X kX
  choose! ξ ξ_mem ξ_min using hmin_x
  have husc := upperSemicontinuousOn_of_forall_isMinOn_and_mem hfx ξ_mem ξ_min
  obtain ⟨b, hb, hb'⟩ : ∃ b ∈ Y, IsMaxOn (fun y ↦ f (ξ y) y) Y b := husc.exists_isMaxOn ne_Y kY
  use b, hb
  intro x hx y hy
  calc f a y ≤ f a (η a) := isMaxOn_iff.mp (η_max a ha) y hy
    _ = f (ξ b) b :=
      minimax ne_X kX hfy hfy' cY hfx hfx' cX
        _ (fun x hx ↦ (η_max x hx).isLUB (η_mem x hx))
        _ (ha'.isGLB ha)
        _ (fun y hy ↦ (ξ_min y hy).isGLB (ξ_mem y hy))
        _ (hb'.isLUB hb)
    _ ≤ f x b := isMinOn_iff.mp (ξ_min b hb) x hx

end LinearOrder

section CompleteLinearOrder

variable {E F β : Type*} [CompleteLinearOrder β] [DenselyOrdered β]
variable {X : Set E} {Y : Set F} {f : E → F → β}
variable [TopologicalSpace E] [AddCommGroup E] [Module ℝ E]
    [IsTopologicalAddGroup E] [ContinuousSMul ℝ E]
    (ne_X : X.Nonempty) (cX : Convex ℝ X) (kX : IsCompact X)
    (hfy : ∀ y ∈ Y, LowerSemicontinuousOn (fun x : E ↦ f x y) X)
    (hfy' : ∀ y ∈ Y, QuasiconvexOn ℝ X fun x => f x y)

variable [TopologicalSpace F] [AddCommGroup F] [Module ℝ F]
  [IsTopologicalAddGroup F] [ContinuousSMul ℝ F]
  (cY : Convex ℝ Y) (ne_Y : Y.Nonempty) (kY : IsCompact Y)
  (hfx : ∀ x ∈ X, UpperSemicontinuousOn (fun y : F => f x y) Y)
  (hfx' : ∀ x ∈ X, QuasiconcaveOn ℝ Y fun y => f x y)

include ne_X cX cY kX hfx hfx' hfy hfy' in
/-- A minimax theorem in inf-sup form, for complete linear orders. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcfb8abece24797f880719f1a12a51e23dfd148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
