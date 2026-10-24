# isHomeomorph_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84cafbf2-dede-f6fc-56e3-f1d28c44d9d4",
  "kind": "lemma",
  "lexical_name": "isHomeomorph_coe",
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
  "slug": "ishomeomorph-coe--667947c5e1b6067b3eb11a51",
  "source": {
    "blob": "1f271888146c4e06ac54f4198f1650cc82ab9edc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 309,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:667947c5e1b6067b3eb11a51b7629b5f9d502f4f714250a06de738b8cbbf2cd2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84cafbf2-dede-f6fc-56e3-f1d28c44d9d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isHomeomorph_coe : IsHomeomorph ((⇑) : C(X, Y) → X → Y) := homeoFnOfDiscrete.isHomeomorph

end DiscreteTopology

section InfInduced

/-- For any subset `s` of `X`, the restriction of continuous functions to `s` is continuous
as a function from `C(X, Y)` to `C(s, Y)` with their respective compact-open topologies. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f271888146c4e06ac54f4198f1650cc82ab9edc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
