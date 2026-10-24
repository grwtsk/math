# measurableSet_predictable_Ioc_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9690ae6-40b5-1560-2ddd-f4d5d6019d7c",
  "kind": "lemma",
  "lexical_name": "measurableSet_predictable_Ioc_prod",
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
  "slug": "measurableset-predictable-ioc-prod--3ad433fdbf10cfbec8e307cf",
  "source": {
    "blob": "bf59fcac61d4f8f141c29f31ccc08b6f0cbf3727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 79,
    "path": "GRWTSK/Analysis/MeasureTheory/Predictable/Variante15b5028ac76f25b05d7c8b36f06068d604635222e51fb210e4e703ff22f0cc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ad433fdbf10cfbec8e307cfd986b2a0a5c48dc7da147a1d32e2531fd1f6dd37",
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

Occurrence: `result:a9690ae6-40b5-1560-2ddd-f4d5d6019d7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurableSet_predictable_Ioc_prod [LinearOrder ι] [OrderBot ι]
    {𝓕 : Filtration ι m} (i j : ι) {s : Set Ω} (hs : MeasurableSet[𝓕 i] s) :
    MeasurableSet[𝓕.predictable] <| Set.Ioc i j ×ˢ s := by
  obtain hij | hij := le_total j i
  · simp [hij]
  · rw [← Set.Ioi_sdiff_Ioi, (by simp : (Set.Ioi i \ Set.Ioi j) ×ˢ s
      = Set.Ioi i ×ˢ (s \ s) ∪ (Set.Ioi i \ Set.Ioi j) ×ˢ s), ← Set.prod_sdiff_prod]
    exact (measurableSet_predictable_Ioi_prod hs).diff
      (measurableSet_predictable_Ioi_prod <| 𝓕.mono hij _ hs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Predictable/Variante15b5028ac76f25b05d7c8b36f06068d604635222e51fb210e4e703ff22f0cc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Predictable/Variante15b5028ac76f25b05d7c8b36f06068d604635222e51fb210e4e703ff22f0cc6.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf59fcac61d4f8f141c29f31ccc08b6f0cbf3727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
