# iUnionLift_binary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44383136-30ea-45db-45ae-01f8e2d26aa0",
  "kind": "theorem",
  "lexical_name": "iUnionLift_binary",
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
  "slug": "iunionlift-binary--ac680456cfe2054fcab3c1b8",
  "source": {
    "blob": "1a6eeebb681464cda0787260862286a56342d787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac680456cfe2054fcab3c1b83f40ad738aad7bdc4dd23c8cc581f12ed8436f23",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44383136-30ea-45db-45ae-01f8e2d26aa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnionLift_binary (dir : Directed (· ≤ ·) S) (op : T → T → T) (opi : ∀ i, S i → S i → S i)
    (hopi :
      ∀ i x y,
        Set.inclusion (show S i ⊆ T from hT'.symm ▸ Set.subset_iUnion S i) (opi i x y) =
          op (Set.inclusion (show S i ⊆ T from hT'.symm ▸ Set.subset_iUnion S i) x)
            (Set.inclusion (show S i ⊆ T from hT'.symm ▸ Set.subset_iUnion S i) y))
    (opβ : β → β → β) (h : ∀ (i) (x y : S i), f i (opi i x y) = opβ (f i x) (f i y)) (x y : T) :
    iUnionLift S f hf T (le_of_eq hT') (op x y) =
      opβ (iUnionLift S f hf T (le_of_eq hT') x) (iUnionLift S f hf T (le_of_eq hT') y) := by
  subst hT'
  obtain ⟨i, hi⟩ := Set.mem_iUnion.1 x.prop
  obtain ⟨j, hj⟩ := Set.mem_iUnion.1 y.prop
  rcases dir i j with ⟨k, hik, hjk⟩
  rw [iUnionLift_of_mem x (hik hi), iUnionLift_of_mem y (hjk hj), ← h k]
  have hx : x = Set.inclusion (Set.subset_iUnion S k) ⟨x, hik hi⟩ := by
    cases x
    rfl
  have hy : y = Set.inclusion (Set.subset_iUnion S k) ⟨y, hjk hj⟩ := by
    cases y
    rfl
  have hxy : (Set.inclusion (Set.subset_iUnion S k) (opi k ⟨x, hik hi⟩ ⟨y, hjk hj⟩) : α) ∈ S k :=
    (opi k ⟨x, hik hi⟩ ⟨y, hjk hj⟩).prop
  conv_lhs => rw [hx, hy, ← hopi, iUnionLift_of_mem _ hxy]

end UnionLift

variable {S : ι → Set α} {f : ∀ i, S i → β}
  {hf : ∀ (i j) (x : α) (hxi : x ∈ S i) (hxj : x ∈ S j), f i ⟨x, hxi⟩ = f j ⟨x, hxj⟩}
  {hS : iUnion S = univ}

/-- Glue together functions defined on each of a collection `S` of sets that cover a type. See
also `Set.iUnionLift`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a6eeebb681464cda0787260862286a56342d787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
