# ExtremallyDisconnected.disjoint_closure_of_disjoint_IsOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:510b0d0c-a400-3539-f261-93388b394827",
  "kind": "lemma",
  "lexical_name": "ExtremallyDisconnected.disjoint_closure_of_disjoint_IsOpen",
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
  "slug": "extremallydisconnected-disjoint-closure-of-disjoint-isopen--d42958a14da98941eb0e8960",
  "source": {
    "blob": "9398a10bec500bb329a185e11a9d8a1eee72adee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d42958a14da98941eb0e8960b9c778986eefa988e6ea6f503fd85149c88944cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:510b0d0c-a400-3539-f261-93388b394827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ExtremallyDisconnected.disjoint_closure_of_disjoint_IsOpen [ExtremallyDisconnected A]
    {U₁ U₂ : Set A} (h : Disjoint U₁ U₂) (hU₁ : IsOpen U₁) (hU₂ : IsOpen U₂) :
    Disjoint (closure U₁) (closure U₂) :=
  (h.closure_right hU₁).closure_left <| open_closure U₂ hU₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9398a10bec500bb329a185e11a9d8a1eee72adee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
