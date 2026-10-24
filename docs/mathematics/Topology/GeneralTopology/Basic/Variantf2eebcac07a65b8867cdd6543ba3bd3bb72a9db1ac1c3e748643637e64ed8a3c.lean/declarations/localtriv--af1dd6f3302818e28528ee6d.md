# localTriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06c9e95cfba87f26bf16e6bb53469c3692dd9554953e4e18241983c10afe4ce4",
  "kind": "def",
  "lexical_name": "localTriv",
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
  "slug": "localtriv--af1dd6f3302818e28528ee6d",
  "source": {
    "blob": "b2f266a336842e14f979b0f4347fb22826c04ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 577,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af1dd6f3302818e28528ee6dceaaca6fddd5160ec4810b7a810a2437f177ad26",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06c9e95cfba87f26bf16e6bb53469c3692dd9554953e4e18241983c10afe4ce4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def localTriv (i : ι) : Trivialization F Z.proj where
  baseSet := Z.baseSet i
  open_baseSet := Z.isOpen_baseSet i
  source_eq := rfl
  target_eq := rfl
  proj_toFun p _ := by
    simp only [mfld_simps]
    rfl
  open_source := Z.open_source' i
  open_target := (Z.isOpen_baseSet i).prod isOpen_univ
  continuousOn_toFun := by
    rw [continuousOn_open_iff (Z.open_source' i)]
    intro s s_open
    apply TopologicalSpace.GenerateOpen.basic
    simp only [exists_prop, mem_iUnion, mem_singleton_iff]
    exact ⟨i, s, s_open, rfl⟩
  continuousOn_invFun := by
    refine continuousOn_isOpen_of_generateFrom fun t ht ↦ ?_
    simp only [exists_prop, mem_iUnion, mem_singleton_iff] at ht
    obtain ⟨j, s, s_open, ts⟩ : ∃ j s, IsOpen s ∧
      t = (localTrivAsPartialEquiv Z j).source ∩ localTrivAsPartialEquiv Z j ⁻¹' s := ht
    rw [ts]
    simp only [preimage_inter]
    let e := Z.localTrivAsPartialEquiv i
    let e' := Z.localTrivAsPartialEquiv j
    let f := e.symm.trans e'
    have : IsOpen (f.source ∩ f ⁻¹' s) := by
      rw [PartialEquiv.EqOnSource.source_inter_preimage_eq (Z.localTrivAsPartialEquiv_trans i j)]
      exact (continuousOn_open_iff (Z.trivChange i j).open_source).1
        (Z.trivChange i j).continuousOn _ s_open
    convert! this using 1
    dsimp [f, PartialEquiv.trans_source]
    rw [← preimage_comp, inter_assoc]
  toPartialEquiv := Z.localTrivAsPartialEquiv i

/-- Preferred local trivialization of a fiber bundle constructed from core, at a given point, as
a bundle trivialization -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2f266a336842e14f979b0f4347fb22826c04ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
