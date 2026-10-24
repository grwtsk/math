# weighted_selberg_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42cbc2ed65d8f624303a531c302e48b172187e63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c562ac5a-6d25-1a9b-99fc-6641d1d3818d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90b93cbb-da31-9bdc-0f30-cb1dbde27589",
  "kind": "theorem",
  "lexical_name": "weighted_selberg_identity",
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
  "slug": "weighted-selberg-identity--c36519d2be1d4492672ac2d8",
  "source": {
    "blob": "42cbc2ed65d8f624303a531c302e48b172187e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransport/Variant75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c36519d2be1d4492672ac2d8b9f4c884b2c5698bb78af45206e0d402ae72d91e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransport/Variant75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90b93cbb-da31-9bdc-0f30-cb1dbde27589`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_selberg_identity (A : ℝ) (n : ℕ) (hn : 2 ≤ n) :
    selbergCoefficient n * selbergSourceWeight A n =
      ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
        sourceCorrelation explicitSecondDerivative A (Real.log n) +
      (∑ d ∈ n.divisors,
        ArithmeticFunction.vonMangoldt d * ArithmeticFunction.vonMangoldt (n / d)) *
          selbergSourceWeight A n := by
  have hnR : (1 : ℝ) < n := by exact_mod_cast (show 1 < n by omega)
  have hl : Real.log (n : ℝ) ≠ 0 := (Real.log_pos hnR).ne'
  unfold selbergCoefficient selbergSourceWeight
  field_simp

/-- The Selberg rearrangement is bound to the complete original source sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransport/Variant75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransport/Variant75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42cbc2ed65d8f624303a531c302e48b172187e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
