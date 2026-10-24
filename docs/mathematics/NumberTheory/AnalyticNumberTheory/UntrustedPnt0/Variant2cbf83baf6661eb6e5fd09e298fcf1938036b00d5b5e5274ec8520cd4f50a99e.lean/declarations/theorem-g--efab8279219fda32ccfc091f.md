# theorem_g

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af47620dac2a680ca2db6e885de9312fdf311eb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 969,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e35d2ae0-4a10-6127-09b8-a134d634f191",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b467fab-09b0-66f2-53bc-b7edc181fbde",
  "kind": "theorem",
  "lexical_name": "theorem_g",
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
  "slug": "theorem-g--efab8279219fda32ccfc091f",
  "source": {
    "blob": "af47620dac2a680ca2db6e885de9312fdf311eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 977,
    "line": 969,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efab8279219fda32ccfc091f4b94b844a8a63638344eb855189b7053b767fd0e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b467fab-09b0-66f2-53bc-b7edc181fbde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 969–977.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_g (x : ℝ) (hx : x ≥ 44) :
    pi_r 5 x ≤ 0.226 * x ^ 6 / log x := by sorry

@[blueprint
  "thm:dn-pir-general"
  (title := "Del\\'eglise-Nicolas 2019, general $\\pi_r$ upper bound")
  (statement := /-- For $x \geq 1$ and $r \geq 5$,
  $\pi_r(x) \leq \frac{\log 3}{3} \cdot \left(1 + \left(\frac{2}{3}\right)^r\right) \cdot \frac{x^{r+1}}{\log x}$. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant2cbf83baf6661eb6e5fd09e298fcf1938036b00d5b5e5274ec8520cd4f50a99e.lean#L969).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af47620dac2a680ca2db6e885de9312fdf311eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
