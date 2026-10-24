# instNonUnitalNonAssocSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1dba7859b6363b25a002b9bbfd6ab109768decd877f71e3128fb16833a17a33a",
  "kind": "instance",
  "lexical_name": "instNonUnitalNonAssocSemiring",
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
  "slug": "instnonunitalnonassocsemiring--421a6b2501b9cefc03e16e7a",
  "source": {
    "blob": "b4bdff0d9a680ecb74791d8385109e7bf4facfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 211,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:421a6b2501b9cefc03e16e7ab544f3ed8e2656e634e110848234b4d48e53125b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1dba7859b6363b25a002b9bbfd6ab109768decd877f71e3128fb16833a17a33a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNonUnitalNonAssocSemiring [Preorder α] [LocallyFiniteOrder α]
    [NonUnitalNonAssocSemiring 𝕜] : NonUnitalNonAssocSemiring (IncidenceAlgebra 𝕜 α) where
  __ := instAddCommMonoid
  mul := (· * ·)
  zero := 0
  zero_mul := fun f ↦ by ext; exact sum_eq_zero fun x _ ↦ MulZeroClass.zero_mul _
  mul_zero := fun f ↦ by ext; exact sum_eq_zero fun x _ ↦ MulZeroClass.mul_zero _
  left_distrib := fun f g h ↦ by
    ext; exact Eq.trans (sum_congr rfl fun x _ ↦ left_distrib _ _ _) sum_add_distrib
  right_distrib := fun f g h ↦ by
    ext; exact Eq.trans (sum_congr rfl fun x _ ↦ right_distrib _ _ _) sum_add_distrib

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4bdff0d9a680ecb74791d8385109e7bf4facfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
