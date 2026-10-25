# offDiag_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ba2f085-c21e-9ed1-f5be-0437fae95cf0",
  "kind": "theorem",
  "lexical_name": "offDiag_insert",
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
  "slug": "offdiag-insert--5f4f561f1c2bb1521de1799a",
  "source": {
    "blob": "c39088ed5447a088939edfa8a34a1a43284d6676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 643,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantcb20f97761f44f75487b0e533b97912b93af9483598eb72003639719fa615965.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f4f561f1c2bb1521de1799aaf3d7a91c5b6978dbef55b9250c5a384d584dfe5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantcb20f97761f44f75487b0e533b97912b93af9483598eb72003639719fa615965.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ba2f085-c21e-9ed1-f5be-0437fae95cf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–661.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem offDiag_insert (ha : a ∉ s) : (insert a s).offDiag = s.offDiag ∪ {a} ×ˢ s ∪ s ×ˢ {a} := by
  rw [insert_eq, union_comm, offDiag_union, offDiag_singleton, union_empty, union_right_comm]
  rw [disjoint_left]
  rintro b hb (rfl : b = a)
  exact ha hb
#align set.off_diag_insert Set.offDiag_insert

end OffDiag

/-! ### Cartesian set-indexed product of sets -/


section Pi

variable {ι : Type*} {α β : ι → Type*} {s s₁ s₂ : Set ι} {t t₁ t₂ : ∀ i, Set (α i)} {i : ι}

/-- Given an index set `ι` and a family of sets `t : Π i, Set (α i)`, `pi s t`
is the set of dependent functions `f : Πa, π a` such that `f a` belongs to `t a`
whenever `a ∈ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantcb20f97761f44f75487b0e533b97912b93af9483598eb72003639719fa615965.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantcb20f97761f44f75487b0e533b97912b93af9483598eb72003639719fa615965.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c39088ed5447a088939edfa8a34a1a43284d6676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
