# mk_of_hasBasis'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc4f5a633f31f0ee6342675cff8938ac0720f389",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61ebb0a1-0ffa-0f69-e897-8040dfb4d258",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9043a9c-a757-13ed-bd63-a8429548d511",
  "kind": "lemma",
  "lexical_name": "mk_of_hasBasis'",
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
  "slug": "mk-of-hasbasis--77fdedb999ecee92ce69a552",
  "source": {
    "blob": "dc4f5a633f31f0ee6342675cff8938ac0720f389",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77fdedb999ecee92ce69a552afee979a63cd7c9c760673aa3e67902d6b54fb71",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9043a9c-a757-13ed-bd63-a8429548d511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk_of_hasBasis' {ι : Sort*} {S : Type*} [SetLike S M]
    [AddSubmonoidClass S M]
    {p : ι → Prop} {s : ι → S}
    (h : (𝓝 0).HasBasis p (fun i ↦ (s i : Set M)))
    (hsmul : ∀ s : S, ∀ r : R, ∀ m ∈ s, r • m ∈ s) :
    IsLinearTopology R M where
  hasBasis_submodule' := h.to_hasBasis
    (fun i hi ↦ ⟨
      { carrier := s i,
        add_mem' := add_mem,
        zero_mem' := zero_mem _,
        smul_mem' := hsmul _},
      h.mem_of_mem hi, subset_rfl⟩)
    (fun _ ↦ h.mem_iff.mp)

variable (R) in
/-- To show that `M` is linearly-topologized as an `R`-module, it suffices to show
that it has a basis of neighborhoods of zero made of `R`-submodules.

Note: for technical reasons detailed in the module docstring, Lean sometimes struggles to find the
right `SMulMemClass` instance. See `IsLinearTopology.mk_of_hasBasis'` for a more
explicit variant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc4f5a633f31f0ee6342675cff8938ac0720f389` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
