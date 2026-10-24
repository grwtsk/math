# monotone_nhdsSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42b385d7-aa71-55b6-b6ec-24d3551b4be7",
  "kind": "theorem",
  "lexical_name": "monotone_nhdsSet",
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
  "slug": "monotone-nhdsset--c47e6a8eb2bc6eac13878d71",
  "source": {
    "blob": "7f916d5e20c7cb3d536bf22c6c824a7240f0bb30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c47e6a8eb2bc6eac13878d711b4d35b9a580bf4bacf890ca3faedaaa8ae9db39",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42b385d7-aa71-55b6-b6ec-24d3551b4be7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monotone_nhdsSet : Monotone (𝓝ˢ : Set X → Filter X) := fun _ _ => nhdsSet_mono

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f916d5e20c7cb3d536bf22c6c824a7240f0bb30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
