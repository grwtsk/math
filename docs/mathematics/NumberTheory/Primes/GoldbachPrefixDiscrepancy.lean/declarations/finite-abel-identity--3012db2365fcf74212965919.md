# finite_abel_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fad64fb6-6330-3619-fe3d-8a62f3343cbb",
  "kind": "theorem",
  "lexical_name": "finite_abel_identity",
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
  "slug": "finite-abel-identity--3012db2365fcf74212965919",
  "source": {
    "blob": "b6aa8648cf25048564e228c26003a81b52d9645f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3012db2365fcf74212965919253c775b054c6aa3513062d38a543a17a5802687",
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

Occurrence: `result:fad64fb6-6330-3619-fe3d-8a62f3343cbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_abel_identity (c w : ℕ → ℂ) (N : ℕ) :
    (∑ n ∈ Finset.range (N + 1), c n * w n) =
      (∑ n ∈ Finset.range (N + 1), c n) * w N +
        ∑ k ∈ Finset.range N,
          (∑ n ∈ Finset.range (k + 1), c n) * (w k - w (k + 1)) := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ (f := fun n => c n * w n) (n := N + 1), ih]
      rw [Finset.sum_range_succ (f := c) (n := N + 1)]
      rw [Finset.sum_range_succ (f := fun k =>
        (∑ n ∈ Finset.range (k + 1), c n) * (w k - w (k + 1))) (n := N)]
      ring

/-- Summation by parts for the canonical finite progression discrepancy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6aa8648cf25048564e228c26003a81b52d9645f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
