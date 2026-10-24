# Hom.toImage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2862882df141267e1780e4763cc2634c11c592cda3b62b726df90ae26f8799f0",
  "kind": "def",
  "lexical_name": "Hom.toImage",
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
  "slug": "hom-toimage--97b913fcd37f1f3aaa867f42",
  "source": {
    "blob": "cdc31c03361e5e97798706fdc1030713093fd5b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 672,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97b913fcd37f1f3aaa867f42b8d6bac15ce5065488943f3d65f24399362c4598",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2862882df141267e1780e4763cc2634c11c592cda3b62b726df90ae26f8799f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 672–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Hom.toImage : X ⟶ f.image :=
  f.toImageAux.copyBase (fun x ↦ ⟨f.base x, f.range_subset_ker_support ⟨x, rfl⟩⟩)
    (funext fun x ↦ Subtype.ext congr(($f.toImageAux_spec).base x))

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean#L672).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc31c03361e5e97798706fdc1030713093fd5b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
