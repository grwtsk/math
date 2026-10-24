# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f2d94c43ec855860e04a0a6688f888e3e6dec2feb28942cf769c83d26cf7c5d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--db9a8a9f0232c386d8f75b4a",
  "source": {
    "blob": "378ffea58f917442253b30dc389555c2c9014ee3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 272,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db9a8a9f0232c386d8f75b4ab725b674825c709e29cd6bea48ed8116b03d88eb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f2d94c43ec855860e04a0a6688f888e3e6dec2feb28942cf769c83d26cf7c5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CommRing (𝕎 R) :=
  (mapFun.surjective _ <| counit_surjective _).commRing (mapFun <| MvPolynomial.counit _)
    (mapFun.zero _) (mapFun.one _) (mapFun.add _) (mapFun.mul _) (mapFun.neg _) (mapFun.sub _)
    (mapFun.nsmul _) (mapFun.zsmul _) (mapFun.pow _) (mapFun.nat_cast _) (mapFun.int_cast _)

variable {p R}

/-- `WittVector.map f` is the ring homomorphism `𝕎 R →+* 𝕎 S` naturally induced
by a ring homomorphism `f : R →+* S`. It acts coefficientwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `378ffea58f917442253b30dc389555c2c9014ee3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
