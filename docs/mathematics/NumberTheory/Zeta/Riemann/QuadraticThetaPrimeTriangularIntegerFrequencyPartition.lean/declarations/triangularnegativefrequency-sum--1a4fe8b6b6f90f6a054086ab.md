# triangularNegativeFrequency_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a564888-1eb5-583d-a99a-232934a668b2",
  "kind": "theorem",
  "lexical_name": "triangularNegativeFrequency_sum",
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
  "slug": "triangularnegativefrequency-sum--1a4fe8b6b6f90f6a054086ab",
  "source": {
    "blob": "0f21dd8bf43f82a43afbef74ff14ba540a442620",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 78,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a4fe8b6b6f90f6a054086ab164c3bbf35bc5decfa78741315d912d5dd703118",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a564888-1eb5-583d-a99a-232934a668b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem triangularNegativeFrequency_sum
    {N : ℕ} (hN : 0 < N)
    (t : ℝ) :
    (∑ k ∈ triangularNegativeFrequencies N,
        (symmetricTriangularWeight N k : ℂ) *
          fourier k (t : AddCircle (1 : ℝ))) =
      ∑ d ∈ Finset.Ico 1 N,
        ((N - d : ℕ) : ℂ) / (N : ℂ) *
          fourier (-(d : ℤ)) (t : AddCircle (1 : ℝ)) := by
  unfold triangularNegativeFrequencies
  rw [Finset.sum_image]
  · apply Finset.sum_congr rfl
    intro d hd
    rw [triangularNegativeFrequency_weight hN hd]
  · intro a ha b hb hab
    have : (a : ℤ) = b := by
      linarith
    exact_mod_cast this

/-- Exact remaining interval identity for the symmetric kernel support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f21dd8bf43f82a43afbef74ff14ba540a442620` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
