# Monotone.map_iSup_of_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:677f5174-2ca2-aee8-6ad1-0a4f4f93a702",
  "kind": "theorem",
  "lexical_name": "Monotone.map_iSup_of_continuousAt",
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
  "slug": "monotone-map-isup-of-continuousat--bb66868b240a90da8c759dce",
  "source": {
    "blob": "1409839fd48f7ef033ac6eaefa7c52a22a1c5bc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 353,
    "path": "GRWTSK/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb66868b240a90da8c759dceba2388afe52621efa9efe44165378769745724d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:677f5174-2ca2-aee8-6ad1-0a4f4f93a702`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monotone.map_iSup_of_continuousAt {ι : Sort*} {f : α → β} {g : ι → α}
    (Cf : ContinuousAt f (iSup g)) (Mf : Monotone f) (fbot : f ⊥ = ⊥) :
    f (⨆ i, g i) = ⨆ i, f (g i) := by
  rw [iSup, Mf.map_sSup_of_continuousAt Cf fbot, ← range_comp, iSup, comp_def]

/-- A monotone function `f` sending `top` to `top` and continuous at the infimum of a set sends
this infimum to the infimum of the image of this set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1409839fd48f7ef033ac6eaefa7c52a22a1c5bc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
