# IsHenstock.disjUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca2c2308-b686-dc2e-cd28-9805a60b9b1b",
  "kind": "theorem",
  "lexical_name": "IsHenstock.disjUnion",
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
  "slug": "ishenstock-disjunion--c30a04af37c36b70a3b0a7f6",
  "source": {
    "blob": "e1f2768a4c6159d874b0c3c898fc924239ed5bc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 340,
    "path": "GRWTSK/Topology/GeneralTopology/Tagged/Variant5bd9635004ed1217a7ecba1dc467872587adeef80dd0bb573b121b969f842c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c30a04af37c36b70a3b0a7f64a59ec1ac23f869b70fd696b3a57590570d663db",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tagged/Variant5bd9635004ed1217a7ecba1dc467872587adeef80dd0bb573b121b969f842c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca2c2308-b686-dc2e-cd28-9805a60b9b1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsHenstock.disjUnion (h₁ : IsHenstock π₁) (h₂ : IsHenstock π₂)
    (h : Disjoint π₁.iUnion π₂.iUnion) : IsHenstock (π₁.disjUnion π₂ h) := by
  classical
  refine fun J hJ => (Finset.mem_union.1 hJ).elim (fun hJ => ?_) fun hJ => ?_
  · rw [disjUnion_tag_of_mem_left _ hJ]
    exact h₁ _ hJ
  · rw [disjUnion_tag_of_mem_right _ hJ]
    exact h₂ _ hJ

/-- If `I ≤ J`, then every tagged prepartition of `I` is a tagged prepartition of `J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tagged/Variant5bd9635004ed1217a7ecba1dc467872587adeef80dd0bb573b121b969f842c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tagged/Variant5bd9635004ed1217a7ecba1dc467872587adeef80dd0bb573b121b969f842c3d.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f2768a4c6159d874b0c3c898fc924239ed5bc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
