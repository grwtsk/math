# RelCWComplex.Subcomplex.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93b62064413682678623b8fe1428554db1076dbbca1056fbe7855c0a0f397544",
  "kind": "def",
  "lexical_name": "RelCWComplex.Subcomplex.mk'",
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
  "slug": "relcwcomplex-subcomplex-mk--05deb33bd0e1611a199f6eff",
  "source": {
    "blob": "15311ad10986cc984a38ac7dee6e2fc5ae8a76f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 786,
    "line": 755,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05deb33bd0e1611a199f6effe8e782fb9e19c15f18730c339d8a5a6bfed9f97b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93b62064413682678623b8fe1428554db1076dbbca1056fbe7855c0a0f397544`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–786.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RelCWComplex.Subcomplex.mk' [T2Space X] (C : Set X) {D : Set X} [RelCWComplex C D]
    (E : Set X) (I : Π n, Set (cell C n))
    (closedCell_subset : ∀ (n : ℕ) (i : I n), closedCell (C := C) n i ⊆ E)
    (union : D ∪ ⋃ (n : ℕ) (j : I n), openCell (C := C) n j = E) : Subcomplex C where
  carrier := E
  I := I
  closed' := by
    have hEC : (E : Set X) ⊆ C := by
      simp_rw [← union, ← union_iUnion_openCell_eq_complex (C := C)]
      exact union_subset_union_right D
        (iUnion_mono fun n ↦ iUnion_subset fun i ↦ subset_iUnion _ (i : cell C n))
    apply isClosed_of_disjoint_openCell_or_isClosed_inter_closedCell hEC
    · have : D ⊆ E := by
        rw [← union]
        exact subset_union_left
      rw [inter_eq_right.2 this]
      exact isClosedBase C
    intro n _ j
    by_cases h : j ∈ I n
    · right
      suffices closedCell n j ⊆ E by
        rw [inter_eq_right.2 this]
        exact isClosed_closedCell
      exact closedCell_subset n ⟨j, h⟩
    · left
      simp_rw [← union, disjoint_union_left, disjoint_iUnion_left]
      exact ⟨disjointBase n j |>.symm, fun _ _ ↦ disjoint_openCell_of_ne (by aesop)⟩
  union' := union

/-- An alternative version of `Subcomplex.mk`: Instead of requiring that `E` is closed it requires
that for every cell of the subcomplex the corresponding closed cell is a subset of `E`. -/
@[simps! -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15311ad10986cc984a38ac7dee6e2fc5ae8a76f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
