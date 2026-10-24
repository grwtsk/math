# ofClopen_fiber_zero

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
      "line": 357,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9278ec54-e457-7f50-60d5-661e46289e87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8333cb87-0360-d1bd-a976-c77db72c67b2",
  "kind": "theorem",
  "lexical_name": "ofClopen_fiber_zero",
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
  "slug": "ofclopen-fiber-zero--0c803b571995887ae55c76df",
  "source": {
    "blob": "b86aa213913f66461368b6e1466a3e40aad5b864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 357,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c803b571995887ae55c76dfaac3c79ef9f00876286ded636f316eebddf1c177",
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

Occurrence: `result:8333cb87-0360-d1bd-a976-c77db72c67b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofClopen_fiber_zero {X : Type*} [TopologicalSpace X] {U : Set X} [∀ x, Decidable (x ∈ U)]
    (hU : IsClopen U) : ofClopen hU ⁻¹' ({0} : Set (Fin 2)) = U := by
  ext
  simp only [ofClopen, mem_singleton_iff, Fin.one_eq_zero_iff, coe_mk, mem_preimage,
    ite_eq_left_iff, Nat.succ_succ_ne_one]
  tauto
#align locally_constant.of_clopen_fiber_zero LocallyConstant.ofClopen_fiber_zero

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b86aa213913f66461368b6e1466a3e40aad5b864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
