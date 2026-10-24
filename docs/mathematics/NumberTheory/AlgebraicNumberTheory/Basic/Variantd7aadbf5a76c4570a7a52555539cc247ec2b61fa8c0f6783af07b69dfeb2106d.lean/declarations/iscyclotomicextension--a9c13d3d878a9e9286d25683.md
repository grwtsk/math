# isCyclotomicExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f33207582483bc6b26ad30c45c251b6f1b6d06dd5d45adf324266c1b49c3aae",
  "kind": "instance",
  "lexical_name": "isCyclotomicExtension",
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
  "slug": "iscyclotomicextension--a9c13d3d878a9e9286d25683",
  "source": {
    "blob": "785a5fef31b7119321077f221c4b335f05f447e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 544,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9c13d3d878a9e9286d256839d9f7bfa1d2ae07dddf9410aded3fa1c56dddbd0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f33207582483bc6b26ad30c45c251b6f1b6d06dd5d45adf324266c1b49c3aae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isCyclotomicExtension [NeZero ((n : ℕ) : K)] :
    IsCyclotomicExtension {n} K (CyclotomicField n K) := by
  haveI : NeZero ((n : ℕ) : CyclotomicField n K) :=
    NeZero.nat_of_injective (algebraMap K _).injective
  letI := Classical.decEq (CyclotomicField n K)
  obtain ⟨ζ, hζ⟩ :=
    exists_root_of_splits (algebraMap K (CyclotomicField n K)) (SplittingField.splits _)
      (degree_cyclotomic_pos n K n.pos).ne'
  rw [← eval_map, ← IsRoot.def, map_cyclotomic, isRoot_cyclotomic_iff] at hζ
-- Porting note: the first `?_` was `forall_eq.2 ⟨ζ, hζ⟩` that now fails.
  refine ⟨?_, ?_⟩
  · simp only [mem_singleton_iff, forall_eq]
    exact ⟨ζ, hζ⟩
  · rw [← Algebra.eq_top_iff, ← SplittingField.adjoin_rootSet, eq_comm]
    exact IsCyclotomicExtension.adjoin_roots_cyclotomic_eq_adjoin_nth_roots hζ
#align cyclotomic_field.is_cyclotomic_extension CyclotomicField.isCyclotomicExtension

end CyclotomicField

end CyclotomicField

section IsDomain

variable [Algebra A K] [IsFractionRing A K]

section CyclotomicRing

/-- If `K` is the fraction field of `A`, the `A`-algebra structure on `CyclotomicField n K`.
-/
@[nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `785a5fef31b7119321077f221c4b335f05f447e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
