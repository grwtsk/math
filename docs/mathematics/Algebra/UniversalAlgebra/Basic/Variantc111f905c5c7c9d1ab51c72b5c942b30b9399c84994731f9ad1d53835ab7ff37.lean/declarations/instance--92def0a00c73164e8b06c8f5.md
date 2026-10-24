# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d488832f6d93c4f0bf467a59ab4863aa9826c6f4b8eae36a24c9c7d1e6f6d0ae",
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
  "slug": "instance--92def0a00c73164e8b06c8f5",
  "source": {
    "blob": "9e12f5af8a0eddac3a2b81d376735edbd2f197ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 304,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92def0a00c73164e8b06c8f5affe431a63c762171d01d7ee967b983da0f4a01d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d488832f6d93c4f0bf467a59ab4863aa9826c6f4b8eae36a24c9c7d1e6f6d0ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [NonUnitalSemiring R] [StarRing R] [PartialOrder R] [StarOrderedRing R] :
    StarOrderedRing Rᵐᵒᵖ where
  le_iff x y := by
    rw [← unop_le_unop, StarOrderedRing.le_iff, op_surjective.exists,
      ← (AddSubmonoid.closure _).comap_map_eq_of_injective opAddEquiv.injective]
    congr! with p
    · simp [AddMonoidHom.map_mclosure, ← range_comp', Function.comp_def,
        ← (star_involutive.surjective.comp op_surjective).range_comp]
    · simp [← op_inj (α := R)]

end MulOpposite

section StarModule

variable {A : Type*} [Semiring R] [PartialOrder R] [StarRing R] [StarOrderedRing R]
  [NonUnitalRing A] [StarRing A] [PartialOrder A] [StarOrderedRing A] [Module R A]
  [StarModule R A] [NoZeroSMulDivisors R A] [IsScalarTower R A A] [SMulCommClass R A A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e12f5af8a0eddac3a2b81d376735edbd2f197ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
