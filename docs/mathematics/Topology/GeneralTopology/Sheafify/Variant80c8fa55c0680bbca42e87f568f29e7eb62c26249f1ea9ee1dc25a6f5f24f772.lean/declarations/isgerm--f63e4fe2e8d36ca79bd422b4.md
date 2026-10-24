# isGerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6183b0e5cfa7f73b7182ef08db1cc457c818b37c9c933305f4a56bae9370d3b6",
  "kind": "def",
  "lexical_name": "isGerm",
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
  "slug": "isgerm--f63e4fe2e8d36ca79bd422b4",
  "source": {
    "blob": "7043c72cc7a8344ac6e45110c24aafd12a43715e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f63e4fe2e8d36ca79bd422b44a403605f896babf2e584f12aa3988f5c41e8267",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6183b0e5cfa7f73b7182ef08db1cc457c818b37c9c933305f4a56bae9370d3b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isGerm : PrelocalPredicate fun x => F.stalk x where
  pred {U} f := ∃ g : F.obj (op U), ∀ x : U, f x = F.germ U x.1 x.2 g
  res := fun i _ ⟨g, p⟩ => ⟨F.map i.op g, fun x ↦ (p (i x)).trans (F.germ_res_apply i x x.2 g).symm⟩

/-- The local predicate on functions into the stalks,
asserting that the function is locally equal to a germ.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7043c72cc7a8344ac6e45110c24aafd12a43715e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
