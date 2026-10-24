# OpenCover.ext_elem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81ecf6c288a7812bf0a58a612bfe51115ab539e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48a58899b05d24e50b676b87b300b740e5ee366afe74649879986dacb1f72bc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59524958-df0e-ebd4-cd41-e5b4e6e9df18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2431ace-4434-0c16-d27c-8775494e48d7",
  "kind": "lemma",
  "lexical_name": "OpenCover.ext_elem",
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
  "slug": "opencover-ext-elem--44e3cd22a37a0f30b5d0f2e2",
  "source": {
    "blob": "81ecf6c288a7812bf0a58a612bfe51115ab539e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 229,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Open/Variant48a58899b05d24e50b676b87b300b740e5ee366afe74649879986dacb1f72bc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44e3cd22a37a0f30b5d0f2e2c3436511140bf9b7edef1f202b5ff71526474177",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Open/Variant48a58899b05d24e50b676b87b300b740e5ee366afe74649879986dacb1f72bc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2431ace-4434-0c16-d27c-8775494e48d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma OpenCover.ext_elem {X : Scheme.{u}} {U : X.Opens} (f g : Γ(X, U)) (𝒰 : X.OpenCover)
    (h : ∀ i : 𝒰.I₀, (𝒰.f i).app U f = (𝒰.f i).app U g) : f = g := by
  fapply TopCat.Sheaf.eq_of_locally_eq' X.sheaf
    (fun i ↦ (𝒰.f (𝒰.idx i)).opensRange ⊓ U) _ (fun _ ↦ homOfLE inf_le_right)
  · intro x hx
    simp only [Opens.iSup_mk, Opens.carrier_eq_coe, Opens.coe_inf, Hom.coe_opensRange, Opens.mem_mk,
      Set.mem_iUnion, Set.mem_inter_iff, Set.mem_range, SetLike.mem_coe, exists_and_right]
    refine ⟨?_, hx⟩
    simpa using ⟨_, 𝒰.covers x⟩
  · intro x
    replace h := h (𝒰.idx x)
    rw [← IsOpenImmersion.map_ΓIso_inv] at h
    exact (IsOpenImmersion.ΓIso (𝒰.f (𝒰.idx x)) U).commRingCatIsoToRingEquiv.symm.injective h

/-- If the restriction of a global section to each member of an open cover is zero, then it is
globally zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Open/Variant48a58899b05d24e50b676b87b300b740e5ee366afe74649879986dacb1f72bc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Open/Variant48a58899b05d24e50b676b87b300b740e5ee366afe74649879986dacb1f72bc8.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81ecf6c288a7812bf0a58a612bfe51115ab539e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
