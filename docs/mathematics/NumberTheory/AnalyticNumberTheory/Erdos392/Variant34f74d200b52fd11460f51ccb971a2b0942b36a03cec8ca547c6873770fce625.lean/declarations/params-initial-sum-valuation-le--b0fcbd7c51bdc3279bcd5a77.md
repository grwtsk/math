# Params.initial.sum_valuation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db7997e2-b01f-cd3a-c7af-16ea1c62908f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69ac3a8f-fac6-78ef-3c33-edae7a184efd",
  "kind": "lemma",
  "lexical_name": "Params.initial.sum_valuation_le",
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
  "slug": "params-initial-sum-valuation-le--b0fcbd7c51bdc3279bcd5a77",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1362,
    "line": 1336,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0fcbd7c51bdc3279bcd5a7744f10f8d38a0f750bdeab30655a1ec1ca08b096d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69ac3a8f-fac6-78ef-3c33-edae7a184efd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1336–1362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.initial.sum_valuation_le (P : Params) (p : ℕ) :
    (initial P).sum (fun m ↦ m.factorization p) ≤
      P.M * ∑ m ∈ .Ico (P.n - P.n / P.M) P.n, m.factorization p := by
  have h_subset : P.initial.a ≤ Multiset.bind (replicate P.M (Finset.Ico (P.n - P.n / P.M) P.n))
      (fun s ↦ s.val) := by
    simp only [initial, le_iff_count]
    intro a
    by_cases a ∈ (P.n / P.L).smoothNumbers
    · simp_all only [join, count_filter_of_pos]
      simp only [sum_replicate, count_nsmul, count_bind, map_replicate]
      rfl
    · simp_all [join]
  have h_sum_le : ∀ {s t : Multiset ℕ}, s ≤ t →
      (s.map (fun m ↦ m.factorization p)).sum ≤ (t.map (fun m ↦ m.factorization p)).sum := by
    intro s t hst
    obtain ⟨u, rfl⟩ := Multiset.le_iff_exists_add.mp hst
    simp
  convert h_sum_le h_subset using 1
  simp [Multiset.bind]

@[blueprint
  "initial-factorization-small-prime-le"
  (statement := /-- A small prime $p \leq \sqrt{n}$ can be in surplus by at most $M\log n$.-/)
  (proof := /-- Routine computation using Legendre's formula, noting that at most
  $\log n / \log 2$ powers of $p$ divide any given number up to $n$.-/)
  (latexEnv := "sublemma")
  (discussion := 513)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L1336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
