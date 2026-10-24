# AlgHom.extendScalarsOfIsLocalization_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a215aa1d-681d-b308-a59e-2a566dcfdffe",
  "kind": "theorem",
  "lexical_name": "AlgHom.extendScalarsOfIsLocalization_apply",
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
  "slug": "alghom-extendscalarsofislocalization-apply--e1238c1667f79b4a1de24f20",
  "source": {
    "blob": "43c5ad6059f4ee16137d18d8ef5c32ac7f89abb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 718,
    "path": "GRWTSK/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1238c1667f79b4a1de24f208e7d68b2fb667a161c75bb2085d5f758a6b2ba81",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a215aa1d-681d-b308-a59e-2a566dcfdffe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–724.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AlgHom.extendScalarsOfIsLocalization_apply (f : A →ₐ[R] B) (a : A) :
    f.extendScalarsOfIsLocalization S M a = f a :=
  rfl

/-- For an algebra isomorphism `f : A ≃ₐ[R] B`, if `A` and `B` are algebras over a localization
`S` of `R`, then `f` is automatically an `S`-algebra isomorphism. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43c5ad6059f4ee16137d18d8ef5c32ac7f89abb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
