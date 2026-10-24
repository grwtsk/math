# Factorization.zero_total_imbalance

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
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78eb781a-96cf-a44a-aa08-179487734fd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9241c08c-9843-2198-dbf5-503ff8bb81b4",
  "kind": "theorem",
  "lexical_name": "Factorization.zero_total_imbalance",
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
  "slug": "factorization-zero-total-imbalance--b70ac99c4b04a715f5cbaea7",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b70ac99c4b04a715f5cbaea752f99e82302f00b9d6595add42c33d15f8c5f1dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9241c08c-9843-2198-dbf5-503ff8bb81b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Factorization.zero_total_imbalance {n : ℕ} (f : Factorization n)
    (hf : f.total_imbalance = 0) : f.prod id = n.factorial := by
  have h_balance_zero : ∀ p ∈ (n + 1).primesBelow, f.balance p = 0 := fun p hp ↦ by
    have := Finset.sum_eq_zero_iff_of_nonneg (fun _ _ ↦ Nat.zero_le _) |>.mp hf p hp
    omega
  have h0 : (0 : ℕ) ∉ f.a := fun h ↦ (f.hpos 0 h).false
  simp only [prod, Multiset.map_id]
  refine eq_of_factorization_eq (Multiset.prod_ne_zero h0) (factorial_pos n).ne' fun p ↦ ?_
  by_cases hp : p.Prime <;> by_cases hp_le : p ≤ n
  · have hbal := h_balance_zero p (mem_primesBelow.mpr ⟨lt_succ_of_le hp_le, hp⟩)
    unfold balance sum at hbal
    simp only [factorization_multiset_prod f.a h0]
    omega
  · simp only [factorization_multiset_prod f.a h0,
      factorization_factorial_eq_zero_of_lt (lt_of_not_ge hp_le)]
    exact Multiset.sum_eq_zero fun x hx ↦ by
      obtain ⟨m, hm, rfl⟩ := Multiset.mem_map.mp hx
      exact factorization_eq_zero_of_lt ((f.ha m hm).trans_lt (lt_of_not_ge hp_le))
  · aesop
  · aesop

@[blueprint
  "waste-eq"
  (statement := /-- The waste of a factorization is equal to $t \log n - \log n!$, where $t$ is the
  number of elements.-/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
