# Filter.EventuallyEqSet.of_mulIndicator_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7954778f-599f-45ce-a455-991ad9efba82",
  "kind": "theorem",
  "lexical_name": "Filter.EventuallyEqSet.of_mulIndicator_const",
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
  "slug": "filter-eventuallyeqset-of-mulindicator-const--bf65917614fdfb2446f58bdb",
  "source": {
    "blob": "672698eb44324628a008a770d702a51dffaff800",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 140,
    "path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf65917614fdfb2446f58bdbdadb1bd9816ee74b584befd2f1984344c10ea1ce",
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

Occurrence: `result:7954778f-599f-45ce-a455-991ad9efba82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.EventuallyEqSet.of_mulIndicator_const [One β] {l : Filter α} {c : β} (hc : c ≠ 1)
    {s t : Set α} (h : s.mulIndicator (fun _ ↦ c) =ᶠ[l] t.mulIndicator fun _ ↦ c) : s =ᶠ[l] t :=
  .of_mulIndicator (Eventually.of_forall fun _ ↦ hc) h

@[to_additive (attr := deprecated (since := "2026-08-14"))]
alias Filter.EventuallyEq.of_mulIndicator_const := Filter.EventuallyEqSet.of_mulIndicator_const

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `672698eb44324628a008a770d702a51dffaff800` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
