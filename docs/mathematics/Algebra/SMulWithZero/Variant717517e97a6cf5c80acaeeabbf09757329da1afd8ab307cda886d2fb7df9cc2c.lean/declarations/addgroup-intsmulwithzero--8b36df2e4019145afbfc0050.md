# AddGroup.intSMulWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aeb0718ebb8a6fae3bf9075ae1d09988feb30f3ce5120d269c54a4ed1592f5f4",
  "kind": "instance",
  "lexical_name": "AddGroup.intSMulWithZero",
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
  "slug": "addgroup-intsmulwithzero--8b36df2e4019145afbfc0050",
  "source": {
    "blob": "eee041af0121a51ab870069d6b5f93bdd7a90b22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 135,
    "path": "GRWTSK/Algebra/SMulWithZero/Variant717517e97a6cf5c80acaeeabbf09757329da1afd8ab307cda886d2fb7df9cc2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b36df2e4019145afbfc0050c30c5c93e43c8e9b36cf0ed79a9470e30488f0ee",
  "verification": {
    "reference": "docs/verification/Algebra/SMulWithZero/Variant717517e97a6cf5c80acaeeabbf09757329da1afd8ab307cda886d2fb7df9cc2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aeb0718ebb8a6fae3bf9075ae1d09988feb30f3ce5120d269c54a4ed1592f5f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance AddGroup.intSMulWithZero [AddGroup M] : SMulWithZero ℤ M where
  smul_zero := zsmul_zero
  zero_smul := zero_zsmul
#align add_group.int_smul_with_zero AddGroup.intSMulWithZero

section MonoidWithZero

variable [MonoidWithZero R] [MonoidWithZero R'] [Zero M]

variable (R M)

/-- An action of a monoid with zero `R` on a Type `M`, also with `0`, extends `MulAction` and
is compatible with `0` (both in `R` and in `M`), with `1 ∈ R`, and with associativity of
multiplication on the monoid `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SMulWithZero/Variant717517e97a6cf5c80acaeeabbf09757329da1afd8ab307cda886d2fb7df9cc2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SMulWithZero/Variant717517e97a6cf5c80acaeeabbf09757329da1afd8ab307cda886d2fb7df9cc2c.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eee041af0121a51ab870069d6b5f93bdd7a90b22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
