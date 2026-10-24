# rightInverse_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86921242-a505-0ae8-fae9-db25bac085fa",
  "kind": "theorem",
  "lexical_name": "rightInverse_symm",
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
  "slug": "rightinverse-symm--a49fecaafc9823582f57d493",
  "source": {
    "blob": "48953c98aaca9898e40939cdcd2ee5dbf86b1324",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 424,
    "path": "GRWTSK/Algebra/UniversalAlgebra/StarRingHom/Variant756254cbb9a74dbe85b35d08b2a59b0402552a0ae934424ab63cb7610ded4f2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a49fecaafc9823582f57d493cda2a701d973522be17ab699ac8e70b61ba97c94",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/StarRingHom/Variant756254cbb9a74dbe85b35d08b2a59b0402552a0ae934424ab63cb7610ded4f2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86921242-a505-0ae8-fae9-db25bac085fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightInverse_symm (e : A ≃⋆+* B) : Function.RightInverse e.symm e :=
  e.right_inv

end Basic


section Bijective

variable {F G A B : Type*}
variable [NonUnitalNonAssocSemiring A] [Star A]
variable [NonUnitalNonAssocSemiring B] [Star B]
variable [FunLike F A B] [NonUnitalRingHomClass F A B] [NonUnitalStarRingHomClass F A B]
variable [FunLike G B A]

/-- If a (unital or non-unital) star ring morphism has an inverse, it is an isomorphism of
star rings. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/StarRingHom/Variant756254cbb9a74dbe85b35d08b2a59b0402552a0ae934424ab63cb7610ded4f2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/StarRingHom/Variant756254cbb9a74dbe85b35d08b2a59b0402552a0ae934424ab63cb7610ded4f2d.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48953c98aaca9898e40939cdcd2ee5dbf86b1324` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
