# weightedMertensDyadicTriangularCorrelation_eq_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a355c00-91f5-d8b2-f699-d82fc1efacca",
  "kind": "theorem",
  "lexical_name": "weightedMertensDyadicTriangularCorrelation_eq_range",
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
  "slug": "weightedmertensdyadictriangularcorrelation-eq-range--b4a0fd72be601d6e4f8d554f",
  "source": {
    "blob": "29207a118760feb5bf47b46b80ce9bdcd0702d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 133,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicTriangularKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4a0fd72be601d6e4f8d554f781e18591c40aa466f67b0b5f9136603076454ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicTriangularKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a355c00-91f5-d8b2-f699-d82fc1efacca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensDyadicTriangularCorrelation_eq_range (j : ℕ) :
    weightedMertensDyadicTriangularCorrelation j =
      ∑ k ∈ Finset.range (2 ^ j),
        mertensPrefixTriangularCorrelation (2 ^ j + k) *
          (((2 ^ j + k : ℕ) : ℝ) ^ (-(1 : ℝ)) *
            ((2 ^ j + k + 1 : ℕ) : ℝ) ^ (-(1 : ℝ))) := by
  unfold weightedMertensDyadicTriangularCorrelation
  rw [Finset.sum_Ico_eq_sum_range]
  have hlen : 2 ^ (j + 1) - 2 ^ j = 2 ^ j := by
    rw [Nat.pow_succ]
    omega
  rw [hlen]
  apply Finset.sum_congr rfl
  intro k _
  ring

/-- Reindex the local kernel by the same exact dyadic length. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicTriangularKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicTriangularKernel.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29207a118760feb5bf47b46b80ce9bdcd0702d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
