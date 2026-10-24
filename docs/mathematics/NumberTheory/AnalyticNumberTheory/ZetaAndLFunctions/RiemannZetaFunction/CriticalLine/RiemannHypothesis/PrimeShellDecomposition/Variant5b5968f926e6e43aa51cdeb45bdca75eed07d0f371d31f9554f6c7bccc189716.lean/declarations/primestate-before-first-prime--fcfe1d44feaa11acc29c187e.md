# primeState_before_first_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41efb9b91729ef198825a01dacccfc03fad0a2b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/NumberTheory/Moebius/PrimeShellDecomposition.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c216af9-26d1-1525-ee01-5b412f7f7b01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "41efb9b91729ef198825a01dacccfc03fad0a2b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/Moebius/PrimeShellDecomposition.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80055581-764a-3565-abba-bd0a8298b909",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28bf465a-65e4-5e3c-d40d-eefdfa7e05a1",
  "kind": "theorem",
  "lexical_name": "primeState_before_first_prime",
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
  "slug": "primestate-before-first-prime--fcfe1d44feaa11acc29c187e",
  "source": {
    "blob": "41efb9b91729ef198825a01dacccfc03fad0a2b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeShellDecomposition/Variant5b5968f926e6e43aa51cdeb45bdca75eed07d0f371d31f9554f6c7bccc189716.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcfe1d44feaa11acc29c187edcb9a06c2bd44952a1958250bd4671989ddea1a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeShellDecomposition/Variant5b5968f926e6e43aa51cdeb45bdca75eed07d0f371d31f9554f6c7bccc189716.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28bf465a-65e4-5e3c-d40d-eefdfa7e05a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeState_before_first_prime (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) {u : ℝ} (hu : u < Real.log 2) :
    primeState P u = baseWave u := by
  classical
  change ASBNP04.FiniteProduct.primeState P u = _
  rw [ASBNP04.FiniteProduct.primeState_exact P hP]
  rw [Finset.sum_eq_single ∅]
  · simp only [primeProduct, Finset.prod_empty, ArithmeticFunction.moebius_apply_one,
      Int.cast_one, one_mul]
    exact (congrFun baseWave_eq_atom_one u).symm
  · intro U hU hne
    have htwo := primeProduct_at_least_two P U hP (Finset.mem_powerset.mp hU)
      (Finset.nonempty_iff_ne_empty.mpr hne)
    have hcast : (2 : ℝ) ≤ primeProduct U := by exact_mod_cast htwo
    have hlog : Real.log 2 ≤ Real.log (primeProduct U : ℝ) :=
      Real.log_le_log (by norm_num) hcast
    have hn : ¬Real.log (primeProduct U : ℝ) ≤ u := not_le.mpr (hu.trans_le hlog)
    simp [ASBNP04.FiniteProduct.atom, hn]
  · simp

/-- A sufficiently late singleton insertion acts only on the base wave before T. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeShellDecomposition/Variant5b5968f926e6e43aa51cdeb45bdca75eed07d0f371d31f9554f6c7bccc189716.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeShellDecomposition/Variant5b5968f926e6e43aa51cdeb45bdca75eed07d0f371d31f9554f6c7bccc189716.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41efb9b91729ef198825a01dacccfc03fad0a2b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
