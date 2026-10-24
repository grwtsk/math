# squarePrefix_le_baseline

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d466f595-d4eb-8e1f-9ca8-c3e6d442b6cc",
  "kind": "theorem",
  "lexical_name": "squarePrefix_le_baseline",
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
  "slug": "squareprefix-le-baseline--6bc6615e7e7b0d6ea885da37",
  "source": {
    "blob": "a221246273566f67fe6880eef50a8f394591f58d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 115,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variante136a607dca4ad7c86d58f42d0d39e0b2518c036107690921206c8a65daa8162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bc6615e7e7b0d6ea885da37e1ebd952afaf0248ba60149c4f47c3e43b8d9bfe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variante136a607dca4ad7c86d58f42d0d39e0b2518c036107690921206c8a65daa8162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d466f595-d4eb-8e1f-9ca8-c3e6d442b6cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarePrefix_le_baseline (u : ℝ) : squarePrefix u ≤ squarePrefixBaseline := by
  have hs := Finset.sum_subtype_of_mem squarePrefixCoefficient (s := primeLogInventory (u/2))
    (p := Nat.Prime) (fun p hp => (Finset.mem_filter.mp hp).2)
  unfold squarePrefix squarePrefixBaseline
  rw [← hs]
  exact squarePrefixCoefficient_summable.sum_le_tsum _
    (fun p _ => (squarePrefixCoefficient_pos p).le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variante136a607dca4ad7c86d58f42d0d39e0b2518c036107690921206c8a65daa8162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variante136a607dca4ad7c86d58f42d0d39e0b2518c036107690921206c8a65daa8162.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a221246273566f67fe6880eef50a8f394591f58d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
