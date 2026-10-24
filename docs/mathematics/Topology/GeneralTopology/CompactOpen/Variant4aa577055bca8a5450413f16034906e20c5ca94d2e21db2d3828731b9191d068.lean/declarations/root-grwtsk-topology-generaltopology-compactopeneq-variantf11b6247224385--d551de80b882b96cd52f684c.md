# _root_.GRWTSK.Topology.GeneralTopology.CompactOpenEq.Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.Filter.HasBasis.nhds_continuousMapConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3e20074-2d6b-bd83-3a74-e64b9ac7cd1f",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.CompactOpenEq.Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.Filter.HasBasis.nhds_continuousMapConst",
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
  "slug": "root-grwtsk-topology-generaltopology-compactopeneq-variantf11b6247224385--d551de80b882b96cd52f684c",
  "source": {
    "blob": "1f271888146c4e06ac54f4198f1650cc82ab9edc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d551de80b882b96cd52f684cdd057f97fbffdee19e8cf1621c0b8e1471cd15d7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3e20074-2d6b-bd83-3a74-e64b9ac7cd1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.CompactOpenEq.Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.Filter.HasBasis.nhds_continuousMapConst {ι : Type*} {c : Y} {p : ι → Prop}
    {U : ι → Set Y} (h : (𝓝 c).HasBasis p U) :
    (𝓝 (const X c)).HasBasis (fun Ki : Set X × ι ↦ IsCompact Ki.1 ∧ p Ki.2)
      fun Ki ↦ {f : C(X, Y) | MapsTo f Ki.1 (U Ki.2)} := by
  refine ⟨fun s ↦ ⟨fun hs ↦ ?_, fun hs ↦ ?_⟩⟩
  · rcases ContinuousMap.mem_nhds_iff.mp hs with ⟨S, hSf, hS, hSsub⟩
    choose hScompact hSopen hSmaps using hS
    have : ⋂ KU ∈ S, ⋂ (_ : KU.1.Nonempty), KU.2 ∈ 𝓝 c := by
      simp only [biInter_mem hSf, Prod.forall, iInter_mem]
      rintro K U hKU ⟨x, hx⟩
      exact (hSopen K U hKU).mem_nhds <| hSmaps K U hKU hx
    rcases h.mem_iff.mp this with ⟨i, hpi, hi⟩
    refine ⟨(⋃ KU ∈ S, KU.1, i), ⟨hSf.isCompact_biUnion <| Prod.forall.2 hScompact, hpi⟩,
      Subset.trans ?_ hSsub⟩
    intro f hf K V hKV
    rcases K.eq_empty_or_nonempty with rfl | hKne
    · exact mapsTo_empty _ _
    · refine hf.out.mono (subset_biUnion_of_mem (u := Prod.fst) hKV) (hi.trans ?_)
      exact (biInter_subset_of_mem hKV).trans <| iInter_subset _ hKne
  · rcases hs with ⟨⟨K, i⟩, ⟨hK, hpi⟩, hi⟩
    filter_upwards [eventually_mapsTo hK isOpen_interior fun x _ ↦
      mem_interior_iff_mem_nhds.mpr <| h.mem_of_mem hpi] with f hf
    exact hi <| hf.mono_right interior_subset

section Functorial

/-- `C(X, ·)` is a functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f271888146c4e06ac54f4198f1650cc82ab9edc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
