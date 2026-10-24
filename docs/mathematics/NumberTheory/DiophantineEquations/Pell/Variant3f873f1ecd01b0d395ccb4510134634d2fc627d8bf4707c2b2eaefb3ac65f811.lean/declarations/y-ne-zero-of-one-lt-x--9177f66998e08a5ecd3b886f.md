# y_ne_zero_of_one_lt_x

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a68df8142d5d37c001d93e02ba9b380c647ff34d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:436e61db-b1fd-b31d-e9dd-33494c080a41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:627264b8-7698-92cc-2882-5062ce762e49",
  "kind": "theorem",
  "lexical_name": "y_ne_zero_of_one_lt_x",
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
  "slug": "y-ne-zero-of-one-lt-x--9177f66998e08a5ecd3b886f",
  "source": {
    "blob": "a68df8142d5d37c001d93e02ba9b380c647ff34d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 228,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9177f66998e08a5ecd3b886f988371beb30ef9fa58ee944e94a333874d1b3164",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:627264b8-7698-92cc-2882-5062ce762e49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem y_ne_zero_of_one_lt_x {a : Solution₁ d} (ha : 1 < a.x) : a.y ≠ 0 := by
  intro hy
  have prop := a.prop
  rw [hy, sq (0 : ℤ), zero_mul, mul_zero, sub_zero] at prop
  exact lt_irrefl _ (((one_lt_sq_iff <| zero_le_one.trans ha.le).mpr ha).trans_eq prop)
#align pell.solution₁.y_ne_zero_of_one_lt_x Pell.Solution₁.y_ne_zero_of_one_lt_x

/-- If a solution has `x > 1`, then `d` is positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a68df8142d5d37c001d93e02ba9b380c647ff34d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
