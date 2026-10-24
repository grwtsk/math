# prime_square_betaMain_atom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7e126f05dd397a3cc68ff7762596e9c4e7127a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a133b34-3a9d-d677-b7af-3a405b8efc4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de5acd02-eb5e-c013-bbcb-4948de6b3395",
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
  "slug": "prime-square-betamain-atom--e49ffaa9a2b58d21ccab0269",
  "source": {
    "blob": "d7e126f05dd397a3cc68ff7762596e9c4e7127a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 105,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e49ffaa9a2b58d21ccab0269df1ee219b4d833fbcfe04b2d0e085c818c55e470",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de5acd02-eb5e-c013-bbcb-4948de6b3395`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–124.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e126f05dd397a3cc68ff7762596e9c4e7127a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
