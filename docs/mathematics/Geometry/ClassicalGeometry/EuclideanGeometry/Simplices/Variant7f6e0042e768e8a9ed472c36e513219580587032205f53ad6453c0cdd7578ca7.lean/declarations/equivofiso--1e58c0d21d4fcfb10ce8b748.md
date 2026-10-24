# equivOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2dd4de2dddba607568d3a20ea859f2b165129c4f1a92bf6728e38423909d6dbf",
  "kind": "def",
  "lexical_name": "equivOfIso",
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
  "slug": "equivofiso--1e58c0d21d4fcfb10ce8b748",
  "source": {
    "blob": "89247c60f0a480838e95b004cccbbd631b6ce9e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 179,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Simplices/Variant7f6e0042e768e8a9ed472c36e513219580587032205f53ad6453c0cdd7578ca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e58c0d21d4fcfb10ce8b7484610c46103cf22b5cef0eeed62f205d920074c89",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Simplices/Variant7f6e0042e768e8a9ed472c36e513219580587032205f53ad6453c0cdd7578ca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2dd4de2dddba607568d3a20ea859f2b165129c4f1a92bf6728e38423909d6dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivOfIso {Y : SSet.{u}} (e : X ≅ Y) : X.S ≃ Y.S where
  toFun s := S.mk (e.hom.app _ s.simplex)
  invFun s := S.mk (e.inv.app _ s.simplex)
  left_inv _ := by simp
  right_inv _ := by simp

end S

end SSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Simplices/Variant7f6e0042e768e8a9ed472c36e513219580587032205f53ad6453c0cdd7578ca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Simplices/Variant7f6e0042e768e8a9ed472c36e513219580587032205f53ad6453c0cdd7578ca7.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89247c60f0a480838e95b004cccbbd631b6ce9e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
