# mulRight_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86286316-5975-0340-bb0d-ac1fa935605a",
  "kind": "theorem",
  "lexical_name": "mulRight_one",
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
  "slug": "mulright-one--dd915a7f8ecadcf874efd126",
  "source": {
    "blob": "2d741a785bf910ff9325648139dd32f8f6573b67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 220,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd915a7f8ecadcf874efd12647cb1033737be14c9b87839749113c31e771dc64",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86286316-5975-0340-bb0d-ac1fa935605a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulRight_one : mulRight R (1 : A) = LinearMap.id := by
  ext
  simp only [LinearMap.id_coe, mul_one, id.def, mulRight_apply]
#align linear_map.mul_right_one LinearMap.mulRight_one

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d741a785bf910ff9325648139dd32f8f6573b67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
