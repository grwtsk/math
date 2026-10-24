# theorem_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28c3a745-7657-fd30-28c5-bebc4043f57f",
  "kind": "theorem",
  "lexical_name": "theorem_f",
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
  "slug": "theorem-f--9e4b7c066bd3b9accc7c46a7",
  "source": {
    "blob": "b621f1aa334bf7d3760b92c847894510fa068a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 766,
    "line": 758,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e4b7c066bd3b9accc7c46a7344c1fa9db70936bb59ecea656161d85e23e6498",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28c3a745-7657-fd30-28c5-bebc4043f57f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 758–766.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_f (x : ℝ) (hx : x ≥ 200) :
    pi_r 4 x ≤ 0.237 * x ^ 5 / log x := by sorry

@[blueprint
  "thm:dn-pi5-upper"
  (title := "Del\\'eglise-Nicolas 2019, $\\pi_5$ upper bound")
  (statement := /-- For $x \geq 44$, $\pi_5(x) \leq 0.226\, x^6 / \log x$.
  (Note: the wiki page lists $x^5$ here, but the consistent pattern $x^{r+1}$ and the general bound require $x^6$.) -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean#L758).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b621f1aa334bf7d3760b92c847894510fa068a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
