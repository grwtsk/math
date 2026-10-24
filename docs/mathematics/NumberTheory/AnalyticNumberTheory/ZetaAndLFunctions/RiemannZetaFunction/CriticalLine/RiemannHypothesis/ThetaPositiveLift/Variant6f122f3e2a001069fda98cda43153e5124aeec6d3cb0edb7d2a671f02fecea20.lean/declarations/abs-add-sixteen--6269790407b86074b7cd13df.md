# abs_add_sixteen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ee12ac0-a832-90d2-e669-ab6e4e60c3b9",
  "kind": "theorem",
  "lexical_name": "abs_add_sixteen",
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
  "slug": "abs-add-sixteen--6269790407b86074b7cd13df",
  "source": {
    "blob": "f81bb188062d7a41ccdfb4f6b89db6a7ea7666b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6f122f3e2a001069fda98cda43153e5124aeec6d3cb0edb7d2a671f02fecea20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6269790407b86074b7cd13df119d3fa0809e632c78684641ed18a034f18aa0b2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6f122f3e2a001069fda98cda43153e5124aeec6d3cb0edb7d2a671f02fecea20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ee12ac0-a832-90d2-e669-ab6e4e60c3b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem abs_add_sixteen
    (a b c d e f g h i j k l m n o p : ℝ) :
    |a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p| ≤
      |a| + |b| + |c| + |d| + |e| + |f| + |g| + |h| +
        |i| + |j| + |k| + |l| + |m| + |n| + |o| + |p| := by
  linarith only [
    abs_add_le a b,
    abs_add_le (a + b) c,
    abs_add_le (a + b + c) d,
    abs_add_le (a + b + c + d) e,
    abs_add_le (a + b + c + d + e) f,
    abs_add_le (a + b + c + d + e + f) g,
    abs_add_le (a + b + c + d + e + f + g) h,
    abs_add_le (a + b + c + d + e + f + g + h) i,
    abs_add_le (a + b + c + d + e + f + g + h + i) j,
    abs_add_le (a + b + c + d + e + f + g + h + i + j) k,
    abs_add_le (a + b + c + d + e + f + g + h + i + j + k) l,
    abs_add_le (a + b + c + d + e + f + g + h + i + j + k + l) m,
    abs_add_le (a + b + c + d + e + f + g + h + i + j + k + l + m) n,
    abs_add_le (a + b + c + d + e + f + g + h + i + j + k + l + m + n) o,
    abs_add_le
      (a + b + c + d + e + f + g + h + i + j + k + l + m + n + o) p]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6f122f3e2a001069fda98cda43153e5124aeec6d3cb0edb7d2a671f02fecea20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6f122f3e2a001069fda98cda43153e5124aeec6d3cb0edb7d2a671f02fecea20.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f81bb188062d7a41ccdfb4f6b89db6a7ea7666b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
