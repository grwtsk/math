# weighted_columnTest_at_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e895ec488fea53148d5de6a54bf538dee6b45bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7d03374294db58a81252f22d4e0d9de6881624bffe98f3c3fdd3380ae535604.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78a26a67-d6fe-9808-5b94-d39139dbc383",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b49ba7e-cba4-c208-1d17-c0635ac49aae",
  "kind": "theorem",
  "lexical_name": "weighted_columnTest_at_natural",
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
  "slug": "weighted-columntest-at-natural--5ea9fbf5fd922133062e0aca",
  "source": {
    "blob": "4e895ec488fea53148d5de6a54bf538dee6b45bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/17SourceJointMangoldtWork/Variantd7d03374294db58a81252f22d4e0d9de6881624bffe98f3c3fdd3380ae535604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ea9fbf5fd922133062e0acafb661794de9ec194f8787b1da5b4664f5882799c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/17SourceJointMangoldtWork/Variantd7d03374294db58a81252f22d4e0d9de6881624bffe98f3c3fdd3380ae535604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b49ba7e-cba4-c208-1d17-c0635ac49aae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_columnTest_at_natural (A : ℝ) (m k : ℕ)
    (hm : 0 < m) (hk : 0 < k) :
    vonMangoldt m / (m : ℝ) * columnTest A k (Real.log (m : ℝ)) =
      vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ) := by
  rw [show vonMangoldt m / (m : ℝ) * columnTest A k (Real.log (m : ℝ)) =
    vonMangoldt m * (columnTest A k (Real.log (m : ℝ)) / (m : ℝ)) by ring,
    columnTest_at_natural A m k hm hk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/17SourceJointMangoldtWork/Variantd7d03374294db58a81252f22d4e0d9de6881624bffe98f3c3fdd3380ae535604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/17SourceJointMangoldtWork/Variantd7d03374294db58a81252f22d4e0d9de6881624bffe98f3c3fdd3380ae535604.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e895ec488fea53148d5de6a54bf538dee6b45bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
