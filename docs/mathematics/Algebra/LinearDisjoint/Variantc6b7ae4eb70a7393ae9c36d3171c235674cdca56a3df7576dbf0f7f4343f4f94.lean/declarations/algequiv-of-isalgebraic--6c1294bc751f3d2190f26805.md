# algEquiv_of_isAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c68fce0d-2580-9f79-d674-a82cafcf4918",
  "kind": "theorem",
  "lexical_name": "algEquiv_of_isAlgebraic",
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
  "slug": "algequiv-of-isalgebraic--6c1294bc751f3d2190f26805",
  "source": {
    "blob": "b21c2ede7cb426821bfb942a8f1415ae13fe9e66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 635,
    "path": "GRWTSK/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c1294bc751f3d2190f268058903d946c4d0f2e574132e75ba8b9548a3795893",
  "verification": {
    "reference": "docs/verification/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c68fce0d-2580-9f79-d674-a82cafcf4918`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 635–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algEquiv_of_isAlgebraic (H : A.LinearDisjoint L)
    {E' : Type*} [Field E'] [Algebra F E']
    (B : IntermediateField F E')
    (L' : Type*) [Field L'] [Algebra F L'] [Algebra L' E'] [IsScalarTower F L' E']
    (f1 : A ≃ₐ[F] B) (f2 : L ≃ₐ[F] L')
    (halg : Algebra.IsAlgebraic F A ∨ Algebra.IsAlgebraic F L) :
    B.LinearDisjoint L' :=
  .of_isField ((Algebra.TensorProduct.congr f1 f2).symm.toMulEquiv.isField _
    (H.isField_of_isAlgebraic halg))

end LinearDisjoint

end IntermediateField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean#L635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b21c2ede7cb426821bfb942a8f1415ae13fe9e66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
