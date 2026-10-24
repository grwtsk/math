# _root_.GRWTSK.Algebra.CommutativeAlgebra.AlgebraMapApply.Variant727d9c12f2b2d6441425ce42680da94b4e4984c307fa765fd374a327ddac7f13.Algebra.adjoin_singleton_eq_range_aeval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a045aa5e-9be3-563f-eb37-ed0ded9469c7",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.AlgebraMapApply.Variant727d9c12f2b2d6441425ce42680da94b4e4984c307fa765fd374a327ddac7f13.Algebra.adjoin_singleton_eq_range_aeval",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-algebramapapply-variant727d9c12f2--9f86cae48241c49357bc61ac",
  "source": {
    "blob": "ad77ac2de76769e5d07c802ee0d75491401807e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 349,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variantb9da7d1a063f20780c3b114548990ca35007c541da88974b01fc6009d7953be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f86cae48241c49357bc61accc8de50ebd8c7feeea5e630a0331c72e65583cbc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AlgebraMap/Variantb9da7d1a063f20780c3b114548990ca35007c541da88974b01fc6009d7953be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a045aa5e-9be3-563f-eb37-ed0ded9469c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.AlgebraMapApply.Variant727d9c12f2b2d6441425ce42680da94b4e4984c307fa765fd374a327ddac7f13.Algebra.adjoin_singleton_eq_range_aeval (x : A) :
    Algebra.adjoin R {x} = (Polynomial.aeval x).range := by
  rw [← Algebra.map_top, ← adjoin_X, AlgHom.map_adjoin, Set.image_singleton, aeval_X]
#align algebra.adjoin_singleton_eq_range_aeval Algebra.adjoin_singleton_eq_range_aeval

variable {R}

section Semiring

variable [Semiring S] {f : R →+* S}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AlgebraMap/Variantb9da7d1a063f20780c3b114548990ca35007c541da88974b01fc6009d7953be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variantb9da7d1a063f20780c3b114548990ca35007c541da88974b01fc6009d7953be1.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad77ac2de76769e5d07c802ee0d75491401807e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
