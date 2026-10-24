# coe_GLPos_coe_GL_coe_matrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:721af536-2e88-1f74-06f6-d34e8a4f372a",
  "kind": "theorem",
  "lexical_name": "coe_GLPos_coe_GL_coe_matrix",
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
  "slug": "coe-glpos-coe-gl-coe-matrix--40ee5ab74de8ce70b01dadc1",
  "source": {
    "blob": "0eb70ed5b32e4a556c3b491753a4187a21b8bc36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 282,
    "path": "GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40ee5ab74de8ce70b01dadc1c34f1f1de60b99a5c0351491f1b05f6b4e76ba9f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:721af536-2e88-1f74-06f6-d34e8a4f372a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_GLPos_coe_GL_coe_matrix (g : SpecialLinearGroup n R) :
    (↑(↑(↑g : GLPos n R) : GL n R) : Matrix n n R) = ↑g :=
  rfl
set_option linter.uppercaseLean3 false in
#align matrix.special_linear_group.coe_GL_pos_coe_GL_coe_matrix Matrix.SpecialLinearGroup.coe_GLPos_coe_GL_coe_matrix

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eb70ed5b32e4a556c3b491753a4187a21b8bc36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
