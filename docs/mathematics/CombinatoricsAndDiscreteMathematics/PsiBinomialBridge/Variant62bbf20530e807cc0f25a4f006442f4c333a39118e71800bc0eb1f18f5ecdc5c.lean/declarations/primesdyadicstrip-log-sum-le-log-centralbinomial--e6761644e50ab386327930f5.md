# primesDyadicStrip_log_sum_le_log_centralBinomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69557f1efa3009e3eb94a24d967e4be1e0a37d93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36a14636-8464-2d03-e328-d8554b6942af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5aa6a115-ee42-f622-0c95-99deeec165fd",
  "kind": "theorem",
  "lexical_name": "primesDyadicStrip_log_sum_le_log_centralBinomial",
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
  "slug": "primesdyadicstrip-log-sum-le-log-centralbinomial--e6761644e50ab386327930f5",
  "source": {
    "blob": "69557f1efa3009e3eb94a24d967e4be1e0a37d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6761644e50ab386327930f543c087d9b14acf7a438716ea2e67128da992e75e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5aa6a115-ee42-f622-0c95-99deeec165fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primesDyadicStrip_log_sum_le_log_centralBinomial
    (n : Nat) :
    (∑ p ∈ primesDyadicStrip n, Real.log p) ≤
      Real.log (centralBinomial n) := by
  rw [log_centralBinomial_eq_sum_factorization]
  calc
    (∑ p ∈ primesDyadicStrip n, Real.log p)
        ≤ ∑ p ∈ primesDyadicStrip n,
            (Nat.factorization (centralBinomial n) p : Real) * Real.log p := by
          refine Finset.sum_le_sum ?_
          intro p hp
          have hfac :
              (1 : Real) ≤
                (Nat.factorization (centralBinomial n) p : Real) := by
            exact_mod_cast one_le_factorization_centralBinomial_of_mem_strip hp
          have hlog : 0 ≤ Real.log (p : Real) :=
            Real.log_nonneg
              (by exact_mod_cast (mem_primesDyadicStrip_iff.mp hp).1.one_le)
          nlinarith
    _ ≤ ∑ p ∈ primesUpTo (2 * n),
            (Nat.factorization (centralBinomial n) p : Real) * Real.log p := by
          exact
            Finset.sum_le_sum_of_subset_of_nonneg
              (by
                intro p hp
                exact (Finset.mem_filter.mp hp).1)
              (by
                intro p hp _hnot
                have hlog : 0 ≤ Real.log (p : Real) :=
                  Real.log_nonneg (by exact_mod_cast (primesUpTo_prime hp).one_le)
                have hfac :
                    0 ≤ (Nat.factorization (centralBinomial n) p : Real) := by
                  positivity
                exact mul_nonneg hfac hlog)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69557f1efa3009e3eb94a24d967e4be1e0a37d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
