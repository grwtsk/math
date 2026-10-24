# boundaryMovingWindowMertens_eq_prefix_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8fb4f4b-9cd3-870c-cad3-fc136d0cc0a5",
  "kind": "theorem",
  "lexical_name": "boundaryMovingWindowMertens_eq_prefix_sub",
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
  "slug": "boundarymovingwindowmertens-eq-prefix-sub--9757ad620efa7a9e74f1c68f",
  "source": {
    "blob": "6c6cb8113f894dba1bd8cde4bc610e910f0c75a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 41,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryQuadraticEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9757ad620efa7a9e74f1c68fee3e22296311f0ac1267bf3ccaeaaa74b50bdfba",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryQuadraticEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8fb4f4b-9cd3-870c-cad3-fc136d0cc0a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryMovingWindowMertens_eq_prefix_sub
    {j u : ℕ}
    (hu : u < 2 ^ j) :
    boundaryMovingWindowMertens j u =
      mertensPrefixReal (2 ^ (j + 1) - u - 1) -
        mertensPrefixReal (2 ^ j - u - 1) := by
  let X : ℕ := 2 ^ j
  let a : ℕ := X - u - 1
  have hau : a + X = 2 ^ (j + 1) - u - 1 := by
    dsimp [a, X]
    rw [Nat.pow_succ]
    omega
  have hstart :
      ∀ k : ℕ,
        a + k + 1 = X - u + k := by
    intro k
    dsimp [a, X]
    omega
  have hprefix := mertensPrefixReal_add_interval a X
  rw [hau] at hprefix
  unfold boundaryMovingWindowMertens
  have hinterval :
      (∑ k ∈ Finset.range X, moebiusReal (a + k + 1)) =
        ∑ k ∈ Finset.range X, moebiusReal (X - u + k) := by
    apply Finset.sum_congr rfl
    intro k _hk
    rw [hstart k]
  rw [hinterval] at hprefix
  dsimp [X, a] at hprefix ⊢
  linarith

/-- Square energy of the moving length-`2^j` Mertens windows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryQuadraticEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryQuadraticEnergy.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c6cb8113f894dba1bd8cde4bc610e910f0c75a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
