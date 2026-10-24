# exists_finset_of_mem_supr''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e6eda39-97a8-9682-3d7d-466eab65f00d",
  "kind": "theorem",
  "lexical_name": "exists_finset_of_mem_supr''",
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
  "slug": "exists-finset-of-mem-supr--1b670c9f63ce498b434c8e03",
  "source": {
    "blob": "c3706b8a02530204e89d7161d83deebb527a9cba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 689,
    "line": 668,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b670c9f63ce498b434c8e03dd13cadb1a6ae575c18c5ca77f3b083f4fdd6857",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e6eda39-97a8-9682-3d7d-466eab65f00d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 668–689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finset_of_mem_supr'' {ι : Type*} {f : ι → IntermediateField F E}
    (h : ∀ i, Algebra.IsAlgebraic F (f i)) {x : E} (hx : x ∈ ⨆ i, f i) :
    ∃ s : Finset (Σ i, f i), x ∈ ⨆ i ∈ s, adjoin F ((minpoly F (i.2 : _)).rootSet E) := by
-- Porting note: writing `fun i x1 hx1 => ...` does not work.
  refine' exists_finset_of_mem_iSup (SetLike.le_def.mp (iSup_le (fun i => _)) hx)
  intro x1 hx1
  refine' SetLike.le_def.mp (le_iSup_of_le ⟨i, x1, hx1⟩ _)
    (subset_adjoin F (rootSet (minpoly F x1) E) _)
  · rw [IntermediateField.minpoly_eq, Subtype.coe_mk]
  · rw [mem_rootSet_of_ne, minpoly.aeval]
    exact minpoly.ne_zero (isIntegral_iff.mp (isAlgebraic_iff_isIntegral.mp (h i ⟨x1, hx1⟩)))
#align intermediate_field.exists_finset_of_mem_supr'' IntermediateField.exists_finset_of_mem_supr''

end AdjoinSimple

end AdjoinDef

section AdjoinIntermediateFieldLattice

variable {F : Type*} [Field F] {E : Type*} [Field E] [Algebra F E] {α : E} {S : Set E}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean#L668).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3706b8a02530204e89d7161d83deebb527a9cba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
