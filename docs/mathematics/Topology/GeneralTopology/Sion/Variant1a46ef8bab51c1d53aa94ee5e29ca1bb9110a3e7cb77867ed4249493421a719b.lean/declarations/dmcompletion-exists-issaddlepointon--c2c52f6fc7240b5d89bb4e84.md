# DMCompletion.exists_isSaddlePointOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c70a4fe6-0815-c0f8-bf2a-9b9e2e5e9fbe",
  "kind": "theorem",
  "lexical_name": "DMCompletion.exists_isSaddlePointOn",
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
  "slug": "dmcompletion-exists-issaddlepointon--c2c52f6fc7240b5d89bb4e84",
  "source": {
    "blob": "ddcfb8abece24797f880719f1a12a51e23dfd148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 506,
    "path": "GRWTSK/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2c52f6fc7240b5d89bb4e8456beaa3abe91fa34187104b12d726f68bdaaa2cd",
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

Occurrence: `result:c70a4fe6-0815-c0f8-bf2a-9b9e2e5e9fbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem DMCompletion.exists_isSaddlePointOn :
  ∃ a ∈ X, ∃ b ∈ Y, IsSaddlePointOn X Y f a b := by
  -- Reduce to the cae of EReal-valued functions
  let φ : E → F → γ := fun x y ↦ ι (f x y)
  -- suffices : ∃ a ∈ X, ∃ b ∈ Y, IsSaddlePointOn X Y φ a b
  have hφx (x) (hx : x ∈ X) : UpperSemicontinuousOn (fun y ↦ φ x y) Y := by
    convert! Continuous.comp_upperSemicontinuousOn hι (hfx x hx) ι.monotone
  have hφx' (x) (hx : x ∈ X) : QuasiconcaveOn ℝ Y fun y ↦ φ x y := by
    convert! (hfx' x hx).monotone_comp ι.monotone
  have hφy (y) (hy : y ∈ Y) : LowerSemicontinuousOn (fun x ↦ φ x y) X := by
    convert! Continuous.comp_lowerSemicontinuousOn hι (hfy y hy) ι.monotone
  have hφy' (y) (hy : y ∈ Y) : QuasiconvexOn ℝ X fun x ↦ φ x y := by
    convert! (hfy' y hy).monotone_comp ι.monotone
  obtain ⟨a, ha, b, hb, hab⟩ :=
    exists_isSaddlePointOn' ne_X kX hφy hφy' cY kY hφx hφx' cX ne_Y
  use a, ha, b, hb
  intro x hx y hy
  simpa only [OrderEmbedding.le_iff_le, φ] using hab x hx y hy

end DedekindMacNeille

section Real

variable {E F : Type*}
variable {X : Set E} {Y : Set F} {f : E → F → ℝ}
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

include ne_X ne_Y cX cY kX kY hfx hfx' hfy hfy' in
/-- The minimax theorem, in the saddle point form -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcfb8abece24797f880719f1a12a51e23dfd148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
