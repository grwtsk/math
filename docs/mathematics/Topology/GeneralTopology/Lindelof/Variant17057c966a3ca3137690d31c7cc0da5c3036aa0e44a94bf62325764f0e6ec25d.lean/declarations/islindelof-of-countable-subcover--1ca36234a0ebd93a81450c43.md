# isLindelof_of_countable_subcover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3076a26d-c5ca-a2e1-b8b3-3a1b7ae4e145",
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
  "slug": "islindelof-of-countable-subcover--1ca36234a0ebd93a81450c43",
  "source": {
    "blob": "a53449fe2a297dc7b1f2ce908b9e2693c30c1876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 268,
    "path": "GRWTSK/Topology/GeneralTopology/Lindelof/Variant17057c966a3ca3137690d31c7cc0da5c3036aa0e44a94bf62325764f0e6ec25d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ca36234a0ebd93a81450c4380777699b1ed7a74c9ded9b1f2811e2ab4e71043",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lindelof/Variant17057c966a3ca3137690d31c7cc0da5c3036aa0e44a94bf62325764f0e6ec25d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3076a26d-c5ca-a2e1-b8b3-3a1b7ae4e145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–286.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lindelof/Variant17057c966a3ca3137690d31c7cc0da5c3036aa0e44a94bf62325764f0e6ec25d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lindelof/Variant17057c966a3ca3137690d31c7cc0da5c3036aa0e44a94bf62325764f0e6ec25d.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a53449fe2a297dc7b1f2ce908b9e2693c30c1876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
