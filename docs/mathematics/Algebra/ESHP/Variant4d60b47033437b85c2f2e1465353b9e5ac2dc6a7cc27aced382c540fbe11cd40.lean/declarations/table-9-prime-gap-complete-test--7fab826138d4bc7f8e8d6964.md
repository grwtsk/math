# table_9_prime_gap_complete_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9e468fee2e01d3278a32ef82ef1c44b2545514b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 431,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77d79b20-7248-336f-12f3-84b36155f8df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:159f5047-80d5-8853-2c03-4a377b3452b4",
  "kind": "theorem",
  "lexical_name": "table_9_prime_gap_complete_test",
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
  "slug": "table-9-prime-gap-complete-test--7fab826138d4bc7f8e8d6964",
  "source": {
    "blob": "b9e468fee2e01d3278a32ef82ef1c44b2545514b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 431,
    "path": "GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fab826138d4bc7f8e8d69640ff0dae5bb698c8783954d139ceb866462ca47e9",
  "verification": {
    "reference": "docs/verification/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:159f5047-80d5-8853-2c03-4a377b3452b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem table_9_prime_gap_complete_test (g P : ℕ) (hg : g < 8) (hg' : 0 < g)
    (hrecord : first_gap_record g P) : (g, P) ∈ table_9 := by
  interval_cases g
  all_goals obtain ⟨⟨rfl, rfl, hP⟩, h⟩ := hrecord
  all_goals norm_num [first_gap_1, first_gap_2, first_gap_3, first_gap_4, first_gap_5,
    first_gap_6, first_gap_7] at h ⊢
  all_goals norm_cast

@[blueprint
  "table-9-prime-gap-complete"
  (title := "Table 9 prime gaps - completeness")
  (statement := /--
  Table 9 contains all first gap records $(g,P)$
  with $g < 1346$ -/)
  (proof := /-- Verified by computer.  Unlikely to be
  formalizable in Lean with current technology, except for
  the small values of the table. -/)
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e468fee2e01d3278a32ef82ef1c44b2545514b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
