# weightedMertensDyadicTriangularLocal_eq_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2644bf47-b17e-2606-82ca-a3db0890a7ab",
  "kind": "theorem",
  "lexical_name": "weightedMertensDyadicTriangularLocal_eq_range",
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
  "slug": "weightedmertensdyadictriangularlocal-eq-range--4fb55512df04011ee5e08bb0",
  "source": {
    "blob": "29207a118760feb5bf47b46b80ce9bdcd0702d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 150,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicTriangularKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fb55512df04011ee5e08bb06b8dea3bb573c09384e013236458852e24f67df3",
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

Occurrence: `result:2644bf47-b17e-2606-82ca-a3db0890a7ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensDyadicTriangularLocal_eq_range (j : ℕ) :
    weightedMertensDyadicTriangularLocal j =
      2 * ∑ k ∈ Finset.range (2 ^ j),
        mertensTriangularAtom (2 ^ j + k) *
          ((((2 ^ j + k : ℕ) : ℝ))⁻¹ -
            (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹) := by
  unfold weightedMertensDyadicTriangularLocal
  rw [Finset.sum_Ico_eq_sum_range]
  have hlen : 2 ^ (j + 1) - 2 ^ j = 2 ^ j := by
    rw [Nat.pow_succ]
    omega
  rw [hlen]

/-- The inverse left endpoint is twice the inverse right endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicTriangularKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicTriangularKernel.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29207a118760feb5bf47b46b80ce9bdcd0702d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
