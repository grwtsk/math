# coe_iSup_of_directed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fa273ea-4bdb-e477-6ce6-f8e12b6d7d46",
  "kind": "theorem",
  "lexical_name": "coe_iSup_of_directed",
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
  "slug": "coe-isup-of-directed--6d3a1c390612317d64a78167",
  "source": {
    "blob": "f68d5df669ef619d2215dcab83e04f7957aaa0e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 936,
    "line": 907,
    "path": "GRWTSK/Algebra/NonUnitalSubalgebra/Variantd4d16e0048be2f48256841ebe0ae1bfa1e69120656a8b8232f4419c675b41249.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d3a1c390612317d64a7816731a26e1edd9ad637e7441ed212c26c03b732bba1",
  "verification": {
    "reference": "docs/verification/Algebra/NonUnitalSubalgebra/Variantd4d16e0048be2f48256841ebe0ae1bfa1e69120656a8b8232f4419c675b41249.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fa273ea-4bdb-e477-6ce6-f8e12b6d7d46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 907–936.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_iSup_of_directed [Nonempty ι] {S : ι → NonUnitalStarSubalgebra R A}
    (dir : Directed (· ≤ ·) S) : ↑(iSup S) = ⋃ i, (S i : Set A) :=
  let K : NonUnitalStarSubalgebra R A :=
    { carrier := ⋃ i, S i
      zero_mem' :=
        let i := @Nonempty.some ι inferInstance
        Set.mem_iUnion.2 ⟨i, zero_mem (S i)⟩
      mul_mem' := fun hx hy =>
        let ⟨i, hi⟩ := Set.mem_iUnion.1 hx
        let ⟨j, hj⟩ := Set.mem_iUnion.1 hy
        let ⟨k, hik, hjk⟩ := dir i j
        Set.mem_iUnion.2 ⟨k, mul_mem (s := S k) (hik hi) (hjk hj)⟩
      add_mem' := fun hx hy =>
        let ⟨i, hi⟩ := Set.mem_iUnion.1 hx
        let ⟨j, hj⟩ := Set.mem_iUnion.1 hy
        let ⟨k, hik, hjk⟩ := dir i j
        Set.mem_iUnion.2 ⟨k, add_mem (s := S k) (hik hi) (hjk hj)⟩
      smul_mem' := fun r _x hx =>
        let ⟨i, hi⟩ := Set.mem_iUnion.1 hx
        Set.mem_iUnion.2 ⟨i, SMulMemClass.smul_mem (s := (S i)) r hi⟩
      star_mem' := fun hx =>
        let ⟨i, hi⟩ := Set.mem_iUnion.1 hx
        Set.mem_iUnion.2 ⟨i, star_mem (s := (S i)) hi⟩ }
  have : iSup S = K := le_antisymm (iSup_le fun i => Set.subset_iUnion (fun i => (S i : Set A)) i)
    (SetLike.coe_subset_coe.1 (Set.iUnion_subset fun _i => SetLike.coe_subset_coe.2 (le_iSup _ _)))
  this.symm ▸ rfl

/-- Define a non-unital star algebra homomorphism on a directed supremum of non-unital star
subalgebras by defining it on each non-unital star subalgebra, and proving that it agrees on the
intersection of non-unital star subalgebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonUnitalSubalgebra/Variantd4d16e0048be2f48256841ebe0ae1bfa1e69120656a8b8232f4419c675b41249.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonUnitalSubalgebra/Variantd4d16e0048be2f48256841ebe0ae1bfa1e69120656a8b8232f4419c675b41249.lean#L907).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f68d5df669ef619d2215dcab83e04f7957aaa0e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
