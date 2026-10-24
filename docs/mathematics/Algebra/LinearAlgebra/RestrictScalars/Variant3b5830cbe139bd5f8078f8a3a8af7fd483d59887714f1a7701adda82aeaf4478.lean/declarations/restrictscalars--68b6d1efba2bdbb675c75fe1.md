# restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36b23e66198e6f8397d8a8c1a37c90ad496fdd513d775a4b6a7504e56285f4ba",
  "kind": "def",
  "lexical_name": "restrictScalars",
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
  "slug": "restrictscalars--68b6d1efba2bdbb675c75fe1",
  "source": {
    "blob": "e70e369b2fb9c6a99ac4c90d1a7e1b92120ffe24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 44,
    "path": "GRWTSK/Algebra/LinearAlgebra/RestrictScalars/Variant3b5830cbe139bd5f8078f8a3a8af7fd483d59887714f1a7701adda82aeaf4478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68b6d1efba2bdbb675c75fe1d085a680254189692db8b0601f379554b4840ca8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RestrictScalars/Variant3b5830cbe139bd5f8078f8a3a8af7fd483d59887714f1a7701adda82aeaf4478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36b23e66198e6f8397d8a8c1a37c90ad496fdd513d775a4b6a7504e56285f4ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def restrictScalars : Presentation A M :=
  ofExact (g := LinearMap.restrictScalars A presM.π) (presB.finsupp presM.G) data
    presM.exact presM.surjective_π (by
      ext v
      dsimp
      simp only [Submodule.mem_top, iff_true]
      apply Finsupp.induction
      · simp
      · intro r b w _ _ hw
        refine Submodule.add_mem _ ?_ hw
        obtain ⟨β, rfl⟩ := presB.surjective_π b
        apply Finsupp.induction (motive := fun β ↦ Finsupp.single r (presB.π β) ∈ _)
        · simp
        · intro g a f _ _ hf
          rw [map_add, Finsupp.single_add]
          refine Submodule.add_mem _ ?_ hf
          rw [← Finsupp.smul_single_one, ← Finsupp.smul_single_one,
            map_smul, Relations.Solution.π_single, smul_assoc]
          exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨⟨g, r⟩, rfl⟩))

end Presentation

end Module
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RestrictScalars/Variant3b5830cbe139bd5f8078f8a3a8af7fd483d59887714f1a7701adda82aeaf4478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RestrictScalars/Variant3b5830cbe139bd5f8078f8a3a8af7fd483d59887714f1a7701adda82aeaf4478.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e70e369b2fb9c6a99ac4c90d1a7e1b92120ffe24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
