# TotallySeparatedSpace.t2Space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60ab8419038768181b2235671c0f5f49c3c47b56c1b2f6117cf579e0ba99b6e8",
  "kind": "instance",
  "lexical_name": "TotallySeparatedSpace.t2Space",
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
  "slug": "totallyseparatedspace-t2space--61de0ee0c6b66db44080a3c3",
  "source": {
    "blob": "3e3f4943c4997b66e1dc2b9e9374b62813d9d61b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/Separation/Variantbc5469ef9fec0ba5fec4323bad8b476b3d6150bd646468b233db317cdf7dab97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61de0ee0c6b66db44080a3c30d326b46d2818cf04c537278ac7b05a879f0646d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Separation/Variantbc5469ef9fec0ba5fec4323bad8b476b3d6150bd646468b233db317cdf7dab97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60ab8419038768181b2235671c0f5f49c3c47b56c1b2f6117cf579e0ba99b6e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance TotallySeparatedSpace.t2Space [TotallySeparatedSpace X] : T2Space X where
  t2 x y h := by
    obtain ⟨u, v, h₁, h₂, h₃, h₄, _, h₅⟩ := isTotallySeparated_univ trivial trivial h
    exact ⟨u, v, h₁, h₂, h₃, h₄, h₅⟩

end TotallySeparated
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Separation/Variantbc5469ef9fec0ba5fec4323bad8b476b3d6150bd646468b233db317cdf7dab97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Separation/Variantbc5469ef9fec0ba5fec4323bad8b476b3d6150bd646468b233db317cdf7dab97.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3f4943c4997b66e1dc2b9e9374b62813d9d61b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
