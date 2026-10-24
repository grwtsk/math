# actual_distinct_key_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75e4be1e-2a41-e121-fcb1-abd949eefd23",
  "kind": "theorem",
  "lexical_name": "actual_distinct_key_order",
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
  "slug": "actual-distinct-key-order--34bddb352daf7a143a44f4fd",
  "source": {
    "blob": "55584e6630fa4889e19de96aec865ddc8b2302a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 294,
    "path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableDirectLookup.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34bddb352daf7a143a44f4fd0da7d045ec9b0b9f46422349e2ddba1918f29c9a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableDirectLookup.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75e4be1e-2a41-e121-fcb1-abd949eefd23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_distinct_key_order : ∃ target,
    orderedInitial.1.1.references.mapM (fun reference =>
      (directLookupAt (SingleObj.star Bool) orderedInitial actions reference.2).map
        (fun next => (reference.1, next))) =
      some [(31, target), (17, target), (31, target)] := by
  have hreference : (31, 0) ∈ orderedInitial.1.1.references := by
    change (31, 0) ∈ [(31, 0), (17, 0), (31, 0)]
    simp
  obtain ⟨target, htarget, _, _⟩ :=
    transport_reference (SingleObj.star Bool) orderedInitial actions (31, 0) hreference
  have hdirect : directLookupAt (SingleObj.star Bool) orderedInitial actions 0 = some target := by
    rw [← transportSlotAt_eq_directLookup_of_reference (SingleObj.star Bool) orderedInitial
      actions (31, 0) hreference]
    exact htarget
  refine ⟨target, ?_⟩
  change [(31, 0), (17, 0), (31, 0)].mapM (fun reference =>
    (directLookupAt (SingleObj.star Bool) orderedInitial actions reference.2).map
      (fun next => (reference.1, next))) = _
  simp [hdirect]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableDirectLookup.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableDirectLookup.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55584e6630fa4889e19de96aec865ddc8b2302a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
