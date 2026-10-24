# flip_unflip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b86aa213913f66461368b6e1466a3e40aad5b864",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 449,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:440ff04a-3cbe-1f1f-ad3c-b59889e1ea5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4d6d043-4dc6-b00c-37ae-5c10197fdc39",
  "kind": "theorem",
  "lexical_name": "flip_unflip",
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
  "slug": "flip-unflip--71f159de170166c4d4d95e0e",
  "source": {
    "blob": "b86aa213913f66461368b6e1466a3e40aad5b864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 449,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71f159de170166c4d4d95e0e2317aa57c69ab2187648b9fb9ac836321d9e4be9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4d6d043-4dc6-b00c-37ae-5c10197fdc39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flip_unflip {X α β : Type*} [Finite α] [TopologicalSpace X]
    (f : α → LocallyConstant X β) : (unflip f).flip = f := rfl
#align locally_constant.flip_unflip LocallyConstant.flip_unflip

section Comap

open Classical

variable [TopologicalSpace Y]

/-- Pull back of locally constant maps under any map, by pre-composition.

This definition only makes sense if `f` is continuous,
in which case it sends locally constant functions to their precomposition with `f`.
See also `LocallyConstant.coe_comap`.

TODO: take `f : C(X, Y)` as an argument? Or we actually use it for discontinuous `f`? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b86aa213913f66461368b6e1466a3e40aad5b864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
