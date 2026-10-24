# table_8_prime_gap_complete

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
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c4e8b20-e0df-b894-c1d1-af15707d73bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf331a11-d1cf-2501-caad-f37d6f4c3bcc",
  "kind": "theorem",
  "lexical_name": "table_8_prime_gap_complete",
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
  "slug": "table-8-prime-gap-complete--1c163d4004d77ca27671ad30",
  "source": {
    "blob": "b9e468fee2e01d3278a32ef82ef1c44b2545514b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 129,
    "path": "GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c163d4004d77ca27671ad30b54a5b38876e2b82b5783d3ca8532d6933ccc384",
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

Occurrence: `result:cf331a11-d1cf-2501-caad-f37d6f4c3bcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem table_8_prime_gap_complete (p g : ℕ) (hp : p ≤ 4 * 10 ^ 18)
    (hrecord : prime_gap_record p g) : (p, g) ∈ table_8 := by
  sorry

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e468fee2e01d3278a32ef82ef1c44b2545514b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
