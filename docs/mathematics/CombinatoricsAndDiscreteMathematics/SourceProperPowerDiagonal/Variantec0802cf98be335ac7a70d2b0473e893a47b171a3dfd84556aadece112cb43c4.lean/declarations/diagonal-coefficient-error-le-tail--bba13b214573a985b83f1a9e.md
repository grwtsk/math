# diagonal_coefficient_error_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cedeb60-e25f-c046-2f4e-74b6bc6bd88d",
  "kind": "theorem",
  "lexical_name": "diagonal_coefficient_error_le_tail",
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
  "slug": "diagonal-coefficient-error-le-tail--bba13b214573a985b83f1a9e",
  "source": {
    "blob": "d0af7cd80483f3615a3a0e27fb7e2cc000c5f61c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantec0802cf98be335ac7a70d2b0473e893a47b171a3dfd84556aadece112cb43c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bba13b214573a985b83f1a9e4ae31715cddb309c498c582ceb0779c3d489151a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantec0802cf98be335ac7a70d2b0473e893a47b171a3dfd84556aadece112cb43c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cedeb60-e25f-c046-2f4e-74b6bc6bd88d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_coefficient_error_le_tail (A : ℝ) (hA : 1 ≤ A)
    (U m : ℕ) (hm : U < m) :
    |(if U < m.minFac then vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) -
      (if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0)| ≤
      (if U < m.minFac then properPowerCoefficient m / (m : ℝ) else 0) := by
  by_cases hb : U < m.minFac
  · simpa [hb] using diagonal_coefficient_error_le A hA U m hm
  · by_cases hp : m.Prime
    · exact False.elim (hb (by simpa [hp.minFac_eq] using hm))
    · simp [hb, hp]

/-- All small-base prime powers vanish in the exact diagonal; the full large-base
proper-power train has the same explicit finite budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantec0802cf98be335ac7a70d2b0473e893a47b171a3dfd84556aadece112cb43c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantec0802cf98be335ac7a70d2b0473e893a47b171a3dfd84556aadece112cb43c4.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0af7cd80483f3615a3a0e27fb7e2cc000c5f61c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
