# SmoothFramedSurgeryTheory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5eeacdb8bac99e99b7c7032940f2af43b7518fb78d4b4034e450084a77dcc9e1",
  "kind": "structure",
  "lexical_name": "SmoothFramedSurgeryTheory",
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
  "slug": "smoothframedsurgerytheory--c8103a968c84f6e9404ca90a",
  "source": {
    "blob": "4c0cf203b0b4e4681fac58b362ce8628421da4de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8103a968c84f6e9404ca90aa7cc492a333cfbdd338bd45c5c93a69518fe0961",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5eeacdb8bac99e99b7c7032940f2af43b7518fb78d4b4034e450084a77dcc9e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SmoothFramedSurgeryTheory where
  Manifold : Type uS
  FramedEmbedding : Nat -> Nat -> Manifold -> Type uS
  FramedIsotopic :
    {p q : Nat} -> {M : Manifold} ->
      FramedEmbedding p q M -> FramedEmbedding p q M -> Prop
  Disjoint :
    {p q p' q' : Nat} -> {M : Manifold} ->
      FramedEmbedding p q M -> FramedEmbedding p' q' M -> Prop
  RelBoundaryDiffeomorphic : Manifold -> Manifold -> Prop
  rel_refl : forall X, RelBoundaryDiffeomorphic X X
  rel_symm : forall {X Y},
    RelBoundaryDiffeomorphic X Y -> RelBoundaryDiffeomorphic Y X
  rel_trans : forall {X Y Z},
    RelBoundaryDiffeomorphic X Y -> RelBoundaryDiffeomorphic Y Z ->
      RelBoundaryDiffeomorphic X Z
  surgery :
    {p q : Nat} -> {M : Manifold} -> FramedEmbedding p q M -> Manifold
  Trace : Manifold -> Manifold -> Type uS
  TraceBoundaryRelative :
    {M N : Manifold} -> Trace M N -> Prop
  framed_isotopy_invariant :
    {p q : Nat} -> {M : Manifold} ->
      forall e0 e1 : FramedEmbedding p q M,
        FramedIsotopic e0 e1 ->
          RelBoundaryDiffeomorphic (surgery e0) (surgery e1)

namespace SmoothFramedSurgeryTheory

/-- Relative-boundary diffeomorphism supplied by a framed isotopy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c0cf203b0b4e4681fac58b362ce8628421da4de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
