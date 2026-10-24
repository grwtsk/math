# isContained_of_card_edgeFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0872ba82d0a75b157a410be7c6251980042ec45c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bbe4eb5-88de-7a35-9a2a-405fa3b8590d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:242a7a92-c8e1-3e4c-2d3a-5dfc75cb66cd",
  "kind": "theorem",
  "lexical_name": "isContained_of_card_edgeFinset",
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
  "slug": "iscontained-of-card-edgefinset--7a4d296725046b3af0def0c0",
  "source": {
    "blob": "0872ba82d0a75b157a410be7c6251980042ec45c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a4d296725046b3af0def0c0159b81535c18ba50e4d6aa430594ed41731104db",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:242a7a92-c8e1-3e4c-2d3a-5dfc75cb66cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isContained_of_card_edgeFinset (H : SimpleGraph W) {ε : ℝ} (hε_pos : 0 < ε)
    {V : Type*} [Fintype V] (h_verts : card V ≥ turanDensityConst H ε)
    (G : SimpleGraph V) [DecidableRel G.Adj] :
    #G.edgeFinset ≥ (turanDensity H + ε) * (card V).choose 2 → H ⊑ G := by
  classical
  rw [(G.overFinIso rfl).card_edgeFinset_eq, isContained_congr Iso.refl (G.overFinIso rfl)]
  apply Nat.find_spec <| eventually_atTop.mp <| eventually_isContained_of_card_edgeFinset H hε_pos
  simpa only [turanDensityConst, hε_pos, ↓reduceDIte] using h_verts

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0872ba82d0a75b157a410be7c6251980042ec45c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
