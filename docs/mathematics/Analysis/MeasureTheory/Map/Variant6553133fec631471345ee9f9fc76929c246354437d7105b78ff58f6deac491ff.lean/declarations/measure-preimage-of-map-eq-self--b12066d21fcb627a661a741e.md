# measure_preimage_of_map_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00e86fbe-6b82-a6cc-342f-d0fe6dbc5a16",
  "kind": "lemma",
  "lexical_name": "measure_preimage_of_map_eq_self",
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
  "slug": "measure-preimage-of-map-eq-self--b12066d21fcb627a661a741e",
  "source": {
    "blob": "cbf66a344aa173fd547bb8bdd52dfd4339adc0d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 190,
    "path": "GRWTSK/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b12066d21fcb627a661a741e84bd3b89c59fbbf14db3aa746536d7e64c0833e8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00e86fbe-6b82-a6cc-342f-d0fe6dbc5a16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_preimage_of_map_eq_self {f : α → α} (hf : map f μ = μ)
    {s : Set α} (hs : NullMeasurableSet s μ) : μ (f ⁻¹' s) = μ s := by
  if hfm : AEMeasurable f μ then
    rw [← map_apply₀ hfm, hf]
    rwa [hf]
  else
    rw [map_of_not_aemeasurable hfm] at hf
    simp [← hf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbf66a344aa173fd547bb8bdd52dfd4339adc0d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
