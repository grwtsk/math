# of_constant_on_preconnected_clopens

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
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:984dfd22-f1fd-53ec-47a3-98a93ef4532d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9a0d899-c95f-aa6c-c281-8f4533b6b955",
  "kind": "theorem",
  "lexical_name": "of_constant_on_preconnected_clopens",
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
  "slug": "of-constant-on-preconnected-clopens--a4d2af0179b38ee63b2f5432",
  "source": {
    "blob": "b86aa213913f66461368b6e1466a3e40aad5b864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 235,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4d2af0179b38ee63b2f5432d84d6abf0378d0ee6ddb73a5a5f782b4f94720c5",
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

Occurrence: `result:c9a0d899-c95f-aa6c-c281-8f4533b6b955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_constant_on_preconnected_clopens [LocallyConnectedSpace X] {f : X → Y}
    (h : ∀ U : Set X, IsPreconnected U → IsClopen U → ∀ x ∈ U, ∀ y ∈ U, f y = f x) :
    IsLocallyConstant f :=
  of_constant_on_connected_clopens fun U hU ↦ h U hU.isPreconnected
#align is_locally_constant.of_constant_on_preconnected_clopens IsLocallyConstant.of_constant_on_preconnected_clopens

end IsLocallyConstant

/-- A (bundled) locally constant function from a topological space `X` to a type `Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b86aa213913f66461368b6e1466a3e40aad5b864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
