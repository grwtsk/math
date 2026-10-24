# mapHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1aa93b9b30f05d70d64f570053da5670e9f2e4112ebe358e48ad20f6ed285c86",
  "kind": "def",
  "lexical_name": "mapHom",
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
  "slug": "maphom--a52556c63bfce8ebe4e84da8",
  "source": {
    "blob": "4bb7d3dff5a90740c56357bf01353fa67adc82c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 302,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variante875adba11c9b41f24ba1f512b441a5c4d6f9f830b2fe0eb6919b7569df7d194.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a52556c63bfce8ebe4e84da825a8d5cd2ff4eee6c038ef8e258d88420027b057",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/VariableChange/Variante875adba11c9b41f24ba1f512b441a5c4d6f9f830b2fe0eb6919b7569df7d194.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1aa93b9b30f05d70d64f570053da5670e9f2e4112ebe358e48ad20f6ed285c86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapHom : VariableChange R →* VariableChange A where
  toFun := map φ
  map_one' := by
    simp only [one_def, map]
    ext <;> simp only [map_one, Units.val_one, map_zero]
  map_mul' C C' := by
    simp only [mul_def, map]
    ext <;> map_simp <;> simp only [Units.coe_map, Units.coe_map_inv, MonoidHom.coe_coe]

end VariableChange

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/VariableChange/Variante875adba11c9b41f24ba1f512b441a5c4d6f9f830b2fe0eb6919b7569df7d194.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variante875adba11c9b41f24ba1f512b441a5c4d6f9f830b2fe0eb6919b7569df7d194.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bb7d3dff5a90740c56357bf01353fa67adc82c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
