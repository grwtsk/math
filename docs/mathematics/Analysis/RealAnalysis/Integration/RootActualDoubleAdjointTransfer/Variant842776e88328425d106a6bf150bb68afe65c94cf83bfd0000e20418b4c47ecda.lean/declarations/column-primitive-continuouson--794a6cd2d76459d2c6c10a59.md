# column_primitive_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1b9e206-e30d-cb7f-c7ee-f842d124aa8c",
  "kind": "theorem",
  "lexical_name": "column_primitive_continuousOn",
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
  "slug": "column-primitive-continuouson--794a6cd2d76459d2c6c10a59",
  "source": {
    "blob": "aaa535b27615ca1a6ea98d8daf489de433f7e9da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 198,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RootActualDoubleAdjointTransfer/Variant842776e88328425d106a6bf150bb68afe65c94cf83bfd0000e20418b4c47ecda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:794a6cd2d76459d2c6c10a59574c640eddf46fea3d31e22003e08a093d7b2b8e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RootActualDoubleAdjointTransfer/Variant842776e88328425d106a6bf150bb68afe65c94cf83bfd0000e20418b4c47ecda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1b9e206-e30d-cb7f-c7ee-f842d124aa8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem column_primitive_continuousOn {A : ℝ} (hA : 1 ≤ A) :
    ContinuousOn (actualAdjointColumnPrimitive A)
      (Icc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A)) := by
  obtain ⟨_, hl, hs⟩ := actual_orders hA
  simpa only [uIcc_of_le hs] using
    (actualAdjointColumnPrimitive_absolutelyContinuous hA hl hs).continuousOn

/-- The interior is independently specified with both actual arithmetic primitives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RootActualDoubleAdjointTransfer/Variant842776e88328425d106a6bf150bb68afe65c94cf83bfd0000e20418b4c47ecda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RootActualDoubleAdjointTransfer/Variant842776e88328425d106a6bf150bb68afe65c94cf83bfd0000e20418b4c47ecda.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaa535b27615ca1a6ea98d8daf489de433f7e9da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
