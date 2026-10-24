# norm_goldbachExponentialSum_le_primeLogTotal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3dec42e-dfc3-df3d-994e-5ffff7e3a3dd",
  "kind": "theorem",
  "lexical_name": "norm_goldbachExponentialSum_le_primeLogTotal",
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
  "slug": "norm-goldbachexponentialsum-le-primelogtotal--e96b0c7049f11ec07346add2",
  "source": {
    "blob": "0aadd1999fa478e25c0f2fa4d6366d8b8706cc15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 133,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e96b0c7049f11ec07346add29b9e5838ddf37a46b41d847ebfc9b24ca31c041a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3dec42e-dfc3-df3d-994e-5ffff7e3a3dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_goldbachExponentialSum_le_primeLogTotal
    (N : ℕ) (x : ℝ) :
    ‖goldbachExponentialSum N x‖ ≤ goldbachPrimeLogTotal N := by
  unfold goldbachExponentialSum goldbachPrimeLogTotal
  calc
    ‖∑ n ∈ Finset.range (N + 1),
        (primeLogWeight n : ℂ) *
          unitCharacter (n : ℤ) x‖ ≤
      ∑ n ∈ Finset.range (N + 1),
        ‖(primeLogWeight n : ℂ) *
          unitCharacter (n : ℤ) x‖ :=
      norm_sum_le _ _
    _ = ∑ n ∈ Finset.range (N + 1),
        primeLogWeight n := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [norm_mul, norm_unitCharacter, mul_one]
      simp [abs_of_nonneg (primeLogWeight_nonneg n)]

/-- The exact residue-class exponential kernel inherits the same norm budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aadd1999fa478e25c0f2fa4d6366d8b8706cc15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
