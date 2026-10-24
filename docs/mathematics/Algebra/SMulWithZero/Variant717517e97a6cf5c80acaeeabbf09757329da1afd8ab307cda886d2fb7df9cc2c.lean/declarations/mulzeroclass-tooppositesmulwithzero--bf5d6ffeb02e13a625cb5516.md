# MulZeroClass.toOppositeSMulWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd0a34867d7ff25590e8afcc95c04fef452fa82dbeddc181d2928dae75dfa176",
  "kind": "instance",
  "lexical_name": "MulZeroClass.toOppositeSMulWithZero",
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
  "slug": "mulzeroclass-tooppositesmulwithzero--bf5d6ffeb02e13a625cb5516",
  "source": {
    "blob": "eee041af0121a51ab870069d6b5f93bdd7a90b22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 69,
    "path": "GRWTSK/Algebra/SMulWithZero/Variant717517e97a6cf5c80acaeeabbf09757329da1afd8ab307cda886d2fb7df9cc2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf5d6ffeb02e13a625cb551672a7b0557100d69094635b33b6a9f0543c3a8db0",
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

Occurrence: `declaration:fd0a34867d7ff25590e8afcc95c04fef452fa82dbeddc181d2928dae75dfa176`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance MulZeroClass.toOppositeSMulWithZero [MulZeroClass R] : SMulWithZero Rᵐᵒᵖ R where
  smul := (· • ·)
  smul_zero _ := zero_mul _
  zero_smul := mul_zero
#align mul_zero_class.to_opposite_smul_with_zero MulZeroClass.toOppositeSMulWithZero

variable {M} [Zero R] [Zero M] [SMulWithZero R M]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SMulWithZero/Variant717517e97a6cf5c80acaeeabbf09757329da1afd8ab307cda886d2fb7df9cc2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SMulWithZero/Variant717517e97a6cf5c80acaeeabbf09757329da1afd8ab307cda886d2fb7df9cc2c.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eee041af0121a51ab870069d6b5f93bdd7a90b22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
