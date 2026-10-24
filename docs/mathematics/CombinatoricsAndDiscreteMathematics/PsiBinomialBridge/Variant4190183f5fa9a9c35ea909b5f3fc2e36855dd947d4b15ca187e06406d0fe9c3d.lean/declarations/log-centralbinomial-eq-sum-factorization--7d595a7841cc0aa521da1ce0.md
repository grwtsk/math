# log_centralBinomial_eq_sum_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec482413-4a14-c471-d067-d05120340980",
  "kind": "theorem",
  "lexical_name": "log_centralBinomial_eq_sum_factorization",
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
  "slug": "log-centralbinomial-eq-sum-factorization--7d595a7841cc0aa521da1ce0",
  "source": {
    "blob": "80e914bb1b60c65174593635448ca46c797f413f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d595a7841cc0aa521da1ce0e36abc46b14f0684afde0ef272cdf94492a442c1",
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

Occurrence: `result:ec482413-4a14-c471-d067-d05120340980`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_centralBinomial_eq_sum_factorization
    (n : Nat) :
    Real.log (centralBinomial n) =
      ∑ p ∈ primesUpTo (2 * n),
        (Nat.factorization (centralBinomial n) p : Real) * Real.log p := by
  rw [Real.log_nat_eq_sum_factorization]
  let F := Nat.factorization (centralBinomial n)
  have hsupport : F.support ⊆ primesUpTo (2 * n) := by
    intro p hp_mem
    have hp_ne : F p ≠ 0 := Finsupp.mem_support_iff.mp hp_mem
    have hp_prime : Nat.Prime p := by
      by_contra hnp
      have hzero : F p = 0 := by
        simp [F, Nat.factorization_eq_zero_of_not_prime (centralBinomial n) hnp]
      exact hp_ne hzero
    have hp_pos : 0 < Nat.factorization (centralBinomial n) p :=
      Nat.pos_of_ne_zero hp_ne
    have hp_le : p ≤ 2 * n := by
      simpa [centralBinomial] using
        Nat.le_two_mul_of_factorization_centralBinom_pos
          (n := n) (p := p) hp_pos
    exact mem_primesUpTo_iff.mpr ⟨hp_prime, hp_le⟩
  exact
    Finsupp.sum_of_support_subset
      (f := F)
      (s := primesUpTo (2 * n))
      hsupport
      (fun p t => (t : Real) * Real.log (p : Real))
      (by intro p hp; simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80e914bb1b60c65174593635448ca46c797f413f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
