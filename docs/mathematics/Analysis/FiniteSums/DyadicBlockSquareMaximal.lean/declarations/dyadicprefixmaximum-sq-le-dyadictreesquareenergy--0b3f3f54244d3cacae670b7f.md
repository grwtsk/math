# dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db839cbc-0856-4aca-e82a-6af6cc365390",
  "kind": "theorem",
  "lexical_name": "dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy",
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
  "slug": "dyadicprefixmaximum-sq-le-dyadictreesquareenergy--0b3f3f54244d3cacae670b7f",
  "source": {
    "blob": "b18f90584b0f3e181a90fe40dd127c04fc20d844",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 269,
    "path": "GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b3f3f54244d3cacae670b7fd6d944c2ac50bd023f2c5ec74f6c3014c6163408",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db839cbc-0856-4aca-e82a-6af6cc365390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy
    (m : ℕ) (a : ℕ → ℝ) :
    dyadicPrefixMaximum m a ^ 2 ≤
      ((m : ℝ) + 1) * dyadicTreeSquareEnergy m a := by
  let B : ℝ := ((m : ℝ) + 1) * dyadicTreeSquareEnergy m a
  have hB : 0 ≤ B := by
    dsimp [B]
    exact mul_nonneg (by positivity)
      (dyadicTreeSquareEnergy_nonneg m a)
  have hpoint : ∀ N : ℕ, N ≤ 2 ^ m →
      |finitePrefixSum a N| ≤ Real.sqrt B := by
    intro N hN
    have hsquare := finitePrefixSum_sq_le_dyadicTreeSquareEnergy
      m a N hN
    have habsSquare :
        |finitePrefixSum a N| ^ 2 ≤ (Real.sqrt B) ^ 2 := by
      rw [sq_abs, Real.sq_sqrt hB]
      simpa [B] using hsquare
    exact (sq_le_sq₀ (abs_nonneg _) (Real.sqrt_nonneg _)).mp habsSquare
  have hmax : dyadicPrefixMaximum m a ≤ Real.sqrt B := by
    exact (partialSups_le_iff).2 hpoint
  have hmaxNonneg : 0 ≤ dyadicPrefixMaximum m a := by
    have hzero := le_partialSups_of_le
      (fun N : ℕ => |finitePrefixSum a N|)
      (Nat.zero_le (2 ^ m))
    exact (abs_nonneg (finitePrefixSum a 0)).trans hzero
  have hmaxSquare :
      dyadicPrefixMaximum m a ^ 2 ≤ (Real.sqrt B) ^ 2 :=
    (sq_le_sq₀ hmaxNonneg (Real.sqrt_nonneg _)).2 hmax
  rw [Real.sq_sqrt hB] at hmaxSquare
  simpa [B] using hmaxSquare

/-- At depth zero the energy is exactly the singleton block square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b18f90584b0f3e181a90fe40dd127c04fc20d844` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
