# IsTopologicalBasis.iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79932e5e520be2ae0c5be72c0139c6522e7f5bb2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 525,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62ab4f49-4e8a-3420-5ec4-69bd1bb4d59d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfba7b97-1d87-066f-5f3d-692a7e2999db",
  "kind": "theorem",
  "lexical_name": "IsTopologicalBasis.iInf",
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
  "slug": "istopologicalbasis-iinf--700d858f51ea3ab0e4f779fb",
  "source": {
    "blob": "79932e5e520be2ae0c5be72c0139c6522e7f5bb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 525,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:700d858f51ea3ab0e4f779fbe00e9f7b4bdf6c1acaea27b413b1ad5b5af406f1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfba7b97-1d87-066f-5f3d-692a7e2999db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsTopologicalBasis.iInf {β : Type*} {ι : Type*} {t : ι → TopologicalSpace β}
    {T : ι → Set (Set β)} (h_basis : ∀ i, IsTopologicalBasis (t := t i) (T i)) :
    IsTopologicalBasis (t := ⨅ i, t i)
      { S | ∃ (U : ι → Set β) (F : Finset ι), (∀ i, i ∈ F → U i ∈ T i) ∧ S = ⋂ i ∈ F, U i } := by
  let _ := ⨅ i, t i
  refine isTopologicalBasis_of_isOpen_of_nhds ?_ ?_
  · rintro - ⟨U, F, hU, rfl⟩
    refine isOpen_biInter_finset fun i hi ↦
      (h_basis i).isOpen (t := t i) (hU i hi) |>.mono (iInf_le _ _)
  · intro a u ha hu
    rcases (nhds_iInf (t := t) (a := a)).symm ▸ HasBasis.iInf'
      (fun i ↦ (h_basis i).nhds_hasBasis (t := t i)) |>.mem_iff.1 (hu.mem_nhds ha)
      with ⟨⟨F, U⟩, ⟨hF, hU⟩, hUu⟩
    refine ⟨_, ⟨U, hF.toFinset, ?_, rfl⟩, ?_, ?_⟩ <;> simp only [Finite.mem_toFinset, mem_iInter]
    · exact fun i hi ↦ (hU i hi).1
    · exact fun i hi ↦ (hU i hi).2
    · exact hUu

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79932e5e520be2ae0c5be72c0139c6522e7f5bb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
