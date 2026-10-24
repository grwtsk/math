# instLowerTopologyProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b0bfa87ba74fb73a7394d50c52d0cf64f94b31bc6e768510ef14c17e377d6f1",
  "kind": "instance",
  "lexical_name": "instLowerTopologyProd",
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
  "slug": "instlowertopologyprod--1bdcb5635488085a5fdfe7d5",
  "source": {
    "blob": "3353e08d41684890bae199a04f9db4f0f84fcb57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 438,
    "path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant0d0559a7f1418066f2bebd7b0dc4382955e3d17fea4aabc0dbb1f15b97f61bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bdcb5635488085a5fdfe7d5faaefd1f8f1ce54782a8f1f5edadf26d0ada4c04",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowerUpperTopology/Variant0d0559a7f1418066f2bebd7b0dc4382955e3d17fea4aabc0dbb1f15b97f61bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b0bfa87ba74fb73a7394d50c52d0cf64f94b31bc6e768510ef14c17e377d6f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLowerTopologyProd [Preorder α] [TopologicalSpace α] [LowerTopology α] [OrderBot α]
    [Preorder β] [TopologicalSpace β] [LowerTopology β] [OrderBot β] : LowerTopology (α × β) where
  topology_eq_lowerTopology := by
    refine' le_antisymm (le_generateFrom _) _
    · rintro _ ⟨x, rfl⟩
      exact (isClosed_Ici.prod isClosed_Ici).isOpen_compl
    rw [(LowerTopology.isTopologicalBasis.prod LowerTopology.isTopologicalBasis).eq_generateFrom,
      le_generateFrom_iff_subset_isOpen, image2_subset_iff]
    rintro _ ⟨s, hs, rfl⟩ _ ⟨t, ht, rfl⟩
    dsimp
    simp_rw [coe_upperClosure, compl_iUnion, prod_eq, preimage_iInter, preimage_compl]
    -- without `let`, `refine` tries to use the product topology and fails
    let _ : TopologicalSpace (α × β) := generateFrom { s | ∃ a, (Ici a)ᶜ = s }
    refine (isOpen_biInter hs fun a _ => ?_).inter (isOpen_biInter ht fun b _ => ?_)
    · exact GenerateOpen.basic _ ⟨(a, ⊥), by simp [Ici_prod_eq, prod_univ]⟩
    · exact GenerateOpen.basic _ ⟨(⊥, b), by simp [Ici_prod_eq, univ_prod]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowerUpperTopology/Variant0d0559a7f1418066f2bebd7b0dc4382955e3d17fea4aabc0dbb1f15b97f61bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant0d0559a7f1418066f2bebd7b0dc4382955e3d17fea4aabc0dbb1f15b97f61bb3.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3353e08d41684890bae199a04f9db4f0f84fcb57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
