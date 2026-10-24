# AntitoneOn.tendsto_nhdsGT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fac475dc-9041-c2c4-9e88-b075c47c46ed",
  "kind": "lemma",
  "lexical_name": "AntitoneOn.tendsto_nhdsGT",
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
  "slug": "antitoneon-tendsto-nhdsgt--f114386d372967d7ce17a613",
  "source": {
    "blob": "1409839fd48f7ef033ac6eaefa7c52a22a1c5bc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 531,
    "path": "GRWTSK/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f114386d372967d7ce17a613c6c333ef10434e5f957cf41f1a783fdd6af80fa3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fac475dc-9041-c2c4-9e88-b075c47c46ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AntitoneOn.tendsto_nhdsGT {α β : Type*} [LinearOrder α] [TopologicalSpace α] [OrderTopology α]
    [ConditionallyCompleteLinearOrder β] [TopologicalSpace β] [OrderTopology β] {f : α → β} {x : α}
    (Af : AntitoneOn f (Ioi x)) (h_bdd : BddAbove (f '' Ioi x)) :
    Tendsto f (𝓝[>] x) (𝓝 (sSup (f '' Ioi x))) :=
  MonotoneOn.tendsto_nhdsGT Af.dual_right h_bdd

/-- An antitone map has a limit to the left of any point `x`, equal to `sInf (f '' (Iio x))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1409839fd48f7ef033ac6eaefa7c52a22a1c5bc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
