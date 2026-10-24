# normalizedSecondTest_square_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0db280f7-fc70-3650-4aad-4af3827b7ff3",
  "kind": "theorem",
  "lexical_name": "normalizedSecondTest_square_integrable",
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
  "slug": "normalizedsecondtest-square-integrable--be0b01080f71dd083b246ae2",
  "source": {
    "blob": "5bf2fbde2adca038dd50292cf84b0dee6744292f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be0b01080f71dd083b246ae22da2d99589709e6cb434eb576cc51e0bef910724",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0db280f7-fc70-3650-4aad-4af3827b7ff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedSecondTest_square_integrable (A : ℝ) :
    Integrable (fun x ↦ normalizedSecondTest A x ^ 2) volume := by
  have heq : (fun x ↦ normalizedSecondTest A x ^ 2) =
      (Icc (-A) A).indicator (fun x ↦ normalizedSecondInterior A x ^ 2) := by
    funext x
    simp only [normalizedSecondTest, indicator_apply]
    split_ifs <;> simp
  rw [heq]
  exact integrable_zeroExtension _ ((normalizedSecondInterior_continuous A).pow 2) (-A) A

/-- The actual first derivative has this derivative away from the two null endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bf2fbde2adca038dd50292cf84b0dee6744292f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
