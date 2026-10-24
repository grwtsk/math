# IsVonNBounded.of_topologicalSpace_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40d9e8f1-f65b-0b40-dcd9-bebbff86f308",
  "kind": "theorem",
  "lexical_name": "IsVonNBounded.of_topologicalSpace_le",
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
  "slug": "isvonnbounded-of-topologicalspace-le--7e14fd2c0cfd1a9e9c118815",
  "source": {
    "blob": "66d00f748acb5887e35769ac2433feb5a96ab665",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 172,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e14fd2c0cfd1a9e9c118815c3e99d6438ee95f0fa7bf6a4eb42738c0a369528",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40d9e8f1-f65b-0b40-dcd9-bebbff86f308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsVonNBounded.of_topologicalSpace_le {t t' : TopologicalSpace E} (h : t ≤ t') {s : Set E}
    (hs : @IsVonNBounded 𝕜 E _ _ _ t s) : @IsVonNBounded 𝕜 E _ _ _ t' s := fun _ hV =>
  hs <| (le_iff_nhds t t').mp h 0 hV

end MultipleTopologies

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66d00f748acb5887e35769ac2433feb5a96ab665` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
