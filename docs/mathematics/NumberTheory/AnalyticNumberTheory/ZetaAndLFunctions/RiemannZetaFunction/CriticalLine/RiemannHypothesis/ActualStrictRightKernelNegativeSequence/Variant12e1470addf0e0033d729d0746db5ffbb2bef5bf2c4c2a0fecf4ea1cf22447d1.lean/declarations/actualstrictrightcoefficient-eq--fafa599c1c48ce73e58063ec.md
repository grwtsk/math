# actualStrictRightCoefficient_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de32bb26-44f0-aeaa-103b-d6222fb6a366",
  "kind": "theorem",
  "lexical_name": "actualStrictRightCoefficient_eq",
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
  "slug": "actualstrictrightcoefficient-eq--fafa599c1c48ce73e58063ec",
  "source": {
    "blob": "37aa8190dba5e253fafd5d297a9e8e9c9d3a9279",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualStrictRightKernelNegativeSequence/Variant12e1470addf0e0033d729d0746db5ffbb2bef5bf2c4c2a0fecf4ea1cf22447d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fafa599c1c48ce73e58063eca02aed101a146a78173f1219e8d2d9fc14505339",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualStrictRightKernelNegativeSequence/Variant12e1470addf0e0033d729d0746db5ffbb2bef5bf2c4c2a0fecf4ea1cf22447d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de32bb26-44f0-aeaa-103b-d6222fb6a366`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualStrictRightCoefficient_eq :
    actualLeadingComplexCoefficient actualStrictRightMode = -84 - 108 * Complex.I := by
  have h3 : actualStrictRightMode ^ 3 = -2 + 2 * Complex.I := by
    norm_num [actualStrictRightMode, pow_succ]
  have h5 : actualStrictRightMode ^ 5 = -4 - 4 * Complex.I := by
    norm_num [actualStrictRightMode, pow_succ]
  rw [actualLeadingComplexCoefficient_eq actualStrictRightMode_re_pos, h3, h5]
  apply Complex.ext <;> norm_num [Complex.div_re, Complex.div_im, Complex.normSq]

/-- The ordinary-square coefficient has a strictly negative real part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualStrictRightKernelNegativeSequence/Variant12e1470addf0e0033d729d0746db5ffbb2bef5bf2c4c2a0fecf4ea1cf22447d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualStrictRightKernelNegativeSequence/Variant12e1470addf0e0033d729d0746db5ffbb2bef5bf2c4c2a0fecf4ea1cf22447d1.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37aa8190dba5e253fafd5d297a9e8e9c9d3a9279` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
