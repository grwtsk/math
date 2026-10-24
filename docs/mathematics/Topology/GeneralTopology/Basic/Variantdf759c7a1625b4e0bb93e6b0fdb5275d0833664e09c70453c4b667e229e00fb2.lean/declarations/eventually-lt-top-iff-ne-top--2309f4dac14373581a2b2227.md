# Eventually.lt_top_iff_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f3b06fa-991c-e217-ed7b-659c77ba3563",
  "kind": "theorem",
  "lexical_name": "Eventually.lt_top_iff_ne_top",
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
  "slug": "eventually-lt-top-iff-ne-top--2309f4dac14373581a2b2227",
  "source": {
    "blob": "0f10793f23ae104512c0a8fb86ab4625b5eb0aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1742,
    "line": 1737,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdf759c7a1625b4e0bb93e6b0fdb5275d0833664e09c70453c4b667e229e00fb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2309f4dac14373581a2b2227715341408e2a8708ad44c0bc909bf98dd2cd97a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantdf759c7a1625b4e0bb93e6b0fdb5275d0833664e09c70453c4b667e229e00fb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f3b06fa-991c-e217-ed7b-659c77ba3563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1737–1742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Eventually.lt_top_iff_ne_top [PartialOrder β] [OrderTop β] {l : Filter α} {f : α → β} :
    (∀ᶠ x in l, f x < ⊤) ↔ ∀ᶠ x in l, f x ≠ ⊤ :=
  ⟨Eventually.ne_of_lt, Eventually.lt_top_of_ne⟩
#align filter.eventually.lt_top_iff_ne_top Filter.Eventually.lt_top_iff_ne_top

@[mono]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdf759c7a1625b4e0bb93e6b0fdb5275d0833664e09c70453c4b667e229e00fb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdf759c7a1625b4e0bb93e6b0fdb5275d0833664e09c70453c4b667e229e00fb2.lean#L1737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f10793f23ae104512c0a8fb86ab4625b5eb0aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
