# toDeleteEdges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c397f3145bd15533a0a00b44987ea60d49e55b64f8e3dbbd059165cf82fba88",
  "kind": "abbrev",
  "lexical_name": "toDeleteEdges",
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
  "slug": "todeleteedges--2a602eac7541ba5802f322ee",
  "source": {
    "blob": "165b861ad4fb1e2214c9f1c80e2e61a0f3940e24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 256,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variant7e2eabaf42eefb73b7926084c2c9b20200dde48422f1efa7dfecd2ca2d94836f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a602eac7541ba5802f322ee6896c4ad00ae3e1058bfea4762dd3ff2a3814f75",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variant7e2eabaf42eefb73b7926084c2c9b20200dde48422f1efa7dfecd2ca2d94836f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c397f3145bd15533a0a00b44987ea60d49e55b64f8e3dbbd059165cf82fba88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev toDeleteEdges (s : Set (Sym2 V)) {v w : V} (p : G.Walk v w)
    (hp : ∀ e, e ∈ p.edges → e ∉ s) : (G.deleteEdges s).Walk v w :=
  p.transfer _ <| by
    simp only [edgeSet_deleteEdges, Set.mem_sdiff]
    exact fun e ep => ⟨edges_subset_edgeSet p ep, hp e ep⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variant7e2eabaf42eefb73b7926084c2c9b20200dde48422f1efa7dfecd2ca2d94836f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variant7e2eabaf42eefb73b7926084c2c9b20200dde48422f1efa7dfecd2ca2d94836f.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `165b861ad4fb1e2214c9f1c80e2e61a0f3940e24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
