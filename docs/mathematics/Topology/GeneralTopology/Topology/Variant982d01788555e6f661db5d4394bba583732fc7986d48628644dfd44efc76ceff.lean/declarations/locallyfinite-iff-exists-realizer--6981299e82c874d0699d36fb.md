# locallyFinite_iff_exists_realizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4e2e53bb1a3d5b77861d4ee560e606a2030cc26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/982d01788555e6f661db5d4394bba583732fc7986d48628644dfd44efc76ceff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fa3a043-ac5a-7f7f-68fe-8ef2ece3f445",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc9352de-15b9-56fe-c6b7-e9985d791948",
  "kind": "theorem",
  "lexical_name": "locallyFinite_iff_exists_realizer",
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
  "slug": "locallyfinite-iff-exists-realizer--6981299e82c874d0699d36fb",
  "source": {
    "blob": "d4e2e53bb1a3d5b77861d4ee560e606a2030cc26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 224,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant982d01788555e6f661db5d4394bba583732fc7986d48628644dfd44efc76ceff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6981299e82c874d0699d36fb244dfc75180a3164df4bab173a38d06addd502f0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant982d01788555e6f661db5d4394bba583732fc7986d48628644dfd44efc76ceff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc9352de-15b9-56fe-c6b7-e9985d791948`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallyFinite_iff_exists_realizer [TopologicalSpace α] (F : Ctop.Realizer α)
    {f : β → Set α} : LocallyFinite f ↔ Nonempty (LocallyFinite.Realizer F f) :=
  ⟨fun h ↦
    let ⟨g, h₁⟩ := Classical.axiom_of_choice h
    let ⟨g₂, h₂⟩ :=
      Classical.axiom_of_choice fun x ↦
        show ∃ b : F.σ, x ∈ F.F b ∧ F.F b ⊆ g x from
          let ⟨h, _h'⟩ := h₁ x
          F.mem_nhds.1 h
    ⟨⟨fun x ↦ ⟨g₂ x, (h₂ x).1⟩, fun x ↦
        Finite.fintype <|
          let ⟨_h, h'⟩ := h₁ x
          h'.subset fun _i hi ↦ hi.mono (inter_subset_inter_right _ (h₂ x).2)⟩⟩,
    fun ⟨R⟩ ↦ R.to_locallyFinite⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant982d01788555e6f661db5d4394bba583732fc7986d48628644dfd44efc76ceff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant982d01788555e6f661db5d4394bba583732fc7986d48628644dfd44efc76ceff.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e2e53bb1a3d5b77861d4ee560e606a2030cc26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
