# Semiring.directSumGSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a9c5d2049b257f992fa6d6c5540cc50fdd8af5fa25410fe6f613566ec7e2f15",
  "kind": "instance",
  "lexical_name": "Semiring.directSumGSemiring",
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
  "slug": "semiring-directsumgsemiring--398edb86b6ad6f001da64f5f",
  "source": {
    "blob": "0ca5de1267dc40b8cac9d3173012e393b84f3236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 708,
    "line": 697,
    "path": "GRWTSK/Algebra/Ring/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:398edb86b6ad6f001da64f5f0e2e5d4d949aed173af27825e9c10a3c78075f52",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a9c5d2049b257f992fa6d6c5540cc50fdd8af5fa25410fe6f613566ec7e2f15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 697–708.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Semiring.directSumGSemiring {R : Type*} [AddMonoid ι] [Semiring R] :
    DirectSum.GSemiring fun _ : ι => R :=
  { NonUnitalNonAssocSemiring.directSumGNonUnitalNonAssocSemiring ι,
    Monoid.gMonoid ι with
    natCast := fun n => n
    natCast_zero := Nat.cast_zero
    natCast_succ := Nat.cast_succ }
#align semiring.direct_sum_gsemiring Semiring.directSumGSemiring

open DirectSum

-- To check `Mul.gmul_mul` matches
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean#L697).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ca5de1267dc40b8cac9d3173012e393b84f3236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
