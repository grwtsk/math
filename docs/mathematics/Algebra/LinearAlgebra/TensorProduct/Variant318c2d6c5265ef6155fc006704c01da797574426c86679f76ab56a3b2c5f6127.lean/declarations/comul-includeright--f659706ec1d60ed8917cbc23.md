# comul_includeRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08d2d7c1-2647-40a1-32ea-b2462db2be07",
  "kind": "lemma",
  "lexical_name": "comul_includeRight",
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
  "slug": "comul-includeright--f659706ec1d60ed8917cbc23",
  "source": {
    "blob": "3f55abe887d4104554fc5da4bfea572ad7c2c754",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 261,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f659706ec1d60ed8917cbc23cc96397b3328b0e26b458db3fa2a9ceba0fa9b93",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08d2d7c1-2647-40a1-32ea-b2462db2be07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comul_includeRight [CommSemiring A] [CommSemiring B] [Bialgebra R B] [Algebra R A] :
    (RingHomClass.toRingHom (Bialgebra.comulAlgHom A (A ⊗[R] B))).comp
      (RingHomClass.toRingHom Algebra.TensorProduct.includeRight) =
      (Algebra.TensorProduct.mapRingHom (algebraMap R A)
        (RingHomClass.toRingHom (Algebra.TensorProduct.includeRight (A := A)))
        (RingHomClass.toRingHom (Algebra.TensorProduct.includeRight (A := A)))
        (by simp [← IsScalarTower.algebraMap_eq])
        (by simp [← IsScalarTower.algebraMap_eq])).comp
        (RingHomClass.toRingHom (Bialgebra.comulAlgHom R B)) := by
  ext x; simp [← (ℛ R x).eq, TensorProduct.tmul_sum]

section CommSemiring
variable [CommSemiring A] [Bialgebra R A]

variable (R A) in
/-- Multiplication on a commutative bialgebra as a bialgebra hom. -/
@[expose, simps toCoalgHom]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f55abe887d4104554fc5da4bfea572ad7c2c754` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
