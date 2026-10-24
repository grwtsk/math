# IsNowhereDense.subset_of_closed_isNowhereDense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:723b97d2-3d5c-dff4-90a7-37703ef4de70",
  "kind": "lemma",
  "lexical_name": "IsNowhereDense.subset_of_closed_isNowhereDense",
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
  "slug": "isnowheredense-subset-of-closed-isnowheredense--eb3b2258ca011e954dd6b3d8",
  "source": {
    "blob": "4294eb4c65288af29e958e8dfc906085db51fb12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2b74f5c5e36c2f17a4e780bf29b750d38a7d3e4f5220906825bc058bc4952d2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb3b2258ca011e954dd6b3d8b3432cb1e6e182899b9b15aed448703942e6b048",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant2b74f5c5e36c2f17a4e780bf29b750d38a7d3e4f5220906825bc058bc4952d2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:723b97d2-3d5c-dff4-90a7-37703ef4de70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsNowhereDense.subset_of_closed_isNowhereDense {s : Set X} (hs : IsNowhereDense s) :
    ∃ t : Set X, s ⊆ t ∧ IsNowhereDense t ∧ IsClosed t :=
  ⟨closure s, subset_closure, ⟨hs.closure, isClosed_closure⟩⟩

/-- A set `s` is closed and nowhere dense iff its complement `sᶜ` is open and dense. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant2b74f5c5e36c2f17a4e780bf29b750d38a7d3e4f5220906825bc058bc4952d2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant2b74f5c5e36c2f17a4e780bf29b750d38a7d3e4f5220906825bc058bc4952d2d.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4294eb4c65288af29e958e8dfc906085db51fb12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
