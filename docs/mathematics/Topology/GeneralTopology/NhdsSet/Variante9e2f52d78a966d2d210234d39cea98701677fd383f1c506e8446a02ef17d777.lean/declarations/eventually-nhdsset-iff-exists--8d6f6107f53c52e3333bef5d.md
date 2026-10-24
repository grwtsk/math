# eventually_nhdsSet_iff_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8e86652-88ad-feeb-50ca-ed37c4ca600e",
  "kind": "theorem",
  "lexical_name": "eventually_nhdsSet_iff_exists",
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
  "slug": "eventually-nhdsset-iff-exists--8d6f6107f53c52e3333bef5d",
  "source": {
    "blob": "7f916d5e20c7cb3d536bf22c6c824a7240f0bb30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d6f6107f53c52e3333bef5d62bd76bbd735dbfeeee2b0c0e7642fce416a260a",
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

Occurrence: `result:a8e86652-88ad-feeb-50ca-ed37c4ca600e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_nhdsSet_iff_exists {p : X → Prop} :
    (∀ᶠ x in 𝓝ˢ s, p x) ↔ ∃ t, IsOpen t ∧ s ⊆ t ∧ ∀ x, x ∈ t → p x :=
  mem_nhdsSet_iff_exists

/-- A proposition is true on a set neighborhood of `s`
iff it is eventually true near each point in the set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f916d5e20c7cb3d536bf22c6c824a7240f0bb30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
