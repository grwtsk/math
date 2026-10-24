# goldbachResidueProgressionDiscrepancy_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e2a1e31-f343-8a90-a336-e0995fe033d4",
  "kind": "theorem",
  "lexical_name": "goldbachResidueProgressionDiscrepancy_abel",
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
  "slug": "goldbachresidueprogressiondiscrepancy-abel--b0c33612c670544605b81cb6",
  "source": {
    "blob": "b6aa8648cf25048564e228c26003a81b52d9645f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0c33612c670544605b81cb62d4e7262264bf48e34496202d96db94cfe58ec1b",
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

Occurrence: `result:2e2a1e31-f343-8a90-a336-e0995fe033d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachResidueProgressionDiscrepancy_abel (N q r : ℕ) (β : ℝ) :
    goldbachResidueProgressionDiscrepancy N q r β =
      goldbachResiduePrefixDiscrepancy N q r * unitCharacter (N : ℤ) β +
        ∑ k ∈ Finset.range N,
          goldbachResiduePrefixDiscrepancy k q r *
            (unitCharacter (k : ℤ) β - unitCharacter ((k + 1 : ℕ) : ℤ) β) := by
  rw [goldbachResidueProgressionDiscrepancy_eq_coefficient_sum]
  exact finite_abel_identity
    (goldbachResidueDiscrepancyCoefficient q r)
    (fun n => unitCharacter (n : ℤ) β) N

/-- Adjacent Fourier frequencies have the same chord length. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6aa8648cf25048564e228c26003a81b52d9645f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
