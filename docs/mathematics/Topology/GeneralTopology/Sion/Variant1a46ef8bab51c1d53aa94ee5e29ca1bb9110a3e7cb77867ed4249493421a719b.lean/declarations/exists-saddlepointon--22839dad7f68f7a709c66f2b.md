# exists_saddlePointOn'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e02a913-2732-7adb-ee12-45292001d2df",
  "kind": "theorem",
  "lexical_name": "exists_saddlePointOn'",
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
  "slug": "exists-saddlepointon--22839dad7f68f7a709c66f2b",
  "source": {
    "blob": "ddcfb8abece24797f880719f1a12a51e23dfd148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 458,
    "path": "GRWTSK/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22839dad7f68f7a709c66f2b80ba11d74ae23b3ef615fc92a6f4eab951595cce",
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

Occurrence: `result:8e02a913-2732-7adb-ee12-45292001d2df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem exists_saddlePointOn' :
    ∃ a ∈ X, ∃ b ∈ Y, IsSaddlePointOn X Y f a b := by
  have hlsc : LowerSemicontinuousOn (fun x => ⨆ y ∈ Y, f x y) X := fun x hx ↦ by
    apply lowerSemicontinuousWithinAt_iSup
    intro i
    exact lowerSemicontinuousWithinAt_iSup fun i_1 ↦ hfy i i_1 x hx
  have husc : UpperSemicontinuousOn (fun y => ⨅ x ∈ X, f x y) Y := fun y hy ↦ by
    apply upperSemicontinuousWithinAt_iInf
    intro i
    exact upperSemicontinuousWithinAt_iInf fun i_1 ↦ hfx i i_1 y hy
  obtain ⟨a, ha, ha'⟩ := LowerSemicontinuousOn.exists_isMinOn
   ne_X kX hlsc
  obtain ⟨b, hb, hb'⟩ := UpperSemicontinuousOn.exists_isMaxOn ne_Y kY husc
  use a, ha, b, hb
  rw [isSaddlePointOn_iff' ha hb]
  refine le_trans (le_iInf₂ ha') ?_
  refine le_trans ?_ (iSup₂_le_iff.mpr hb')
  rw [minimax' ne_X cX kX hfy hfy' cY hfx hfx']

end CompleteLinearOrder

section DedekindMacNeille

variable {E F β γ : Type*} [LinearOrder β]

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

/- The following lines essentially assume that `β` has a densely ordered completion.
(The Dedekind MacNeille completion is not densely ordered unless `β` is.) -/
variable [TopologicalSpace β] [OrderTopology β]
variable {γ : Type*} [CompleteLinearOrder γ] [DenselyOrdered γ]
  [TopologicalSpace γ] [OrderTopology γ]
  {ι : β ↪o γ} (hι : Continuous ι)

include ne_X ne_Y cX cY kX kY hfx hfx' hfy hfy' hι in
/-- The minimax theorem, in the saddle point form,
when `β` is given a Dedekind-MacNeille completion `ι : β ↪o γ` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcfb8abece24797f880719f1a12a51e23dfd148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
