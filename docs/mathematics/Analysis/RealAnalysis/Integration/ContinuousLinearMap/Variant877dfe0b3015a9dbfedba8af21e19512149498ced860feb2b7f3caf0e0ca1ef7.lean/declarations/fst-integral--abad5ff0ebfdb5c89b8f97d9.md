# fst_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76da94a4-3286-d2f0-27b5-be6cc6e88d72",
  "kind": "theorem",
  "lexical_name": "fst_integral",
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
  "slug": "fst-integral--abad5ff0ebfdb5c89b8f97d9",
  "source": {
    "blob": "9bc7c385db5891e663e4cac9a7af68fbfa474d41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 198,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abad5ff0ebfdb5c89b8f97d9558dc59ca6435c5085c8ce9b0ce9110086e4fa7f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76da94a4-3286-d2f0-27b5-be6cc6e88d72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fst_integral [CompleteSpace F] {f : X → E × F} (hf : Integrable f μ) :
    (∫ x, f x ∂μ).1 = ∫ x, (f x).1 ∂μ := by
  by_cases hE : CompleteSpace E
  · exact ((ContinuousLinearMap.fst ℝ E F).integral_comp_comm hf).symm
  · have : ¬(CompleteSpace (E × F)) := fun h ↦ hE <| .fst_of_prod (β := F)
    simp [integral, *]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bc7c385db5891e663e4cac9a7af68fbfa474d41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
