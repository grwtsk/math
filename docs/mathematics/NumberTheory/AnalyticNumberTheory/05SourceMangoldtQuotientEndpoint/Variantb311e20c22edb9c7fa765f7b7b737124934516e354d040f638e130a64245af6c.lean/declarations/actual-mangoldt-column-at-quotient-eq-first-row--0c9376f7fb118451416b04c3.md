# actual_mangoldt_column_at_quotient_eq_first_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "829c79e64cc82e7e95722591abff11860e161f76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b311e20c22edb9c7fa765f7b7b737124934516e354d040f638e130a64245af6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7543069-eeed-c376-c7b4-9fc87d61ef00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb3be64a-81a7-26ff-8b06-57c8a0adb5e6",
  "kind": "theorem",
  "lexical_name": "actual_mangoldt_column_at_quotient_eq_first_row",
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
  "slug": "actual-mangoldt-column-at-quotient-eq-first-row--0c9376f7fb118451416b04c3",
  "source": {
    "blob": "829c79e64cc82e7e95722591abff11860e161f76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 190,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/05SourceMangoldtQuotientEndpoint/Variantb311e20c22edb9c7fa765f7b7b737124934516e354d040f638e130a64245af6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c9376f7fb118451416b04c39d9543f4b26acce5771f8b081950d7924b1e99bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/05SourceMangoldtQuotientEndpoint/Variantb311e20c22edb9c7fa765f7b7b737124934516e354d040f638e130a64245af6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb3be64a-81a7-26ff-8b06-57c8a0adb5e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mangoldt_column_at_quotient_eq_first_row (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let K := sourceKernelCutoff A / (U + 1)
    (∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * K : ℕ) : ℝ)) =
        vonMangoldt (U + 1) * sourcePlainWeight A (((U + 1) * K : ℕ) : ℝ) := by
  exact column_at_quotient A hA

/-- A uniform absolute bound for the single endpoint, not for the whole signed readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/05SourceMangoldtQuotientEndpoint/Variantb311e20c22edb9c7fa765f7b7b737124934516e354d040f638e130a64245af6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/05SourceMangoldtQuotientEndpoint/Variantb311e20c22edb9c7fa765f7b7b737124934516e354d040f638e130a64245af6c.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `829c79e64cc82e7e95722591abff11860e161f76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
