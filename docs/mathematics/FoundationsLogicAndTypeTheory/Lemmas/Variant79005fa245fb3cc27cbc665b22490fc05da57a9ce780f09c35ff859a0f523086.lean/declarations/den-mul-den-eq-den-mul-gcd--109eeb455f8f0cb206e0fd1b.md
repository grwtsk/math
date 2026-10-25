# den_mul_den_eq_den_mul_gcd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2803dec4e903953c0a945bc480dbdb130a934d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79005fa245fb3cc27cbc665b22490fc05da57a9ce780f09c35ff859a0f523086.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:674866a0-aec2-b141-c8df-e4fe9fb3cae8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c9bcb78-b768-45c6-42b9-d29f0cae4f46",
  "kind": "theorem",
  "lexical_name": "den_mul_den_eq_den_mul_gcd",
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
  "slug": "den-mul-den-eq-den-mul-gcd--109eeb455f8f0cb206e0fd1b",
  "source": {
    "blob": "c2803dec4e903953c0a945bc480dbdb130a934d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant79005fa245fb3cc27cbc665b22490fc05da57a9ce780f09c35ff859a0f523086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:109eeb455f8f0cb206e0fd1bccd70d4ab46e59db1f1124e5dc05efa4f2d6ea46",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variant79005fa245fb3cc27cbc665b22490fc05da57a9ce780f09c35ff859a0f523086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c9bcb78-b768-45c6-42b9-d29f0cae4f46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem den_mul_den_eq_den_mul_gcd (q₁ q₂ : ℚ≥0) :
    q₁.den * q₂.den = (q₁ * q₂).den * ((q₁.num * q₂.num).gcd (q₁.den * q₂.den)) := by
  convert! Rat.den_mul_den_eq_den_mul_gcd q₁ q₂
  norm_cast

/-- A version of `NNRat.mul_num` without division. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variant79005fa245fb3cc27cbc665b22490fc05da57a9ce780f09c35ff859a0f523086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant79005fa245fb3cc27cbc665b22490fc05da57a9ce780f09c35ff859a0f523086.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2803dec4e903953c0a945bc480dbdb130a934d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
