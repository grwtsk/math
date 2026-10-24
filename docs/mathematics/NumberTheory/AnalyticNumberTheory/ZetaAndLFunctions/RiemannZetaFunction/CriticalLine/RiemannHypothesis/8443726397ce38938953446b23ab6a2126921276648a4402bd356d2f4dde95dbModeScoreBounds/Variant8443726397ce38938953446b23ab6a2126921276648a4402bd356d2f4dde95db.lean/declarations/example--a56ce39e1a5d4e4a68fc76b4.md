# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa03c70cfbfc6c2d996c08e637b23b9fe6f86c1d6cb93757ad07a9252b275201",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--a56ce39e1a5d4e4a68fc76b4",
  "source": {
    "blob": "d1ff136fd6f026e2e1e21643c1e35af2ea4d07f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7,
    "line": 2,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95dbModeScoreBounds/Variant8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a56ce39e1a5d4e4a68fc76b4c4277001e76754ba5011b70bd358332fd4b13c5e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95dbModeScoreBounds/Variant8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa03c70cfbfc6c2d996c08e637b23b9fe6f86c1d6cb93757ad07a9252b275201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2–7.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A y : ℝ) (ha : 3 ≤ A) (hy : A ≤ y) :
  0 ≤ (9+12/(2*A-3)-4*A) - (9+12/(2*y-3)-4*y) := by
  have hdA : 0 < 2*A-3 := by linarith
  have hdy : 0 < 2*y-3 := by linarith
  have hdiv : 12/(2*y-3) ≤ 12/(2*A-3) := div_le_div_of_nonneg_left (by norm_num) hdA (by linarith)
  linarith
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95dbModeScoreBounds/Variant8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95dbModeScoreBounds/Variant8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95db.lean#L2).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1ff136fd6f026e2e1e21643c1e35af2ea4d07f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
