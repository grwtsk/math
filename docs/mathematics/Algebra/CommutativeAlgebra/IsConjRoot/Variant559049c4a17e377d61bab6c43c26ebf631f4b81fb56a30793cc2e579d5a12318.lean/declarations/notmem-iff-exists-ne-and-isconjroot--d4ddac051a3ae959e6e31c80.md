# notMem_iff_exists_ne_and_isConjRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24298079-fb50-adb9-e209-9410f284c392",
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
  "slug": "notmem-iff-exists-ne-and-isconjroot--d4ddac051a3ae959e6e31c80",
  "source": {
    "blob": "a8df8e6bb099cc0d94c6ecb0d05cf5629ba7173d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 367,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsConjRoot/Variant559049c4a17e377d61bab6c43c26ebf631f4b81fb56a30793cc2e579d5a12318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4ddac051a3ae959e6e31c808d26cf3e4dca6f40ce85e826fc915c360f36be7b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsConjRoot/Variant559049c4a17e377d61bab6c43c26ebf631f4b81fb56a30793cc2e579d5a12318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24298079-fb50-adb9-e209-9410f284c392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–386.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsConjRoot/Variant559049c4a17e377d61bab6c43c26ebf631f4b81fb56a30793cc2e579d5a12318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsConjRoot/Variant559049c4a17e377d61bab6c43c26ebf631f4b81fb56a30793cc2e579d5a12318.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8df8e6bb099cc0d94c6ecb0d05cf5629ba7173d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
