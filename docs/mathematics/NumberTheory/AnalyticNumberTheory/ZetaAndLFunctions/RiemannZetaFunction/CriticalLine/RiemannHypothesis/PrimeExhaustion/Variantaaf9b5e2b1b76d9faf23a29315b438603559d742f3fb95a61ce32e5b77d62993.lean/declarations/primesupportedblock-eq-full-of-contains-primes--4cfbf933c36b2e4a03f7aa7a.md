# primeSupportedBlock_eq_full_of_contains_primes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f64cd95dc5a5ab497e89be3c8000e2f541cd3f8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58698f8a-1276-ae86-060b-b2db7c5644d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98d198b6-c73b-45bd-8541-73b07b0003dc",
  "kind": "theorem",
  "lexical_name": "primeSupportedBlock_eq_full_of_contains_primes",
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
  "slug": "primesupportedblock-eq-full-of-contains-primes--4cfbf933c36b2e4a03f7aa7a",
  "source": {
    "blob": "f64cd95dc5a5ab497e89be3c8000e2f541cd3f8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cfbf933c36b2e4a03f7aa7a1fe016dc1fde72c6477498aacaace2de5312f6af",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98d198b6-c73b-45bd-8541-73b07b0003dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSupportedBlock_eq_full_of_contains_primes (A : ℝ) (P : Finset ℕ)
    (hP : ∀ p : ℕ, Nat.Prime p → p ≤ ⌊Real.exp A⌋₊ → p ∈ P) :
    primeSupportedBlock A P =
      ∑ i ∈ Icc 1 ⌊Real.exp A⌋₊, ∑ j ∈ Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
          ThetaRemainder.thetaRemainder A (i * j) := by
  classical
  unfold primeSupportedBlock
  rw [filter_eq_self.mpr (by
    intro a ha
    obtain ⟨hi, hj⟩ := mem_product.mp ha
    exact quotientSupported_of_contains_primes P _ a.1 a.2 hP
      (mem_Icc.mp hi).2 (mem_Icc.mp hj).2)]
  exact sum_product _ _ _

/-- The actual finite prime set exhausts the full remainder without dropping any pair. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f64cd95dc5a5ab497e89be3c8000e2f541cd3f8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
