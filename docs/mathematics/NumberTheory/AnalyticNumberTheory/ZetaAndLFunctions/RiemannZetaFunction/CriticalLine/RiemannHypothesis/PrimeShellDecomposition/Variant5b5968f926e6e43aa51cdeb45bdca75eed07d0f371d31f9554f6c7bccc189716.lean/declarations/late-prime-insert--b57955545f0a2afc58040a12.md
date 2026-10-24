# late_prime_insert

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
      "line": 110,
      "path": "GRWTSK/NumberTheory/Moebius/PrimeShellDecomposition.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8df9b61-cfac-cfef-36d5-8317ca23910e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "41efb9b91729ef198825a01dacccfc03fad0a2b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/Moebius/PrimeShellDecomposition.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b701c456-016e-37f3-77c2-3e4b52faa402",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50be10e5-5767-ac4a-ab32-b9d3978eb8b5",
  "kind": "theorem",
  "lexical_name": "late_prime_insert",
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
  "slug": "late-prime-insert--b57955545f0a2afc58040a12",
  "source": {
    "blob": "41efb9b91729ef198825a01dacccfc03fad0a2b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeShellDecomposition/Variant5b5968f926e6e43aa51cdeb45bdca75eed07d0f371d31f9554f6c7bccc189716.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b57955545f0a2afc58040a128085d7c867ffcc039dae31a47ce2632e10743256",
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

Occurrence: `result:50be10e5-5767-ac4a-ab32-b9d3978eb8b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem late_prime_insert (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    {p : ℕ} (hp : p.Prime) (hnot : p ∉ P) {T u : ℝ}
    (hlate : T-Real.log (p : ℝ) < Real.log 2) (hu : u ≤ T) :
    primeState (insert p P) u = primeState P u - atom p u := by
  have hd : Disjoint ({p} : Finset ℕ) P := Finset.disjoint_singleton_left.mpr hnot
  have he := ASBNP04.FiniteProduct.primeState_block_factorization P {p} hP
    (by simpa using hp) hd
  have hs : ASBNP04.FiniteProduct.shift (primeDelay p)
      (ASBNP04.FiniteProduct.primeState P) u =
      ASBNP04.FiniteProduct.shift (primeDelay p) ASBNP04.FiniteProduct.baseWave u := by
    unfold ASBNP04.FiniteProduct.shift
    by_cases h : primeDelay p ≤ u
    · simp only [if_pos h]
      exact primeState_before_first_prime P hP (show u-primeDelay p < Real.log 2 by
        dsimp only [primeDelay]
        linarith)
    · simp only [if_neg h]
  have ha := ASBNP04.FiniteProduct.atom_eq_scaled_shift p hp.pos u
  change ASBNP04.FiniteProduct.primeState (insert p P) u = _
  rw [show insert p P = ({p} : Finset ℕ) ∪ P by simp, he]
  simp only [Finset.toList_singleton, ASBNP04.FiniteProduct.cascade,
    List.foldr_cons, List.foldr_nil, ASBNP04.FiniteProduct.note]
  rw [hs, ← ha]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeShellDecomposition/Variant5b5968f926e6e43aa51cdeb45bdca75eed07d0f371d31f9554f6c7bccc189716.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeShellDecomposition/Variant5b5968f926e6e43aa51cdeb45bdca75eed07d0f371d31f9554f6c7bccc189716.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41efb9b91729ef198825a01dacccfc03fad0a2b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
