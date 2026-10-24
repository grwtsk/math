# notMem_iff_exists_ne_and_isConjRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd9f0eb93edac6bdedb10ab906150f8eed729c86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1195a94f-82c3-8141-a15d-dcb7cd632b4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e896fc9c-b7c8-d06f-fc83-292b8b950da3",
  "kind": "theorem",
  "lexical_name": "notMem_iff_exists_ne_and_isConjRoot",
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
  "slug": "notmem-iff-exists-ne-and-isconjroot--e0dbca322f052996680013f9",
  "source": {
    "blob": "cd9f0eb93edac6bdedb10ab906150f8eed729c86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 359,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0dbca322f052996680013f94210b5d44f51ed5340a48fedd22b8ecf0e447295",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e896fc9c-b7c8-d06f-fc83-292b8b950da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem notMem_iff_exists_ne_and_isConjRoot {x : L} (h : IsSeparable K x)
    (sp : (minpoly K x).Splits (algebraMap K L)) :
    x ∉ (⊥ : Subalgebra K L) ↔ ∃ y : L, x ≠ y ∧ IsConjRoot K x y := by
  calc
    _ ↔ 2 ≤ (minpoly K x).natDegree := (minpoly.two_le_natDegree_iff h.isIntegral).symm
    _ ↔ 2 ≤ Fintype.card ((minpoly K x).rootSet L) :=
      (Polynomial.card_rootSet_eq_natDegree h sp) ▸ Iff.rfl
    _ ↔ Nontrivial ((minpoly K x).rootSet L) := Fintype.one_lt_card_iff_nontrivial
    _ ↔ ∃ y : ((minpoly K x).rootSet L), ↑y ≠ x :=
      (nontrivial_iff_exists_ne ⟨x, mem_rootSet.mpr ⟨minpoly.ne_zero h.isIntegral,
          minpoly.aeval K x⟩⟩).trans ⟨fun ⟨y, hy⟩ => ⟨y, Subtype.coe_ne_coe.mpr hy⟩,
          fun ⟨y, hy⟩ => ⟨y, Subtype.coe_ne_coe.mp hy⟩⟩
    _ ↔ _ :=
      ⟨fun ⟨⟨y, hy⟩, hne⟩ => ⟨y, ⟨hne.symm,
          (isConjRoot_iff_mem_minpoly_rootSet h.isIntegral).mpr hy⟩⟩,
          fun ⟨y, hne, hy⟩ => ⟨⟨y,
          (isConjRoot_iff_mem_minpoly_rootSet h.isIntegral).mp hy⟩, hne.symm⟩⟩

@[deprecated (since := "2025-05-23")]
alias not_mem_iff_exists_ne_and_isConjRoot := notMem_iff_exists_ne_and_isConjRoot
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd9f0eb93edac6bdedb10ab906150f8eed729c86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
