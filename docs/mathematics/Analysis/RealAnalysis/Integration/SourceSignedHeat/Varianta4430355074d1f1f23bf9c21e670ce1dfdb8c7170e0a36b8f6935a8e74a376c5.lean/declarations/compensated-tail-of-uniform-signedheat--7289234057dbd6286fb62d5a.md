# compensated_tail_of_uniform_signedHeat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1524d7af-59b9-49a1-de3d-f810d36d0c31",
  "kind": "theorem",
  "lexical_name": "compensated_tail_of_uniform_signedHeat",
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
  "slug": "compensated-tail-of-uniform-signedheat--7289234057dbd6286fb62d5a",
  "source": {
    "blob": "8411695f30cbf8b66b8854b856c711e1b254b2ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 280,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7289234057dbd6286fb62d5acd75c62e022ae7b3f090a63f49a047c6a308ee5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1524d7af-59b9-49a1-de3d-f810d36d0c31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensated_tail_of_uniform_signedHeat
    (h : UniformSignedHeatRemainderUpperBound) :
    SourceKapitzaSignedReduction.CompensatedTailUpperBound := by
  rcases h with ⟨R, hR, τ, hτ, C, hC⟩
  refine ⟨R, hR, C + terminalCap τ, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  rw [compensatedSourceSum_eq_signedHeat_add_remainder A hA hτ.le]
  have ht := (abs_le.mp (sourceSignedHeat_terminal_bound A hA hτ)).2
  linarith [hC A hRA]

/-- The reverse implication exposes the bounded-difference reformulation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8411695f30cbf8b66b8854b856c711e1b254b2ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
