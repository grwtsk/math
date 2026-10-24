# Polynomial.algebraPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47c6955d940ba16761656b51c66f93b554ffb0a8fa15edf951e722b362f332a4",
  "kind": "def",
  "lexical_name": "Polynomial.algebraPi",
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
  "slug": "polynomial-algebrapi--e82a022a7ddd9015ac7bd57f",
  "source": {
    "blob": "8c0165dd378b87f53e8126e5d115d5bbf6ad47d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 60,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e82a022a7ddd9015ac7bd57f2a2b55241592c4a64b327c49eba0f946fb9c0cfc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47c6955d940ba16761656b51c66f93b554ffb0a8fa15edf951e722b362f332a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Polynomial.algebraPi : Algebra R[X] (S → T) where
  __ := Polynomial.hasSMulPi' R S T
  algebraMap :=
  { toFun := fun p z => algebraMap S T (aeval z p)
    map_one' := by
      funext z
      simp only [Polynomial.aeval_one, Pi.one_apply, map_one]
    map_mul' := fun f g => by
      funext z
      simp only [Pi.mul_apply, map_mul]
    map_zero' := by
      funext z
      simp only [Polynomial.aeval_zero, Pi.zero_apply, map_zero]
    map_add' := fun f g => by
      funext z
      simp only [Polynomial.aeval_add, Pi.add_apply, map_add] }
  commutes' := fun p f => by
    funext z
    exact mul_comm _ _
  smul_def' := fun p f => by
    funext z
    simp only [polynomial_smul_apply', Algebra.algebraMap_eq_smul_one, RingHom.coe_mk,
      MonoidHom.coe_mk, OneHom.coe_mk, Pi.mul_apply, Algebra.smul_mul_assoc, one_mul]

attribute [local instance] Polynomial.algebraPi

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c0165dd378b87f53e8126e5d115d5bbf6ad47d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
