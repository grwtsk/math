# properPrimePowerContribution_eq_square_add_higher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b81347e9-24c5-5bb3-ebe1-c34283c0b6c9",
  "kind": "theorem",
  "lexical_name": "properPrimePowerContribution_eq_square_add_higher",
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
  "slug": "properprimepowercontribution-eq-square-add-higher--91b0ee13c3dbd6fbcf47e852",
  "source": {
    "blob": "8463cd2d6637b0dc6cf1a00e28883146cd7859c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91b0ee13c3dbd6fbcf47e852e372d86d74f9944d020b52800d5d5e0e112e792f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b81347e9-24c5-5bb3-ebe1-c34283c0b6c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properPrimePowerContribution_eq_square_add_higher (A : ℝ) :
    properPrimePowerContribution A = primeSquareContribution A + higherPrimePowerContribution A := by
  classical
  unfold properPrimePowerContribution primeSquareContribution higherPrimePowerContribution
  unfold primeSquareIndices higherPrimePowerIndices
  rw [Finset.sum_filter, Finset.sum_filter, Finset.sum_filter, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hs : IsPrimeSquare n
  · have hn := primeSquare_not_prime n hs
    have hh := primeSquare_not_higher n hs
    simp only [hs, hn, hh, not_false_eq_true, if_pos, if_false, add_zero]
  · by_cases hh : IsHigherPrimePower n
    · have hn := higher_not_prime n hh
      simp only [hs, hn, hh, not_false_eq_true, if_pos, if_false, zero_add]
    · by_cases hn : n.Prime
      · simp only [hs, hh, hn, not_true_eq_false, if_false, add_zero]
      · rw [nonprime_weight_zero_of_outside n hn hs hh]
        simp only [zero_div, zero_mul, ite_self, add_zero]

/-- The complete original prime-power term has exactly three arithmetic sectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8463cd2d6637b0dc6cf1a00e28883146cd7859c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
