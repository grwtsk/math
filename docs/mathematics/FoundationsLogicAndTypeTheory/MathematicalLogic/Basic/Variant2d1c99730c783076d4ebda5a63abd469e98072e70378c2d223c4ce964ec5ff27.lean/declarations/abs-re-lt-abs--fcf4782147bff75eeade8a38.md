# abs_re_lt_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bd1286488b7b9fc73a9ca5796151cdd6dc400d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1084,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d1c99730c783076d4ebda5a63abd469e98072e70378c2d223c4ce964ec5ff27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e12fe0c-97f1-2070-9c3f-b81905de4db0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a7cdb5d-1d30-e85a-6141-683dbd161475",
  "kind": "theorem",
  "lexical_name": "abs_re_lt_abs",
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
  "slug": "abs-re-lt-abs--fcf4782147bff75eeade8a38",
  "source": {
    "blob": "8bd1286488b7b9fc73a9ca5796151cdd6dc400d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1089,
    "line": 1084,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2d1c99730c783076d4ebda5a63abd469e98072e70378c2d223c4ce964ec5ff27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcf4782147bff75eeade8a385bec53d00c671f75d6340382dd50ae1145d2c037",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2d1c99730c783076d4ebda5a63abd469e98072e70378c2d223c4ce964ec5ff27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a7cdb5d-1d30-e85a-6141-683dbd161475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1084–1089.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_re_lt_abs {z : ℂ} : |z.re| < Complex.abs z ↔ z.im ≠ 0 := by
  rw [Complex.abs, AbsoluteValue.coe_mk, MulHom.coe_mk, Real.lt_sqrt (abs_nonneg _), normSq_apply,
    _root_.sq_abs, ← sq, lt_add_iff_pos_right, mul_self_pos]
#align complex.abs_re_lt_abs Complex.abs_re_lt_abs

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2d1c99730c783076d4ebda5a63abd469e98072e70378c2d223c4ce964ec5ff27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2d1c99730c783076d4ebda5a63abd469e98072e70378c2d223c4ce964ec5ff27.lean#L1084).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bd1286488b7b9fc73a9ca5796151cdd6dc400d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
