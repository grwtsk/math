# isClosed_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec7ef298-02eb-7ff3-f0ba-9506a0e7ce1b",
  "kind": "theorem",
  "lexical_name": "isClosed_closedBall",
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
  "slug": "isclosed-closedball--c09f6e907d698857598d43f0",
  "source": {
    "blob": "ee5cb3374d52aa7bd6382a24270bcde5a8136ea2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant1b8ce74f91de5f2db669b0f8ce209bfe84e1bb4581ffe4f351bdd08477ba94f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c09f6e907d698857598d43f0a7af362fdbbedb1aa85fb65e9231e2b6fdf72a3c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuationTopology/Variant1b8ce74f91de5f2db669b0f8ce209bfe84e1bb4581ffe4f351bdd08477ba94f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec7ef298-02eb-7ff3-f0ba-9506a0e7ce1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_closedBall (r : Γ₀) : IsClosed (X := R) {x | v x ≤ r} := by
  rw [← isOpen_compl_iff, isOpen_iff_mem_nhds]
  intro x hx
  rw [mem_nhds]
  have hx' : v x ≠ 0 := ne_of_gt <| lt_of_le_of_lt zero_le' <| lt_of_not_ge hx
  exact ⟨Units.mk0 _ hx', fun y hy hy' => ne_of_lt hy <| map_sub_swap v x y ▸
      (Valuation.map_sub_eq_of_lt_left _ <| lt_of_le_of_lt hy' (lt_of_not_ge hx))⟩

/-- A closed ball centred at the origin in a valued ring is clopen. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuationTopology/Variant1b8ce74f91de5f2db669b0f8ce209bfe84e1bb4581ffe4f351bdd08477ba94f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant1b8ce74f91de5f2db669b0f8ce209bfe84e1bb4581ffe4f351bdd08477ba94f1.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee5cb3374d52aa7bd6382a24270bcde5a8136ea2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
