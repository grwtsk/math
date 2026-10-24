# j_of_isCharTwoJEqZeroNF_of_char_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d68f92c7fde11602eda407bb10231172b8d608f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 622,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33640c63-ed9c-1c29-9613-cef457883c00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2962e7b8-dc28-0f49-a7ab-7a082e90ad52",
  "kind": "theorem",
  "lexical_name": "j_of_isCharTwoJEqZeroNF_of_char_two",
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
  "slug": "j-of-ischartwojeqzeronf-of-char-two--454e8071055625ef868b4138",
  "source": {
    "blob": "4d68f92c7fde11602eda407bb10231172b8d608f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 622,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:454e8071055625ef868b41385cc514972b252abff2a308ad51bed7e24b6dfd7f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2962e7b8-dc28-0f49-a7ab-7a082e90ad52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 622–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem j_of_isCharTwoJEqZeroNF_of_char_two [CharP F 2] : W.j = 0 := by
  rw [j, c₄_of_isCharTwoJEqZeroNF_of_char_two]; simp

end Quantity

/-! ## Normal forms of characteristic = 2 -/

/-- A `WeierstrassCurve` is in normal form of characteristic = 2, if it is
`Y² + XY = X³ + a₂X² + a₆` (`WeierstrassCurve.IsCharTwoJNeZeroNF`) or
`Y² + a₃Y = X³ + a₄X + a₆` (`WeierstrassCurve.IsCharTwoJEqZeroNF`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean#L622).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d68f92c7fde11602eda407bb10231172b8d608f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
