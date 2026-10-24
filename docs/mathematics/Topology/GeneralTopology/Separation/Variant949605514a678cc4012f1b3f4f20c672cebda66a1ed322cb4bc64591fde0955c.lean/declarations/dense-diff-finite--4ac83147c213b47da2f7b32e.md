# Dense.diff_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:211ada6a-81b4-2de6-f5bd-dfe75fa38b13",
  "kind": "theorem",
  "lexical_name": "Dense.diff_finite",
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
  "slug": "dense-diff-finite--4ac83147c213b47da2f7b32e",
  "source": {
    "blob": "48e4761a1d4f1e3a46cd7c2bd83b5a0a7b227c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 751,
    "line": 744,
    "path": "GRWTSK/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ac83147c213b47da2f7b32e163b3396d508349adbc9fbdc2c86470138a7bfd6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:211ada6a-81b4-2de6-f5bd-dfe75fa38b13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 744–751.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Dense.diff_finite [T1Space α] [∀ x : α, NeBot (𝓝[≠] x)] {s : Set α} (hs : Dense s)
    {t : Set α} (ht : t.Finite) : Dense (s \ t) := by
  convert hs.diff_finset ht.toFinset
  exact (Finite.coe_toFinset _).symm
#align dense.diff_finite Dense.diff_finite

/-- If a function to a `T1Space` tends to some limit `b` at some point `a`, then necessarily
`b = f a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean#L744).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48e4761a1d4f1e3a46cd7c2bd83b5a0a7b227c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
