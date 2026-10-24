# LSeries.abscissaOfAbsConv_le_of_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8de8b993-c880-7668-bb24-2047eab44c95",
  "kind": "lemma",
  "lexical_name": "LSeries.abscissaOfAbsConv_le_of_le_const",
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
  "slug": "lseries-abscissaofabsconv-le-of-le-const--40559d673bbd0314a0fb11b4",
  "source": {
    "blob": "c7f8fd377869d03cbca76de861715af9a0c03f26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant69edbf0d1d31aa639b25134b2bd9bbf66ea324c125df77830b0e4c63897b6071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40559d673bbd0314a0fb11b4e59967c6c8ecf9f8ec0c5e2f7dddcb37d28e65af",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant69edbf0d1d31aa639b25134b2bd9bbf66ea324c125df77830b0e4c63897b6071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8de8b993-c880-7668-bb24-2047eab44c95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries.abscissaOfAbsConv_le_of_le_const {f : ℕ → ℂ} (h : ∃ C, ∀ n ≠ 0, ‖f n‖ ≤ C) :
    abscissaOfAbsConv f ≤ 1 := by
  simpa using abscissaOfAbsConv_le_of_le_const_mul_rpow (x := 0) (by simpa using h)

open Filter in
/-- If `f` is `O(1)`, then the abscissa of absolute convergence of `f` is bounded above by `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant69edbf0d1d31aa639b25134b2bd9bbf66ea324c125df77830b0e4c63897b6071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant69edbf0d1d31aa639b25134b2bd9bbf66ea324c125df77830b0e4c63897b6071.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f8fd377869d03cbca76de861715af9a0c03f26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
