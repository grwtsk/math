# primesDyadicStrip_log_sum_le_log_centralBinomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9b0ba5b-0647-2a37-7c14-8687087a088f",
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
  "slug": "primesdyadicstrip-log-sum-le-log-centralbinomial--52c08bd40c35a82d5fa8b6c0",
  "source": {
    "blob": "80e914bb1b60c65174593635448ca46c797f413f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52c08bd40c35a82d5fa8b6c0637f81daafd5f44325c6122828e1bdd16ca2d3d1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9b0ba5b-0647-2a37-7c14-8687087a088f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–164.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80e914bb1b60c65174593635448ca46c797f413f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
