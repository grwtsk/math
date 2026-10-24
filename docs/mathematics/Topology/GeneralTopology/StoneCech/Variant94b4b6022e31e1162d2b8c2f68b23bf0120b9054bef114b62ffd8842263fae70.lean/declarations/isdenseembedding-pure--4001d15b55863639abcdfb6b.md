# isDenseEmbedding_pure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77d3e3a3-6ccf-fcf5-8b98-55d70dddab2b",
  "kind": "theorem",
  "lexical_name": "isDenseEmbedding_pure",
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
  "slug": "isdenseembedding-pure--4001d15b55863639abcdfb6b",
  "source": {
    "blob": "ea428a12b0c1a513c2275631d0c002d000e39fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 166,
    "path": "GRWTSK/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4001d15b55863639abcdfb6bf7ef037f1548764fdd22d8c510301850bce428b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77d3e3a3-6ccf-fcf5-8b98-55d70dddab2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isDenseEmbedding_pure : @IsDenseEmbedding _ _ ⊥ _ (pure : α → Ultrafilter α) :=
  letI : TopologicalSpace α := ⊥
  { isDenseInducing_pure with injective := ultrafilter_pure_injective }

end Embedding

section Extension

/- Goal: Any function `α → γ` to a compact Hausdorff space `γ` has a
  unique extension to a continuous function `Ultrafilter α → γ`. We
  already know it must be unique because `α → Ultrafilter α` is a
  dense embedding and `γ` is Hausdorff. For existence, we will invoke
  `IsDenseInducing.continuous_extend`. -/
variable {γ : Type*} [TopologicalSpace γ]

/-- The extension of a function `α → γ` to a function `Ultrafilter α → γ`.
  When `γ` is a compact Hausdorff space it will be continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea428a12b0c1a513c2275631d0c002d000e39fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
