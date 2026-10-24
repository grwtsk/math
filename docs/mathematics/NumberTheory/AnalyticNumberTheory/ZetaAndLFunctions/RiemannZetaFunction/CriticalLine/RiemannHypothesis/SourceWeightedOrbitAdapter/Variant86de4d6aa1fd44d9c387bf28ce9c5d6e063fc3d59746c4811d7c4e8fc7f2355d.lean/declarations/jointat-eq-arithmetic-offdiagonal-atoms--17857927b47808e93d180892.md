# jointAt_eq_arithmetic_offDiagonal_atoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7207fa2-1ed1-cfd7-3632-0a3225a54079",
  "kind": "theorem",
  "lexical_name": "jointAt_eq_arithmetic_offDiagonal_atoms",
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
  "slug": "jointat-eq-arithmetic-offdiagonal-atoms--17857927b47808e93d180892",
  "source": {
    "blob": "8315d94adf5d69d2bacb31c936d4af56fdef9eea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 292,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17857927b47808e93d1808920488f44bf719322c53ca2751917211d6856f555d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7207fa2-1ed1-cfd7-3632-0a3225a54079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointAt_eq_arithmetic_offDiagonal_atoms (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    jointAt A U N =
      (∑ m ∈ Finset.Ioc U N, ∑ n ∈ Finset.Ioc U N,
        if m = n then 0 else weightedAtomInteraction A hA U m n) - mainTermAt A U N := by
  classical
  rw [jointAt_eq_reflected_profiles A hA, weighted_profile_pairing_eq_sum,
    centeredDiagonalAt_eq_reflected_atoms A hA]
  change (∑ m ∈ Finset.Ioc U N, ∑ n ∈ Finset.Ioc U N,
      weightedAtomInteraction A hA U m n) -
    (∑ m ∈ Finset.Ioc U N, weightedAtomInteraction A hA U m m) - _ = _
  congr 1
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have hdiag :
      (∑ n ∈ Finset.Ioc U N,
        if m = n then weightedAtomInteraction A hA U m n else 0) =
      weightedAtomInteraction A hA U m m := by simp [hm]
  rw [← hdiag, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  split_ifs <;> simp

/-- Actual floors retain exactly the arithmetic m=n deletion and the independent main formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8315d94adf5d69d2bacb31c936d4af56fdef9eea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
