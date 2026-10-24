# IsSelfAdjoint.isConnected_spectrum_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91e5584d07e30cedfd6de43e39471f90b20d98e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:948793ba-c27a-8b17-12f9-f8d3b9a8f0a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b9ba5df-dd0e-2c6a-a34d-67737d1c213e",
  "kind": "lemma",
  "lexical_name": "IsSelfAdjoint.isConnected_spectrum_compl",
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
  "slug": "isselfadjoint-isconnected-spectrum-compl--510b0547cb8fd69187d7c3b6",
  "source": {
    "blob": "91e5584d07e30cedfd6de43e39471f90b20d98e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:510b0547cb8fd69187d7c3b6f2b304511f6bb6504a3cc44e0eb5e5f1f832e7bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b9ba5df-dd0e-2c6a-a34d-67737d1c213e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSelfAdjoint.isConnected_spectrum_compl {a : A} (ha : IsSelfAdjoint a) :
    IsConnected (σ ℂ a)ᶜ := by
  suffices IsConnected (((σ ℂ a)ᶜ ∩ {z | 0 ≤ z.im}) ∪ (σ ℂ a)ᶜ ∩ {z | z.im ≤ 0}) by
    rw [← Set.inter_union_distrib_left, ← Set.ofPred_or] at this
    rw [← Set.inter_univ (σ ℂ a)ᶜ]
    convert this
    exact Eq.symm <| Set.eq_univ_of_forall (fun z ↦ le_total 0 z.im)
  refine IsConnected.union ?nonempty ?upper ?lower
  case nonempty =>
    have := Filter.NeBot.nonempty_of_mem inferInstance <| Filter.mem_map.mp <|
      Complex.isometry_ofReal.antilipschitzWith.tendsto_cobounded (spectrum.isBounded a |>.compl)
    exact this.image Complex.ofReal |>.mono <| by simp
  case' upper => apply Complex.isConnected_of_upperHalfPlane ?_ <| Set.inter_subset_right
  case' lower => apply Complex.isConnected_of_lowerHalfPlane ?_ <| Set.inter_subset_right
  all_goals
    refine Set.subset_inter (fun z hz hz' ↦ ?_) (fun _ ↦ by simpa using le_of_lt)
    rw [Set.mem_ofPred_eq, ha.im_eq_zero_of_mem_spectrum hz'] at hz
    simp_all

namespace StarSubalgebra

variable (S : StarSubalgebra ℂ A) [hS : IsClosed (S : Set A)]

/-- For a unital C⋆-subalgebra `S` of `A` and `x : S`, if `↑x : A` is invertible in `A`, then
`x` is invertible in `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91e5584d07e30cedfd6de43e39471f90b20d98e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
