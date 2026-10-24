# nhdsSet_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4ae464c-14ec-cb6d-0fca-f3522499fa92",
  "kind": "theorem",
  "lexical_name": "nhdsSet_insert",
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
  "slug": "nhdsset-insert--31f48455d3faffdd9cc7b894",
  "source": {
    "blob": "7f916d5e20c7cb3d536bf22c6c824a7240f0bb30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 175,
    "path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31f48455d3faffdd9cc7b894ae59521c923b73fe15c20bd05b8bf3661f53a935",
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

Occurrence: `result:a4ae464c-14ec-cb6d-0fca-f3522499fa92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhdsSet_insert (x : X) (s : Set X) : 𝓝ˢ (insert x s) = 𝓝 x ⊔ 𝓝ˢ s := by
  rw [insert_eq, nhdsSet_union, nhdsSet_singleton]

/-- This inequality cannot be improved to an equality. For instance,
if `X` has two elements and the coarse topology and `s` and `t` are distinct singletons then
`𝓝ˢ (s ∩ t) = ⊥` while `𝓝ˢ s ⊓ 𝓝ˢ t = ⊤` and those are different. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NhdsSet/Variante9e2f52d78a966d2d210234d39cea98701677fd383f1c506e8446a02ef17d777.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f916d5e20c7cb3d536bf22c6c824a7240f0bb30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
