# continuous_inf_dom_left₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9f9f636-ad01-254c-9aa6-d4be248758e4",
  "kind": "theorem",
  "lexical_name": "continuous_inf_dom_left₂",
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
  "slug": "continuous-inf-dom-left--8f7608bf68d58e08f0733563",
  "source": {
    "blob": "9ece8a13e38809536f1374d157bab315735015e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 191,
    "path": "GRWTSK/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f7608bf68d58e08f073356336c73dd16932bfe4a78f36c0ab9005438b026c74",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9f9f636-ad01-254c-9aa6-d4be248758e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_inf_dom_left₂ {X Y Z} {f : X → Y → Z} {ta1 ta2 : TopologicalSpace X}
    {tb1 tb2 : TopologicalSpace Y} {tc1 : TopologicalSpace Z}
    (h : by haveI := ta1; haveI := tb1; exact Continuous fun p : X × Y => f p.1 p.2) : by
    haveI := ta1 ⊓ ta2; haveI := tb1 ⊓ tb2; exact Continuous fun p : X × Y => f p.1 p.2 := by
  have ha := @continuous_inf_dom_left _ _ id ta1 ta2 ta1 (@continuous_id _ (id _))
  have hb := @continuous_inf_dom_left _ _ id tb1 tb2 tb1 (@continuous_id _ (id _))
  have h_continuous_id := @Continuous.prodMap _ _ _ _ ta1 tb1 (ta1 ⊓ ta2) (tb1 ⊓ tb2) _ _ ha hb
  exact @Continuous.comp _ _ _ (id _) (id _) _ _ _ h h_continuous_id

/-- A version of `continuous_inf_dom_right` for binary functions -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ece8a13e38809536f1374d157bab315735015e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
