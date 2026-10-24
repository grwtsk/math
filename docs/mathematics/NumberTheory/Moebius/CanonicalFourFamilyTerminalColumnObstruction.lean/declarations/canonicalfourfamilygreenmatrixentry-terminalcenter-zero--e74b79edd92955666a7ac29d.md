# canonicalFourFamilyGreenMatrixEntry_terminalCenter_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df30ec8b-2b7c-d2ae-6408-5d9b93a14185",
  "kind": "theorem",
  "lexical_name": "canonicalFourFamilyGreenMatrixEntry_terminalCenter_zero",
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
  "slug": "canonicalfourfamilygreenmatrixentry-terminalcenter-zero--e74b79edd92955666a7ac29d",
  "source": {
    "blob": "f9a4feff07ca6e25821a59b503815a128e030bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTerminalColumnObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e74b79edd92955666a7ac29d6336adacb7d43b0df14b47116de68418fef88b84",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyTerminalColumnObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df30ec8b-2b7c-d2ae-6408-5d9b93a14185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalFourFamilyGreenMatrixEntry_terminalCenter_zero
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X)
    (F : CanonicalFourFamily) :
    canonicalFourFamilyGreenMatrixEntry X n F (X + 1) = 0 := by
  classical
  unfold canonicalFourFamilyGreenMatrixEntry
  apply Finset.sum_eq_zero
  intro p hp
  by_cases huse :
      p.1 ∈ anchoredDyadicSourceIndices X ∧
      0 < (anchoredMobiusPair p.1).h ∧
      F = canonicalFourFamilyOfAnchor p.1 ∧
      X + 1 = (anchoredMobiusPair p.1).center
  · have ha : 0 < p.1 := by
      have hnz := Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
      omega
    have haTop : p.1 ≤ 2 * X :=
      (Finset.mem_Icc.mp huse.1).2
    have hlarge : X < p.1 :=
      anchored_terminalCenter_factor_gt_scale ha haTop huse.2.2.2.symm
    have hlog : (ArithmeticFunction.log p.2 : ℝ) = 0 :=
      greenWindow_upperFactor_log_eq_zero hn hp hlarge
    simp [huse, hlog]
  · simp [huse]

/-- The terminal factor a=2X belongs to its actual selected positive-shift
family for X>=2, so the null column is not merely an unused parity label. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyTerminalColumnObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTerminalColumnObstruction.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a4feff07ca6e25821a59b503815a128e030bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
