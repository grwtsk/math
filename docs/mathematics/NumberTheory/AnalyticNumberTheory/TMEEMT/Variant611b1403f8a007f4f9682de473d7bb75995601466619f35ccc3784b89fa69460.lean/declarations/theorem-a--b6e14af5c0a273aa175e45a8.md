# theorem_a

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ec90d8c858baca8b01364abdfa948bb05f941a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 699,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6aab0874-c6bf-557d-360a-316a25aba344",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:642a0dd5-08de-2e30-334c-8195d836e765",
  "kind": "theorem",
  "lexical_name": "theorem_a",
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
  "slug": "theorem-a--b6e14af5c0a273aa175e45a8",
  "source": {
    "blob": "0ec90d8c858baca8b01364abdfa948bb05f941a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 709,
    "line": 699,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6e14af5c0a273aa175e45a8757ba4fdd05bd79349752ee84fbfe9b788429c9a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:642a0dd5-08de-2e30-334c-8195d836e765`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 699–709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_a (x : ℝ) (hx : x ≥ 905238547) :
    3 * x ^ 2 / (20 * (log x) ^ 4) ≤
      pi_r 1 x - (x ^ 2 / (2 * log x) + x ^ 2 / (4 * (log x) ^ 2) +
        x ^ 2 / (4 * (log x) ^ 3)) := by sorry

@[blueprint
  "thm:dn-pi1-upper"
  (title := "Del\\'eglise-Nicolas 2019, $\\pi_1$ upper bound")
  (statement := /-- For $x \geq 110{,}117{,}910$,
  $\pi_1(x) - \left(\frac{x^2}{2\log x} + \frac{x^2}{4\log^2 x} + \frac{x^2}{4\log^3 x}\right) \leq \frac{107 x^2}{160\log^4 x}$. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean#L699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec90d8c858baca8b01364abdfa948bb05f941a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
