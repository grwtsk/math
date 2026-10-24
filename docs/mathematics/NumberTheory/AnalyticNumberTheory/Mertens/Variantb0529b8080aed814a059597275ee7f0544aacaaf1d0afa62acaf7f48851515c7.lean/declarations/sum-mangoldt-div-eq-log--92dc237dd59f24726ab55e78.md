# sum_mangoldt_div_eq_log'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f327d36731b3b37411ed5b7207cbf3046b62b1dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 391,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92b16ac1-d85f-ca01-182e-2e8403273dbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85ad66bc-db4a-661c-4fef-ab15c4d3506b",
  "kind": "theorem",
  "lexical_name": "sum_mangoldt_div_eq_log'",
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
  "slug": "sum-mangoldt-div-eq-log--92dc237dd59f24726ab55e78",
  "source": {
    "blob": "f327d36731b3b37411ed5b7207cbf3046b62b1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 391,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variantb0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92dc237dd59f24726ab55e783afe9c06dac5f44573202f05b4f9b0300f96cb61",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Mertens/Variantb0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85ad66bc-db4a-661c-4fef-ab15c4d3506b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mangoldt_div_eq_log' :
    (fun x ↦ ∑ d ∈ Ioc 0 ⌊ x ⌋₊, (Λ d) / d) ~[atTop] (fun x ↦ log x) := by
    apply IsLittleO.isEquivalent (IsBigO.trans_isLittleO _ one_eq_o_log)
    convert E₁Λ.bounded using 1

@[blueprint
  "Mertens-first-error-prime"
  (title := "The remainder term in Mertens first theorem (prime form)")
  (statement := /-- We define $E_{1,p}(x) := \sum_{p \leq x} \frac{\log p}{p} - \log x$.
-/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Mertens/Variantb0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variantb0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f327d36731b3b37411ed5b7207cbf3046b62b1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
