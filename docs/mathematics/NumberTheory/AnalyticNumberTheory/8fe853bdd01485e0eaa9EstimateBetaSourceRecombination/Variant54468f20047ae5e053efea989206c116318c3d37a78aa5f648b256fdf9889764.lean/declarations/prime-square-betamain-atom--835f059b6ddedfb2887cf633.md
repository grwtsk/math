# prime_square_betaMain_atom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4c7ce10-af83-1a46-386c-afb8f837052c",
  "kind": "theorem",
  "lexical_name": "prime_square_betaMain_atom",
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
  "slug": "prime-square-betamain-atom--835f059b6ddedfb2887cf633",
  "source": {
    "blob": "278175786eca81b1d156f02c9088f4c39161f75a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant54468f20047ae5e053efea989206c116318c3d37a78aa5f648b256fdf9889764.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:835f059b6ddedfb2887cf633d469d8196cbe13ea0c0a8970beca1c0ec5bb0530",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant54468f20047ae5e053efea989206c116318c3d37a78aa5f648b256fdf9889764.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4c7ce10-af83-1a46-386c-afb8f837052c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_square_betaMain_atom (A : ℝ) (hA : 1 ≤ A) (p : ℕ) (hp : p.Prime)
    (hUp : vaughanCutoff A < p) (hpN : p ^ 2 ≤ sourceKernelCutoff A) :
    p^2 ∈ Finset.Icc 1 (sourceKernelCutoff A) ∧
      shortVaughanCoefficient (vaughanCutoff A) (p^2) *
          sourcePlainWeight A ((p^2 : ℕ) : ℝ) +
        (vonMangoldt p * beta (vaughanCutoff A) p) *
          sourcePlainWeight A ((p^2 : ℕ) : ℝ) -
        alpha (vaughanCutoff A) *
          (∑ q ∈ (longOffDiagonalPairs A).filter (fun q ↦ q.1*q.2 = p^2),
            vonMangoldt q.1 * sourcePlainWeight A ((q.1*q.2 : ℕ) : ℝ)) =
      Real.log (p : ℝ) / (p : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2*Real.log p) := by
  obtain ⟨hi, he⟩ := prime_square_counterterm_atom A hA p hp hUp hpN
  refine ⟨hi, ?_⟩
  rw [plainTypeTwoOffDiagonal_prime_square_atom_zero A hA p hp, mul_zero, sub_zero]
  exact he

end
end EstimateBetaSourceRecombination
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant54468f20047ae5e053efea989206c116318c3d37a78aa5f648b256fdf9889764.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant54468f20047ae5e053efea989206c116318c3d37a78aa5f648b256fdf9889764.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `278175786eca81b1d156f02c9088f4c39161f75a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
