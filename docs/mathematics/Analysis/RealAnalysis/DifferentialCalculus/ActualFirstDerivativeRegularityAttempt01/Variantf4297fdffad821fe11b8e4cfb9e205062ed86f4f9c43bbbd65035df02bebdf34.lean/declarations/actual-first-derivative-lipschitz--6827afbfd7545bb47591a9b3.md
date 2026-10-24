# actual_first_derivative_lipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6baaa9f4bb1626baf9c62e7f98966252151e5d66",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9fe34196-80fc-6c92-6e77-ad736032deee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:369e77ff-8028-0c82-13ba-5b81ec6e07a8",
  "kind": "theorem",
  "lexical_name": "actual_first_derivative_lipschitz",
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
  "slug": "actual-first-derivative-lipschitz--6827afbfd7545bb47591a9b3",
  "source": {
    "blob": "6baaa9f4bb1626baf9c62e7f98966252151e5d66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantf4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6827afbfd7545bb47591a9b3437ba59145a97fcfb794bab51fda5267d30b2dcd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantf4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:369e77ff-8028-0c82-13ba-5b81ec6e07a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_first_derivative_lipschitz (A : ℝ) (hA : 0 < A) :
    ∃ K : ℝ≥0, LipschitzWith K (deriv (normalizedTest explicitSecondDerivative A)) := by
  have hp : ContDiff ℝ 1 (normalizedInteriorDerivative A) := by
    unfold normalizedInteriorDerivative thirdInterior firstInterior
    fun_prop
  obtain ⟨K, hK⟩ := hp.contDiffOn.exists_lipschitzOnWith
    (s := Icc (-A) A) (by norm_num) (convex_Icc _ _) isCompact_Icc
  have hab : -A ≤ A := by linarith
  have hc := hK.to_restrict.comp (LipschitzWith.projIcc hab)
  refine ⟨K, ?_⟩
  rw [actual_first_derivative_eq_projection A hA]
  simpa only [mul_one, Function.comp_def] using hc

/-- Actual first-derivative absolute continuity is concluded on every finite real interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantf4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantf4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6baaa9f4bb1626baf9c62e7f98966252151e5d66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
