# normalized_derivative_eq_projected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d94cb29f507722480ad82437f9823c35503bae1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d506cab-69a1-1c9d-b426-cf2c0d2ff78e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9d808b4-df89-720d-a69d-e0a3f977aad4",
  "kind": "theorem",
  "lexical_name": "normalized_derivative_eq_projected",
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
  "slug": "normalized-derivative-eq-projected--63689f67c7522cc57287c810",
  "source": {
    "blob": "6d94cb29f507722480ad82437f9823c35503bae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 290,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63689f67c7522cc57287c810973f282ed61997223e41785ab7d3f1347743e349",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9d808b4-df89-720d-a69d-e0a3f977aad4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_derivative_eq_projected (A : ℝ) (hA : 1 ≤ A) :
    deriv (normalizedTest explicitSecondDerivative A) =
      (Icc (-A) A).domRestrict (normalizedInteriorDerivative A) ∘
        Set.projIcc (-A) A (by linarith : -A ≤ A) := by
  funext x
  rw [DerivativeEnergy.normalized_derivative_eq_indicator A hA]
  dsimp only [Function.comp_apply, Set.domRestrict]
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx, Set.projIcc_of_mem _ hx]
  · rw [indicator_of_notMem hx]
    by_cases hxl : x ≤ -A
    · rw [Set.projIcc_of_le_left _ hxl]
      exact (normalizedInteriorDerivative_endpoints A (by linarith)).1.symm
    · have hax : A ≤ x := by
        simp only [mem_Icc, not_and_or] at hx
        rcases hx with hx | hx <;> linarith
      rw [Set.projIcc_of_right_le _ hax]
      exact (normalizedInteriorDerivative_endpoints A (by linarith)).2.symm

/-- Compact polynomial derivative control and the true seam matching give a global Lipschitz constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d94cb29f507722480ad82437f9823c35503bae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
