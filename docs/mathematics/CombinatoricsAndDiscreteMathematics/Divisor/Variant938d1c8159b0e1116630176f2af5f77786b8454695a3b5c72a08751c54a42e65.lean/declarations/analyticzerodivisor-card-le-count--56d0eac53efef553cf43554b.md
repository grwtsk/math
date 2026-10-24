# AnalyticZeroDivisor.card_le_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "209cb48bf0079193f302419520da6ed2dd93e830",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8794aa6-e203-7426-13da-03a0ecb9fc8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bca9bb17-5523-25e0-d901-47f8296c3775",
  "kind": "theorem",
  "lexical_name": "AnalyticZeroDivisor.card_le_count",
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
  "slug": "analyticzerodivisor-card-le-count--56d0eac53efef553cf43554b",
  "source": {
    "blob": "209cb48bf0079193f302419520da6ed2dd93e830",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56d0eac53efef553cf43554bc67c26ab2114697b6119d414136a6add8c44b974",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bca9bb17-5523-25e0-d901-47f8296c3775`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticZeroDivisor.card_le_count
    {xi : ℂ → ℂ}
    {region : Set ℂ}
    (divisor : AnalyticZeroDivisor xi region) :
    divisor.points.card ≤ divisor.count := by
  rw [Finset.card_eq_sum_ones,
    AnalyticZeroDivisor.count]
  exact Finset.sum_le_sum fun z hz =>
    divisor.multiplicity_pos z hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `209cb48bf0079193f302419520da6ed2dd93e830` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
