# Filter.EventuallyEq.mulIndicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1006982f-6647-d16d-0e62-895760c38ff5",
  "kind": "theorem",
  "lexical_name": "Filter.EventuallyEq.mulIndicator",
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
  "slug": "filter-eventuallyeq-mulindicator--b17400c66c1cf87eaad61b1f",
  "source": {
    "blob": "672698eb44324628a008a770d702a51dffaff800",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b17400c66c1cf87eaad61b1f0d011619905689fa686026f8eabe5ff95ff835d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1006982f-6647-d16d-0e62-895760c38ff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Filter.EventuallyEq.mulIndicator [One β] {l : Filter α} {f g : α → β} {s : Set α}
    (hfg : f =ᶠ[l] g) : s.mulIndicator f =ᶠ[l] s.mulIndicator g :=
  mulIndicator_eventuallyEq (hfg.filter_mono inf_le_left) EventuallyEq.rfl

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `672698eb44324628a008a770d702a51dffaff800` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
