# spectralPriority_preserves_completeFrontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e882a395-aa68-1a0a-215c-0182e1114ffe",
  "kind": "theorem",
  "lexical_name": "spectralPriority_preserves_completeFrontier",
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
  "slug": "spectralpriority-preserves-completefrontier--927de6b9eadef8182f06b480",
  "source": {
    "blob": "e338144ded2544cb00b4d99146e475ab2b6c9f03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Priority/Variant445884f65cb388c511fb9b23bb804cd6b64cf75e5e983799f2d47e463503475d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:927de6b9eadef8182f06b480c3e51b6d984c00529c8f952b9a637431ba91a07f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Priority/Variant445884f65cb388c511fb9b23bb804cd6b64cf75e5e983799f2d47e463503475d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e882a395-aa68-1a0a-215c-0182e1114ffe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralPriority_preserves_completeFrontier
    {CellId : Type uCell}
    [DecidableEq CellId]
    (unresolved : CellId → Prop)
    (frontier : List CellId)
    (currentlyProcessing : Finset CellId)
    (policy : SpectralPriorityPolicy CellId)
    (complete :
      AnalyticFrontierComplete
        unresolved frontier currentlyProcessing) :
    AnalyticFrontierComplete
      unresolved
      (policy.reorder frontier)
      currentlyProcessing := by
  intro cell cellUnresolved
  rcases complete cell cellUnresolved with
    inFrontier | inProcessing
  · left
    exact
      (policy.permutation frontier).mem_iff.mpr
        inFrontier
  · exact Or.inr inProcessing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Priority/Variant445884f65cb388c511fb9b23bb804cd6b64cf75e5e983799f2d47e463503475d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Priority/Variant445884f65cb388c511fb9b23bb804cd6b64cf75e5e983799f2d47e463503475d.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e338144ded2544cb00b4d99146e475ab2b6c9f03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
