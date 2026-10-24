# generateFrom_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4254b297-b009-2688-24fa-ed7b308e3337",
  "kind": "theorem",
  "lexical_name": "generateFrom_singleton",
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
  "slug": "generatefrom-singleton--0415ba899c89a7d412a85146",
  "source": {
    "blob": "73366e091247b018b2dc5546bb0bce5ce0686750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 29,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurablyGenerated/Varianta4787a23adb93f31d176f9e0aa53132a51202e9164b3d77e5244b1e8ce802dd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0415ba899c89a7d412a851466ca5371b36571a3793e39bb2e4a668774a8cc047",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurablyGenerated/Varianta4787a23adb93f31d176f9e0aa53132a51202e9164b3d77e5244b1e8ce802dd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4254b297-b009-2688-24fa-ed7b308e3337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem generateFrom_singleton (s : Set α) :
    generateFrom {s} = MeasurableSpace.comap (· ∈ s) ⊤ := by
  classical
  letI : MeasurableSpace α := generateFrom {s}
  refine le_antisymm (generateFrom_le fun t ht => ⟨{True}, trivial, by simp [ht.symm]⟩) ?_
  rintro _ ⟨u, -, rfl⟩
  exact (show MeasurableSet s from GenerateMeasurable.basic _ <| mem_singleton s).mem trivial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurablyGenerated/Varianta4787a23adb93f31d176f9e0aa53132a51202e9164b3d77e5244b1e8ce802dd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurablyGenerated/Varianta4787a23adb93f31d176f9e0aa53132a51202e9164b3d77e5244b1e8ce802dd2.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73366e091247b018b2dc5546bb0bce5ce0686750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
