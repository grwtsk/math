# instIsLowerProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b927464dead8b7d3a781f743dc1791a2201c5f81c343e4416847bc9a126d3bb",
  "kind": "instance",
  "lexical_name": "instIsLowerProd",
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
  "slug": "instislowerprod--0c1039458b799e4f4ee5db97",
  "source": {
    "blob": "c27d2df7280307e9a366db5c4bbba8dbec1e2a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 506,
    "path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c1039458b799e4f4ee5db972808703367bd4145d79430e3c93b2db3107cf1ea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b927464dead8b7d3a781f743dc1791a2201c5f81c343e4416847bc9a126d3bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsLowerProd [Preorder α] [TopologicalSpace α] [IsLower α]
    [OrderBot α] [Preorder β] [TopologicalSpace β] [IsLower β] [OrderBot β] :
    IsLower (α × β) where
  topology_eq_lowerTopology := by
    refine le_antisymm (le_generateFrom ?_) ?_
    · rintro _ ⟨x, rfl⟩
      exact (isClosed_Ici.prod isClosed_Ici).isOpen_compl
    rw [(IsLower.isTopologicalBasis.prod
      IsLower.isTopologicalBasis).eq_generateFrom, le_generateFrom_iff_subset_isOpen,
      image2_subset_iff]
    rintro _ ⟨s, hs, rfl⟩ _ ⟨t, ht, rfl⟩
    dsimp
    simp_rw [coe_upperClosure, compl_iUnion, prod_eq, preimage_iInter, preimage_compl]
    -- without `let`, `refine` tries to use the product topology and fails
    let _ : TopologicalSpace (α × β) := lower (α × β)
    refine (hs.isOpen_biInter fun a _ => ?_).inter (ht.isOpen_biInter fun b _ => ?_)
    · exact GenerateOpen.basic _ ⟨(a, ⊥), by simp [Ici_prod_eq, prod_univ]⟩
    · exact GenerateOpen.basic _ ⟨(⊥, b), by simp [Ici_prod_eq, univ_prod]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c27d2df7280307e9a366db5c4bbba8dbec1e2a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
