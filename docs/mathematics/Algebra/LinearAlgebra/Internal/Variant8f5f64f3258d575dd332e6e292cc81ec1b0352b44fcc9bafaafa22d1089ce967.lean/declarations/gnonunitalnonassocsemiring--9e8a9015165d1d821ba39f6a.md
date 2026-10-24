# gnonUnitalNonAssocSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78ec17a4e509307acaee8b9dd6f018c03f8074af7e39d76a8daefb88c23fcfbd",
  "kind": "instance",
  "lexical_name": "gnonUnitalNonAssocSemiring",
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
  "slug": "gnonunitalnonassocsemiring--9e8a9015165d1d821ba39f6a",
  "source": {
    "blob": "55cff02da3dc2a98053f0c407d56f81f8468ad3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e8a9015165d1d821ba39f6ab2056263987a06903bb95e5ea5a1f9233f751498",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78ec17a4e509307acaee8b9dd6f018c03f8074af7e39d76a8daefb88c23fcfbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance gnonUnitalNonAssocSemiring [Add ι] [NonUnitalNonAssocSemiring R] [SetLike σ R]
    [AddSubmonoidClass σ R] (A : ι → σ) [SetLike.GradedMul A] :
    DirectSum.GNonUnitalNonAssocSemiring fun i => A i :=
  { SetLike.gMul A with
    mul_zero := fun _ => Subtype.ext (mul_zero _)
    zero_mul := fun _ => Subtype.ext (zero_mul _)
    mul_add := fun _ _ _ => Subtype.ext (mul_add _ _ _)
    add_mul := fun _ _ _ => Subtype.ext (add_mul _ _ _) }

/-- Build a `DirectSum.GSemiring` instance for a collection of additive submonoids. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variant8f5f64f3258d575dd332e6e292cc81ec1b0352b44fcc9bafaafa22d1089ce967.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55cff02da3dc2a98053f0c407d56f81f8468ad3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
