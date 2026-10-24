# frontier_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1616a341-c7da-fe34-c77e-8b942039021c",
  "kind": "theorem",
  "lexical_name": "frontier_preimage",
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
  "slug": "frontier-preimage--1378efdeef479b7cf13f045c",
  "source": {
    "blob": "0484e326bb5c99a04dc21917931f087825cd8634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 897,
    "line": 886,
    "path": "GRWTSK/Topology/GeneralTopology/Trivialization/Varianta3a5a040495df4aa1de752ee9fd84e364012932b16196ddfcd3966eaedd06369.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1378efdeef479b7cf13f045c5c9946aa95b2120d1cea79828cac8261e89c88ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Trivialization/Varianta3a5a040495df4aa1de752ee9fd84e364012932b16196ddfcd3966eaedd06369.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1616a341-c7da-fe34-c77e-8b942039021c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 886–897.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frontier_preimage (e : Trivialization F proj) (s : Set B) :
    e.source ∩ frontier (proj ⁻¹' s) = proj ⁻¹' (e.baseSet ∩ frontier s) := by
  rw [← (e.isImage_preimage_prod s).frontier.preimage_eq, frontier_prod_univ_eq,
    (e.isImage_preimage_prod _).preimage_eq, e.source_eq, preimage_inter]

set_option backward.isDefEq.respectTransparency false in
open scoped Classical in
/-- Given two bundle trivializations `e`, `e'` of `proj : Z → B` and a set `s : Set B` such that
the base sets of `e` and `e'` intersect `frontier s` on the same set and `e p = e' p` whenever
`proj p ∈ e.baseSet ∩ frontier s`, `e.piecewise e' s Hs Heq` is the bundle trivialization over
`Set.ite s e.baseSet e'.baseSet` that is equal to `e` on `proj ⁻¹ s` and is equal to `e'`
otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Trivialization/Varianta3a5a040495df4aa1de752ee9fd84e364012932b16196ddfcd3966eaedd06369.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Trivialization/Varianta3a5a040495df4aa1de752ee9fd84e364012932b16196ddfcd3966eaedd06369.lean#L886).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0484e326bb5c99a04dc21917931f087825cd8634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
