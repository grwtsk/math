# AlgHom.closure_ker_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d67a869-933c-c075-c74b-ad7b7fe7f703",
  "kind": "theorem",
  "lexical_name": "AlgHom.closure_ker_inter",
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
  "slug": "alghom-closure-ker-inter--d3da18b4d9a03b4fdfeb4ba6",
  "source": {
    "blob": "cb7a95dc9e737bf23397389e3299604cea25a84e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 604,
    "path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3da18b4d9a03b4fdfeb4ba6a784954bb2539ea063a68d2b1b0e11ca21c5c8a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d67a869-933c-c075-c74b-ad7b7fe7f703`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 604–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AlgHom.closure_ker_inter {F S K A : Type*} [CommRing K] [Ring A] [Algebra K A]
    [TopologicalSpace K] [T1Space K] [TopologicalSpace A] [ContinuousSub A] [ContinuousSMul K A]
    [FunLike F A K] [AlgHomClass F K A K] [SetLike S A] [OneMemClass S A] [AddSubgroupClass S A]
    [SMulMemClass S K A] (φ : F) (hφ : Continuous φ) (s : S) :
    closure (s ∩ RingHom.ker φ) = closure s ∩ (ker φ : Set A) := by
  refine subset_antisymm ?_ ?_
  · simpa only [ker_eq, (isClosed_singleton.preimage hφ).closure_eq]
      using closure_inter_subset_inter_closure s (ker φ : Set A)
  · intro x ⟨hxs, (hxφ : φ x = 0)⟩
    rw [mem_closure_iff_clusterPt, ClusterPt] at hxs
    have : Tendsto (fun y ↦ y - φ y • 1) (𝓝 x ⊓ 𝓟 s) (𝓝 x) := by
      conv => congr; rfl; rfl; rw [← sub_zero x, ← zero_smul K 1, ← hxφ]
      exact Filter.tendsto_inf_left (Continuous.tendsto (by fun_prop) x)
    refine mem_closure_of_tendsto this <| eventually_inf_principal.mpr ?_
    filter_upwards [] with g hg using
      ⟨sub_mem hg (SMulMemClass.smul_mem _ <| one_mem _), by simp [RingHom.mem_ker]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean#L604).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb7a95dc9e737bf23397389e3299604cea25a84e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
