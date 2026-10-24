# isCyclotomicExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb6224de03993b0bccd5f3944b46ba030d99aa9c47a3199d800e1db79c5ee4b0",
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
  "slug": "iscyclotomicextension--9d15550a94e2d79ebcf1980a",
  "source": {
    "blob": "0555b555990870f5bab2dac123a1dc46f5586630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 552,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d15550a94e2d79ebcf1980a12708d193d6d613e1648b620a3f926d94ba07ed9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb6224de03993b0bccd5f3944b46ba030d99aa9c47a3199d800e1db79c5ee4b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–581.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0555b555990870f5bab2dac123a1dc46f5586630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
