# _root_.GRWTSK.Topology.GeneralTopology.CompactOpenEq.Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.Continuous.compCM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b3d4fc3-9ca0-36d7-1d1e-a60a1cd862d6",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.CompactOpenEq.Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.Continuous.compCM",
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
  "slug": "root-grwtsk-topology-generaltopology-compactopeneq-variantf11b6247224385--5efc3026d2934ad4ee03d7d0",
  "source": {
    "blob": "1f271888146c4e06ac54f4198f1650cc82ab9edc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5efc3026d2934ad4ee03d7d07300a2985a15f8c0f70c973d0e77c1cacdf7f53c",
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

Occurrence: `result:5b3d4fc3-9ca0-36d7-1d1e-a60a1cd862d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.CompactOpenEq.Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.Continuous.compCM (hg : Continuous g) (hf : Continuous f) :
    Continuous fun x => (g x).comp (f x) :=
  continuous_comp'.comp (hf.prodMk hg)

end Functorial

section Ev

/-- The evaluation map `C(X, Y) × X → Y` is continuous
if `X, Y` is a locally compact pair of spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f271888146c4e06ac54f4198f1650cc82ab9edc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
