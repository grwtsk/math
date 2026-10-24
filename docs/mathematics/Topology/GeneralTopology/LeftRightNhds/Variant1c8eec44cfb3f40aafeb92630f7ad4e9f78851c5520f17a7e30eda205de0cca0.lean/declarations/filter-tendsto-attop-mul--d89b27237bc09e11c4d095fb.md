# Filter.Tendsto.atTop_mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e9fd6d724f36ef20986144bfe3a1b20895c83bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 421,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8518c09-efac-7eeb-c704-10133c5f35a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02a4d390-02df-2d29-9065-0a96a6a2f68c",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.atTop_mul'",
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
  "slug": "filter-tendsto-attop-mul--d89b27237bc09e11c4d095fb",
  "source": {
    "blob": "2e9fd6d724f36ef20986144bfe3a1b20895c83bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 421,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variant1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d89b27237bc09e11c4d095fbe8e418eca613c582ac7de2b4ef5082692e9fb1b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightNhds/Variant1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02a4d390-02df-2d29-9065-0a96a6a2f68c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.atTop_mul' {C : α} (hf : Tendsto f l atTop) (hg : Tendsto g l (𝓝 C)) :
    Tendsto (fun x => f x * g x) l atTop := by
  conv in _ * _ => rw [mul_comm]
  exact hg.mul_atTop' hf

/-- In a linearly ordered commutative group with the order topology,
if `f` tends to `atBot` and `g` tends to `C` then `f * g` tends to `atBot`. -/
@[to_additive atBot_add /-- In a linearly ordered additive commutative group with the order
topology, if `f` tends to `atBot` and `g` tends to `C` then `f + g` tends to `atBot`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightNhds/Variant1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variant1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e9fd6d724f36ef20986144bfe3a1b20895c83bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
