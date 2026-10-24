# limsup_const_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a077e5cb-21c9-6902-2b9f-072f9ba6872f",
  "kind": "lemma",
  "lexical_name": "limsup_const_sub",
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
  "slug": "limsup-const-sub--13b50bdac5e1bef8f8b82c2b",
  "source": {
    "blob": "a2c919c236b0e813da600bf58f59c96fd4d5da3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 203,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant01bf5b39cb70488b4c139e779d583e624b61e280c713379e1085f85cb342d152.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13b50bdac5e1bef8f8b82c2b09d2162db2326568af3dc156a3d89dea15bb4890",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variant01bf5b39cb70488b4c139e779d583e624b61e280c713379e1085f85cb342d152.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a077e5cb-21c9-6902-2b9f-072f9ba6872f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma limsup_const_sub (F : Filter ι) [AddCommSemigroup R] [Sub R] [ContinuousSub R] [OrderedSub R]
    [AddLeftMono R] (f : ι → R) (c : R)
    (cobdd : F.IsCoboundedUnder (· ≥ ·) f) (bdd_below : F.IsBoundedUnder (· ≥ ·) f) :
    Filter.limsup (fun i ↦ c - f i) F = c - Filter.liminf f F := by
  rcases F.eq_or_neBot with rfl | _
  · simp only [liminf, limsInf, limsup, limsSup, map_bot, eventually_bot, Set.ofPred_true]
    simp only [IsCoboundedUnder, IsCobounded, map_bot, eventually_bot, true_implies] at cobdd
    rcases cobdd with ⟨x, hx⟩
    refine (csInf_le ?_ (Set.mem_univ _)).antisymm
      (tsub_le_iff_tsub_le.1 (le_csSup ?_ (Set.mem_univ _)))
    · refine ⟨x - x, mem_lowerBounds.2 fun y ↦ ?_⟩
      simp only [Set.mem_univ, true_implies]
      exact tsub_le_iff_tsub_le.1 (hx (x - y))
    · refine ⟨x, mem_upperBounds.2 fun y ↦ ?_⟩
      simp only [Set.mem_univ, hx y, implies_true]
  · exact (Antitone.map_limsInf_of_continuousAt (F := F.map f) (f := fun (x : R) ↦ c - x)
    (fun _ _ h ↦ tsub_le_tsub_left h c) (continuous_sub_left c).continuousAt cobdd bdd_below).symm

/-- `limsup (xᵢ - c) = (limsup xᵢ) - c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variant01bf5b39cb70488b4c139e779d583e624b61e280c713379e1085f85cb342d152.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant01bf5b39cb70488b4c139e779d583e624b61e280c713379e1085f85cb342d152.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2c919c236b0e813da600bf58f59c96fd4d5da3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
