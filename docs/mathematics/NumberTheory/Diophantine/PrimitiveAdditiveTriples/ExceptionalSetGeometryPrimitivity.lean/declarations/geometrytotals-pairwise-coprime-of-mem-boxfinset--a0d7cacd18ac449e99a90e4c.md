# geometryTotals_pairwise_coprime_of_mem_boxFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ea95d85-7152-1c60-18a6-45165cb32ba0",
  "kind": "theorem",
  "lexical_name": "geometryTotals_pairwise_coprime_of_mem_boxFinset",
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
  "slug": "geometrytotals-pairwise-coprime-of-mem-boxfinset--a0d7cacd18ac449e99a90e4c",
  "source": {
    "blob": "e5ff8583109ed0814dd13368901e9eee6f3f8c51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0d7cacd18ac449e99a90e4c24480b446723876b13a908579bc17f285fd03328",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ea95d85-7152-1c60-18a6-45165cb32ba0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geometryTotals_pairwise_coprime_of_mem_boxFinset
    {d : ℕ} {p : Parameters d} {q : Point d}
    (hq : q ∈ boxFinset p) :
    Nat.Coprime (p.totalA q.1) (p.totalB q.2.1) ∧
      Nat.Coprime (p.totalA q.1) (p.totalC q.2.2) ∧
      Nat.Coprime (p.totalB q.2.1) (p.totalC q.2.2) := by
  have primitive : SupportPrimitive p q :=
    (mem_boxFinset.mp hq).2.2.2.2.2.2.2
  rcases primitive with ⟨hab, hac, hbc⟩
  refine ⟨?_, ?_, ?_⟩
  · change Nat.Coprime
      (p.residual 0 * monomial q.1)
      (p.residual 1 * monomial q.2.1)
    exact coprime_weighted_totals_of_support <| by
      simpa [Parameters.carrierA, Parameters.carrierB] using hab
  · change Nat.Coprime
      (p.residual 0 * monomial q.1)
      (p.residual 2 * monomial q.2.2)
    exact coprime_weighted_totals_of_support <| by
      simpa [Parameters.carrierA, Parameters.carrierC] using hac
  · change Nat.Coprime
      (p.residual 1 * monomial q.2.1)
      (p.residual 2 * monomial q.2.2)
    exact coprime_weighted_totals_of_support <| by
      simpa [Parameters.carrierB, Parameters.carrierC] using hbc

/-- A stronger pairwise form of the two three-variable gcd assertions printed
in Proposition 4.1. The exact paper predicates are exported separately below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5ff8583109ed0814dd13368901e9eee6f3f8c51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
