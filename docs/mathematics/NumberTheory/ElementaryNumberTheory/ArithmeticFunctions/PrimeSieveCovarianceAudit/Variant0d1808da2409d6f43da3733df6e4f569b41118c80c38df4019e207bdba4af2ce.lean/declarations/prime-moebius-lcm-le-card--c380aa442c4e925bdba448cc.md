# prime_moebius_lcm_le_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63185147445520c12347e380f7b493de45c7b842",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85dfdec4-ac1e-dd29-2344-7340f47e18c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a12529f5-bf8f-2799-b2e3-36bda63b930e",
  "kind": "theorem",
  "lexical_name": "prime_moebius_lcm_le_card",
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
  "slug": "prime-moebius-lcm-le-card--c380aa442c4e925bdba448cc",
  "source": {
    "blob": "63185147445520c12347e380f7b493de45c7b842",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 100,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variant0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c380aa442c4e925bdba448ccc3b66f244094664cd43cb7d3b1cfed5555c7927b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variant0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a12529f5-bf8f-2799-b2e3-36bda63b930e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_moebius_lcm_le_card (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (w : ℕ → ℝ) (N W : ℝ) (hN : 0 < N) (hW : 0 ≤ W)
    (hNp : ∀ p ∈ P, N ≤ (p : ℝ)) (hw : ∀ p ∈ P, 0 ≤ w p ∧ w p ≤ W)
    (hcard : (P.card : ℝ) ≤ N) :
    (∑ p ∈ P, ∑ q ∈ P,
      (moebius p : ℝ) * (moebius q : ℝ) * w p * w q / (Nat.lcm p q : ℝ)) ≤
      2 * W ^ 2 * (P.card : ℝ) / N := by
  apply (prime_moebius_lcm_le P hP w N W hN hW hNp hw).trans
  have h0 : 0 ≤ (P.card : ℝ) / N := by positivity
  have h1 : (P.card : ℝ) / N ≤ 1 := (div_le_one hN).mpr hcard
  have hs : ((P.card : ℝ) / N) ^ 2 ≤ (P.card : ℝ) / N := by nlinarith
  calc
    _ ≤ W ^ 2 * (2 * ((P.card : ℝ) / N)) :=
      mul_le_mul_of_nonneg_left (by linarith) (sq_nonneg W)
    _ = _ := by ring

end
end PrimeSieveCovarianceScratch

set_option pp.proofs true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#print PrimeSieveCovarianceScratch.prime_moebius_lcm_identity
#print axioms PrimeSieveCovarianceScratch.prime_moebius_lcm_identity
#print PrimeSieveCovarianceScratch.prime_moebius_lcm_le
#print axioms PrimeSieveCovarianceScratch.prime_moebius_lcm_le
#print PrimeSieveCovarianceScratch.prime_moebius_lcm_le_card
#print axioms PrimeSieveCovarianceScratch.prime_moebius_lcm_le_card
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variant0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variant0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63185147445520c12347e380f7b493de45c7b842` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
