# measurableSet_predictable_Ioi_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ed788e6-475e-8f5b-75cc-0eb0a9c31f66",
  "kind": "lemma",
  "lexical_name": "measurableSet_predictable_Ioi_prod",
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
  "slug": "measurableset-predictable-ioi-prod--7746bbe0b5bd75e10086e7f5",
  "source": {
    "blob": "bf59fcac61d4f8f141c29f31ccc08b6f0cbf3727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 72,
    "path": "GRWTSK/Analysis/MeasureTheory/Predictable/Variante15b5028ac76f25b05d7c8b36f06068d604635222e51fb210e4e703ff22f0cc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7746bbe0b5bd75e10086e7f50a26808c5f3529646013faa431cd76277b2e8440",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Predictable/Variante15b5028ac76f25b05d7c8b36f06068d604635222e51fb210e4e703ff22f0cc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ed788e6-475e-8f5b-75cc-0eb0a9c31f66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurableSet_predictable_Ioi_prod [LinearOrder ι] [OrderBot ι]
    {𝓕 : Filtration ι m} {i : ι} {s : Set Ω} (hs : MeasurableSet[𝓕 i] s) :
    MeasurableSet[𝓕.predictable] <| Set.Ioi i ×ˢ s :=
  MeasurableSpace.measurableSet_generateFrom <| Or.inr ⟨i, s, hs, rfl⟩

/-- Sets of the form `(i, j] × A` for any `A ∈ 𝓕 i` are measurable with respect to the predictable
σ-algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Predictable/Variante15b5028ac76f25b05d7c8b36f06068d604635222e51fb210e4e703ff22f0cc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Predictable/Variante15b5028ac76f25b05d7c8b36f06068d604635222e51fb210e4e703ff22f0cc6.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf59fcac61d4f8f141c29f31ccc08b6f0cbf3727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
