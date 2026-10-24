# p_n_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ce3979ff32048626872bfc88c58371b04468b85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 981,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e9a0455-0baf-2ec5-241e-209fa9f2d526",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e71a5750-9afd-a567-a589-448929b5f108",
  "kind": "theorem",
  "lexical_name": "p_n_lower",
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
  "slug": "p-n-lower--d1ae9330a7f5c95225edecd5",
  "source": {
    "blob": "4ce3979ff32048626872bfc88c58371b04468b85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 988,
    "line": 981,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1ae9330a7f5c95225edecd51308219c31ab904d17ed4bda51c06ad5b4155521",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e71a5750-9afd-a567-a589-448929b5f108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 981–988.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem p_n_lower (n : ℕ) (hn : n > 1) :
    nth_prime' n > n * (log n + log (log n) - 1.0072629) := by sorry

@[blueprint
  "thm:robin1983-pn-lower-const1"
  (title := "Robin 1983, lower bound on $p_n$ with constant 1 for small primes")
  (statement := /-- For $p_n \leq 10^{11}$, we have $p_n > n(\log n + \log\log n - 1)$. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean#L981).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ce3979ff32048626872bfc88c58371b04468b85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
