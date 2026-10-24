# normalized_source_endpoint_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a6ca12b-3c73-702f-6885-62a5f864eeff",
  "kind": "theorem",
  "lexical_name": "normalized_source_endpoint_zero",
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
  "slug": "normalized-source-endpoint-zero--a8d687793db547d8ff2d9f56",
  "source": {
    "blob": "f8cbc44fa519aeb60e39acb8d5e08bb32188f104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 141,
    "path": "GRWTSK/Analysis/TestFunctions/PowerFourResidualSigns.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8d687793db547d8ff2d9f56ec3d6129bd60bd39081cad7b43e16e0f48220794",
  "verification": {
    "reference": "docs/verification/Analysis/TestFunctions/PowerFourResidualSigns.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a6ca12b-3c73-702f-6885-62a5f864eeff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_source_endpoint_zero {A : ℝ} (hA : 0 < A) :
    normalizedSource A A = 0 ∧ normalizedSource A (-A) = 0 ∧
      deriv (normalizedSource A) A = 0 ∧ deriv (normalizedSource A) (-A) = 0 := by
  have right : A ∈ Icc (-A) A := ⟨by linarith, le_rfl⟩
  have left : -A ∈ Icc (-A) A := ⟨le_rfl, by linarith⟩
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [normalized_source_closed_factor hA right]
    simp [hA.ne']
  · rw [normalized_source_closed_factor hA left]
    simp [hA.ne']
  · rw [normalized_source_deriv_closed_factor hA right]
    simp [hA.ne']
  · rw [normalized_source_deriv_closed_factor hA left]
    simp [hA.ne']

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourcePositiveSector
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TestFunctions/PowerFourResidualSigns.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TestFunctions/PowerFourResidualSigns.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8cbc44fa519aeb60e39acb8d5e08bb32188f104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
