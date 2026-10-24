# j_of_isShortNF_of_char_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cbbac28-6157-2891-c4bb-58cfe35357b1",
  "kind": "theorem",
  "lexical_name": "j_of_isShortNF_of_char_three",
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
  "slug": "j-of-isshortnf-of-char-three--c76b82620725901a684891ae",
  "source": {
    "blob": "8dee9d48092d784d4092ce078e66479da3103233",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 263,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variantb47a4bca7d30a7eb7089a089a10107a2c1e83346d99c577652a713e793d8c135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c76b82620725901a684891ae7025479128c5e4c44ca4fe37abc384fce3c49b5e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/NormalForms/Variantb47a4bca7d30a7eb7089a089a10107a2c1e83346d99c577652a713e793d8c135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cbbac28-6157-2891-c4bb-58cfe35357b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem j_of_isShortNF_of_char_three [CharP F 3] : W.j = 0 := by
  rw [j, c₄_of_isShortNF_of_char_three]; simp

end Quantity

section VariableChange

variable [Invertible (2 : R)] [Invertible (3 : R)]

/-- There is an explicit change of variables of a `WeierstrassCurve` to
a short normal form, provided that 2 and 3 are invertible in the ring.
It is the composition of an explicit change of variables with `WeierstrassCurve.toCharNeTwoNF`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/NormalForms/Variantb47a4bca7d30a7eb7089a089a10107a2c1e83346d99c577652a713e793d8c135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variantb47a4bca7d30a7eb7089a089a10107a2c1e83346d99c577652a713e793d8c135.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dee9d48092d784d4092ce078e66479da3103233` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
