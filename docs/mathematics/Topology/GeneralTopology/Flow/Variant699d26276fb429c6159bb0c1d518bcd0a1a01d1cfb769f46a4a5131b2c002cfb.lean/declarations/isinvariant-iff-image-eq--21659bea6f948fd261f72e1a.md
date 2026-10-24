# isInvariant_iff_image_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0de0d25fe3960f304e036a277fdb1ddfd5e2a5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 318,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:faf8e2b3-5bde-7188-5c2b-96331b9bd18e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e283ee52-25a5-b512-5690-b82075cc75a3",
  "kind": "theorem",
  "lexical_name": "isInvariant_iff_image_eq",
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
  "slug": "isinvariant-iff-image-eq--21659bea6f948fd261f72e1a",
  "source": {
    "blob": "b0de0d25fe3960f304e036a277fdb1ddfd5e2a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 318,
    "path": "GRWTSK/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21659bea6f948fd261f72e1aee1e1af8b4f41e07353385f93e1b375c5a507e89",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e283ee52-25a5-b512-5690-b82075cc75a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isInvariant_iff_image_eq (s : Set α) : IsInvariant ϕ s ↔ ∀ t, ϕ t '' s = s :=
  (isInvariant_iff_image _ _).trans
    (Iff.intro
      (fun h t => Subset.antisymm (h t) fun _ hx => ⟨_, h (-t) ⟨_, hx, rfl⟩, by simp [← map_add]⟩)
      fun h t => by rw [h t])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0de0d25fe3960f304e036a277fdb1ddfd5e2a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
