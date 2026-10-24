# isLindelof_of_countable_subcover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf1dc92979e8bceb698d5d862049056ec9b51779",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e66fe9e-2b6c-7041-b402-a5404f494c57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a02e8faf-8433-7387-c7fd-5c571da406d1",
  "kind": "theorem",
  "lexical_name": "isLindelof_of_countable_subcover",
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
  "slug": "islindelof-of-countable-subcover--0ab3816c47b3e83b764e4166",
  "source": {
    "blob": "cf1dc92979e8bceb698d5d862049056ec9b51779",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 260,
    "path": "GRWTSK/Topology/GeneralTopology/Lindelof/Variante75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ab3816c47b3e83b764e4166cb04b710a4c967708ff045c5562d6ee88e46e37d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lindelof/Variante75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a02e8faf-8433-7387-c7fd-5c571da406d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLindelof_of_countable_subcover
    (h : ∀ {ι : Type u} (U : ι → Set X), (∀ i, IsOpen (U i)) → (s ⊆ ⋃ i, U i) →
    ∃ t : Set ι, t.Countable ∧ s ⊆ ⋃ i ∈ t, U i) :
    IsLindelof s := fun f hf hfs ↦ by
  contrapose! h
  simp only [ClusterPt, not_neBot, ← disjoint_iff, SetCoe.forall',
    (nhds_basis_opens _).disjoint_iff_left] at h
  choose fsub U hU hUf using h
  refine ⟨s, U, fun x ↦ (hU x).2, fun x hx ↦ mem_iUnion.2 ⟨⟨x, hx⟩, (hU _).1 ⟩, ?_⟩
  intro t ht h
  have uinf := f.sets_of_superset (le_principal_iff.1 fsub) h
  have uninf : ⋂ i ∈ t, (U i)ᶜ ∈ f := (countable_bInter_mem ht).mpr (fun _ _ ↦ hUf _)
  rw [← compl_iUnion₂] at uninf
  have uninf := compl_notMem uninf
  simp only [compl_compl] at uninf
  contradiction

/-- A set `s` is Lindelöf if for every family of closed sets whose intersection avoids `s`,
there exists a countable subfamily whose intersection avoids `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lindelof/Variante75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lindelof/Variante75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf1dc92979e8bceb698d5d862049056ec9b51779` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
