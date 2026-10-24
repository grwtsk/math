# actual_green_work_eq_prime_atoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c64eba77-6604-b4aa-6ca5-3316b3f16c4b",
  "kind": "theorem",
  "lexical_name": "actual_green_work_eq_prime_atoms",
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
  "slug": "actual-green-work-eq-prime-atoms--5b28213a03bccb95a465e140",
  "source": {
    "blob": "e743d948b84b4c17d750a68258012ecfe2a5eb68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeStorage/Variantac4ec51ff95bc23ad0ba245961ed3db5a4e5fc09933773c6b1fe932c6748f3db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b28213a03bccb95a465e140147a1591ee7431c45a0efca8ab2b60d48a6df7b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeStorage/Variantac4ec51ff95bc23ad0ba245961ed3db5a4e5fc09933773c6b1fe932c6748f3db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c64eba77-6604-b4aa-6ca5-3316b3f16c4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_green_work_eq_prime_atoms {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    profileWork (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
      (actualSuffix N K) K =
      ∑ j ∈ Finset.range K, ordinaryPrimeCoefficient (N + j + 1) *
        actualSuffix N K (j + 1) := by
  unfold profileWork
  apply Finset.sum_congr rfl
  intro j _hj
  change (cumulativeDiscrepancy ordinaryPrimeCoefficient (N + (j + 1)) -
    cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)) * actualSuffix N K (j + 1) = _
  rw [show N + (j + 1) = N + j + 1 by omega,
    actual_storage_step (by omega : 1 ≤ N + j)]

end
end GRWTSK.RiemannHypothesis.Conversation.PrimeStorage
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeStorage/Variantac4ec51ff95bc23ad0ba245961ed3db5a4e5fc09933773c6b1fe932c6748f3db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeStorage/Variantac4ec51ff95bc23ad0ba245961ed3db5a4e5fc09933773c6b1fe932c6748f3db.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e743d948b84b4c17d750a68258012ecfe2a5eb68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
