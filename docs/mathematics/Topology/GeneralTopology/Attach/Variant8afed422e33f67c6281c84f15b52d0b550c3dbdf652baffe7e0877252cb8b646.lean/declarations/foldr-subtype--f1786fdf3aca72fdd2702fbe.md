# foldr_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0851aa1e-4155-3458-8abb-bcf2ad796224",
  "kind": "theorem",
  "lexical_name": "foldr_subtype",
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
  "slug": "foldr-subtype--f1786fdf3aca72fdd2702fbe",
  "source": {
    "blob": "476cbde4449e31979885f46854ba887cc560f694",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 656,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1786fdf3aca72fdd2702fbe6866871ef8cd549f1dc2a5b72f5eb62c343c1d93",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0851aa1e-4155-3458-8abb-bcf2ad796224`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 656–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem foldr_subtype {p : α → Prop} {xs : Array { x // p x }}
    {f : { x // p x } → β → β} {g : α → β → β} {x : β}
    (hf : ∀ x h b, f ⟨x, h⟩ b = g x b) :
    xs.foldr f x = xs.unattach.foldr g x := by
  cases xs
  simp only [List.foldr_toArray', List.unattach_toArray]
  rw [List.foldr_subtype]
  simp [hf]

/-- Variant of `foldr_subtype` with side condition to check `stop = l.size`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean#L656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476cbde4449e31979885f46854ba887cc560f694` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
