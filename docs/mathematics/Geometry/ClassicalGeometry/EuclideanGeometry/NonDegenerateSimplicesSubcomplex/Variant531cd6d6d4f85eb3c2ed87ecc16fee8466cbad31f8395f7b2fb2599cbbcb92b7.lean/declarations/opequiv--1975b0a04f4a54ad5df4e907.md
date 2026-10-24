# opEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25553d2a76e52f6c26db67adae6a190f46133778198f3e400f6cc2414b8c340a",
  "kind": "def",
  "lexical_name": "opEquiv",
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
  "slug": "opequiv--1975b0a04f4a54ad5df4e907",
  "source": {
    "blob": "c9f695cdfc66cd373b304d00365005cb3be0419d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 116,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/NonDegenerateSimplicesSubcomplex/Variant531cd6d6d4f85eb3c2ed87ecc16fee8466cbad31f8395f7b2fb2599cbbcb92b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1975b0a04f4a54ad5df4e90762891df2bacfcd2322be3b436a10188cfde7a9c0",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/NonDegenerateSimplicesSubcomplex/Variant531cd6d6d4f85eb3c2ed87ecc16fee8466cbad31f8395f7b2fb2599cbbcb92b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25553d2a76e52f6c26db67adae6a190f46133778198f3e400f6cc2414b8c340a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def opEquiv : A.op.N ≃o A.N where
  toFun x := N.mk' (SSet.N.opEquiv x.toN) x.notMem
  invFun y := N.mk' (SSet.N.opEquiv.symm y.toN) y.notMem
  left_inv _ := rfl
  right_inv _ := rfl
  map_rel_iff' := SSet.N.opEquiv.map_rel_iff

/-- The bijection `A.N ≃ B.N` on nondegenerate simplices not belonging
to a certain subcomplex that is induced by an isomorphism `X ≅ Y` of
simplicial sets which maps `A : X.Subcomplex` to `B : Y.Subcomplex`. -/
@[implicit_reducible, simps -isSimp apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/NonDegenerateSimplicesSubcomplex/Variant531cd6d6d4f85eb3c2ed87ecc16fee8466cbad31f8395f7b2fb2599cbbcb92b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/NonDegenerateSimplicesSubcomplex/Variant531cd6d6d4f85eb3c2ed87ecc16fee8466cbad31f8395f7b2fb2599cbbcb92b7.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9f695cdfc66cd373b304d00365005cb3be0419d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
