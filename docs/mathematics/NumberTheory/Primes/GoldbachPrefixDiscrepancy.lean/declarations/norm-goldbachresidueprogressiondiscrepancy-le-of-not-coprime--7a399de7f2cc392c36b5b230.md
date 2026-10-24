# norm_goldbachResidueProgressionDiscrepancy_le_of_not_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1c3ceb6-1ade-5ec1-7955-46517efa2be2",
  "kind": "theorem",
  "lexical_name": "norm_goldbachResidueProgressionDiscrepancy_le_of_not_coprime",
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
  "slug": "norm-goldbachresidueprogressiondiscrepancy-le-of-not-coprime--7a399de7f2cc392c36b5b230",
  "source": {
    "blob": "b6aa8648cf25048564e228c26003a81b52d9645f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 189,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a399de7f2cc392c36b5b2300f63e481fbf9052d06a329165b960d944f4eea50",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1c3ceb6-1ade-5ec1-7955-46517efa2be2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_goldbachResidueProgressionDiscrepancy_le_of_not_coprime
    (N q r : ℕ) (h : ¬ q.Coprime r) (β : ℝ) :
    ‖goldbachResidueProgressionDiscrepancy N q r β‖ ≤
      goldbachResiduePrimeLogTotal N q r := by
  simp only [goldbachResidueProgressionDiscrepancy, goldbachCoprimeResidueMain,
    if_neg h, sub_zero, goldbachResidueClassPrimeSum]
  calc
    ‖∑ n ∈ (Finset.range (N + 1)).filter (fun n => n % q = r),
        (primeLogWeight n : ℂ) * unitCharacter (n : ℤ) β‖ ≤
      ∑ n ∈ (Finset.range (N + 1)).filter (fun n => n % q = r),
        ‖(primeLogWeight n : ℂ) * unitCharacter (n : ℤ) β‖ := norm_sum_le _ _
    _ = goldbachResiduePrimeLogTotal N q r := by
      unfold goldbachResiduePrimeLogTotal
      apply Finset.sum_congr rfl
      intro n hn
      simp [norm_unitCharacter, abs_of_nonneg (primeLogWeight_nonneg n)]

end
end GRWTSK.NumberTheory.Primes.GoldbachPrefixDiscrepancy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6aa8648cf25048564e228c26003a81b52d9645f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
