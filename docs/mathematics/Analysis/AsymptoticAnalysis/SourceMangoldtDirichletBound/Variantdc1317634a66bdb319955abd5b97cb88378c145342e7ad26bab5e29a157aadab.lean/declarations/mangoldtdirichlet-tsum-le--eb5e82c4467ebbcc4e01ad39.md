# mangoldtDirichlet_tsum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f2d7077-9f69-a80d-f691-4217c2c3f9a3",
  "kind": "theorem",
  "lexical_name": "mangoldtDirichlet_tsum_le",
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
  "slug": "mangoldtdirichlet-tsum-le--eb5e82c4467ebbcc4e01ad39",
  "source": {
    "blob": "0a6be7b21517ff5179391855e12078d9659adf2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 197,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb5e82c4467ebbcc4e01ad393ee8094de6c8406e33f0e95d0914b3fb593b7ffd",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f2d7077-9f69-a80d-f691-4217c2c3f9a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtDirichlet_tsum_le {c : ℝ} (hc : 1 < c) :
    (∑' n : ℕ, mangoldtDirichletTerm c n) ≤
      1 / (c - 1) ^ 2 + Real.log 2 / (c - 1) := by
  rw [mangoldtDirichlet_tsum_eq_shift hc]
  exact Real.tsum_le_of_sum_range_le
    (fun n => mangoldtDirichletTerm_nonneg c (n + 2)) (mangoldtDirichlet_sum_range_le hc)


/-- Literal arithmetic statement for consumers that do not use the local term abbreviation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a6be7b21517ff5179391855e12078d9659adf2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
