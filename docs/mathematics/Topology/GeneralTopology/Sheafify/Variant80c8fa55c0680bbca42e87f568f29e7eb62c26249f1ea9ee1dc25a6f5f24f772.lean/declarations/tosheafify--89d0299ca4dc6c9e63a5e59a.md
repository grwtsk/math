# toSheafify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60dc39aaa2a95e6695ad349ede1f96badc88da8a0cde10021c984421636cf738",
  "kind": "def",
  "lexical_name": "toSheafify",
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
  "slug": "tosheafify--89d0299ca4dc6c9e63a5e59a",
  "source": {
    "blob": "7043c72cc7a8344ac6e45110c24aafd12a43715e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89d0299ca4dc6c9e63a5e59ab8c30d3492d4a7df14ca76989e3ed171bc5ce7d4",
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

Occurrence: `declaration:60dc39aaa2a95e6695ad349ede1f96badc88da8a0cde10021c984421636cf738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSheafify : F ⟶ F.sheafify.1 where
  app U f := ⟨fun x => F.germ _ x x.2 f, PrelocalPredicate.sheafifyOf ⟨f, fun x => rfl⟩⟩
  naturality U U' f := by
    ext x
    apply Subtype.ext -- Porting note: Added `apply`
    ext ⟨u, m⟩
    exact germ_res_apply F f.unop u m x

/-- The natural morphism from the stalk of the sheafification to the original stalk.
In `sheafifyStalkIso` we show this is an isomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7043c72cc7a8344ac6e45110c24aafd12a43715e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
