# GradeZero.commRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92a1db2fd10c6538155cc377d60c3b5a27ef5ccd384bcb1f90268360103cd58d",
  "kind": "instance",
  "lexical_name": "GradeZero.commRing",
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
  "slug": "gradezero-commring--a9dcf58d008285e91504ca4a",
  "source": {
    "blob": "596c7e80795a972468850fe67211c18a087215e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 560,
    "path": "GRWTSK/Algebra/Ring/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9dcf58d008285e91504ca4a3fddd850c84458eda6a7c0c014a412f0194b9a20",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92a1db2fd10c6538155cc377d60c3b5a27ef5ccd384bcb1f90268360103cd58d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance GradeZero.commRing : CommRing (A 0) :=
  Function.Injective.commRing (of A 0) DFinsupp.single_injective (of A 0).map_zero (of_zero_one A)
    (of A 0).map_add (of_zero_mul A) (of A 0).map_neg (of A 0).map_sub
    (fun x n =>
      letI : ∀ i, DistribMulAction ℕ (A i) := fun _ => inferInstance
      DFinsupp.single_smul n x)
    (fun x n =>
      letI : ∀ i, DistribMulAction ℤ (A i) := fun _ => inferInstance
      DFinsupp.single_smul n x)
    (fun _ _ => of_zero_pow _ _ _) (ofNatCast A) (ofIntCast A)
#align direct_sum.grade_zero.comm_ring DirectSum.GradeZero.commRing

end CommRing

end GradeZero

section ToSemiring

variable {R : Type*} [∀ i, AddCommMonoid (A i)] [AddMonoid ι] [GSemiring A] [Semiring R]

variable {A}

/-- If two ring homomorphisms from `⨁ i, A i` are equal on each `of A i y`,
then they are equal.

See note [partially-applied ext lemmas]. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `596c7e80795a972468850fe67211c18a087215e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
