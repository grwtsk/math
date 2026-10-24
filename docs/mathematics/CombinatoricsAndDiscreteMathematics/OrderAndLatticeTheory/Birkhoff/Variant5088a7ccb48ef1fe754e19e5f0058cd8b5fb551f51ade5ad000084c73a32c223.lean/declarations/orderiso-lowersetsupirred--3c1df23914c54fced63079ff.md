# OrderIso.lowerSetSupIrred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:286ac2ea4736a5e9b0b653f6fde530330598439ecf2fe620e4c0d5d268c304e8",
  "kind": "def",
  "lexical_name": "OrderIso.lowerSetSupIrred",
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
  "slug": "orderiso-lowersetsupirred--3c1df23914c54fced63079ff",
  "source": {
    "blob": "68452bd35e78566d33d212d7e572bdb20092a92d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5088a7ccb48ef1fe754e19e5f0058cd8b5fb551f51ade5ad000084c73a32c223.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c1df23914c54fced63079ffcab02b3d87c0147ed51e7d5242687f50b3982a26",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5088a7ccb48ef1fe754e19e5f0058cd8b5fb551f51ade5ad000084c73a32c223.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:286ac2ea4736a5e9b0b653f6fde530330598439ecf2fe620e4c0d5d268c304e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def OrderIso.lowerSetSupIrred [OrderBot α] : α ≃o LowerSet {a : α // SupIrred a} :=
  Equiv.toOrderIso
    { toFun := fun a ↦ ⟨{b | ↑b ≤ a}, fun _ _ hcb hba ↦ hba.trans' hcb⟩
      invFun := fun s ↦ (s : Set {a : α // SupIrred a}).toFinset.sup (↑)
      left_inv := fun a ↦ by
        refine le_antisymm (Finset.sup_le fun b ↦ Set.mem_toFinset.1) ?_
        obtain ⟨s, rfl, hs⟩ := exists_supIrred_decomposition a
        exact Finset.sup_le fun i hi ↦
          le_sup_of_le (b := ⟨i, hs hi⟩) (Set.mem_toFinset.2 <| le_sup (f := id) hi) le_rfl
      right_inv := fun s ↦ by
        ext a
        dsimp
        refine ⟨fun ha ↦ ?_, fun ha ↦ ?_⟩
        · obtain ⟨i, hi, ha⟩ := a.2.supPrime.le_finset_sup.1 ha
          exact s.lower ha (Set.mem_toFinset.1 hi)
        · exact le_sup (Set.mem_toFinset.2 ha) }
    (fun _ _ hbc _ ↦ le_trans' hbc) fun _ _ hst ↦ Finset.sup_mono <| Set.toFinset_mono hst

namespace OrderEmbedding

/-- **Birkhoff's Representation Theorem**. Any finite distributive lattice can be embedded in a
powerset lattice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5088a7ccb48ef1fe754e19e5f0058cd8b5fb551f51ade5ad000084c73a32c223.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5088a7ccb48ef1fe754e19e5f0058cd8b5fb551f51ade5ad000084c73a32c223.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68452bd35e78566d33d212d7e572bdb20092a92d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
