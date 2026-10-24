# tanLocalHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab30ba4df42b74a38d7f6ed60c4b07c9b01c1f3deb6c95e39c08aeef7b9e77d4",
  "kind": "def",
  "lexical_name": "tanLocalHomeomorph",
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
  "slug": "tanlocalhomeomorph--a66d9b1a6b79dcb4d05d7cd7",
  "source": {
    "blob": "d71bb893b369e11eb77d59698a2e62ecc7ba195e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 223,
    "path": "GRWTSK/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a66d9b1a6b79dcb4d05d7cd7ef817fc73c8001a2330cf0be630a42a8359a4386",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab30ba4df42b74a38d7f6ed60c4b07c9b01c1f3deb6c95e39c08aeef7b9e77d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tanLocalHomeomorph : LocalHomeomorph ℝ ℝ where
  toFun := tan
  invFun := arctan
  source := Ioo (-(π / 2)) (π / 2)
  target := univ
  map_source' := mapsTo_univ _ _
  map_target' y _ := arctan_mem_Ioo y
  left_inv' _ hx := arctan_tan hx.1 hx.2
  right_inv' y _ := tan_arctan y
  open_source := isOpen_Ioo
  open_target := isOpen_univ
  continuous_toFun := continuousOn_tan_Ioo
  continuous_invFun := continuous_arctan.continuousOn
#align real.tan_local_homeomorph Real.tanLocalHomeomorph

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d71bb893b369e11eb77d59698a2e62ecc7ba195e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
