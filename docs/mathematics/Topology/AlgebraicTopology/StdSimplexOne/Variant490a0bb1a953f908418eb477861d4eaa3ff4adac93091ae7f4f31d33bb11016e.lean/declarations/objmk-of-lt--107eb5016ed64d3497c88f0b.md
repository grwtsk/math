# σ_objMk₁_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db678c4c9df87db70f97851e482844420576207c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/490a0bb1a953f908418eb477861d4eaa3ff4adac93091ae7f4f31d33bb11016e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f507cd19-e63b-c65b-7a53-dd1d389cde01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f82981b-cead-57ce-d38f-b46504375fe3",
  "kind": "lemma",
  "lexical_name": "σ_objMk₁_of_lt",
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
  "slug": "objmk-of-lt--107eb5016ed64d3497c88f0b",
  "source": {
    "blob": "db678c4c9df87db70f97851e482844420576207c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 75,
    "path": "GRWTSK/Topology/AlgebraicTopology/StdSimplexOne/Variant490a0bb1a953f908418eb477861d4eaa3ff4adac93091ae7f4f31d33bb11016e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:107eb5016ed64d3497c88f0b9ececcbbbacd91351b3073c6d8353eff8dcae62e",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/StdSimplexOne/Variant490a0bb1a953f908418eb477861d4eaa3ff4adac93091ae7f4f31d33bb11016e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f82981b-cead-57ce-d38f-b46504375fe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma σ_objMk₁_of_lt {n : ℕ} (i : Fin (n + 2)) (j : Fin (n + 1)) (h : j.castSucc < i) :
    Δ[1].σ j (objMk₁.{u} i) = objMk₁ i.succ := by
  ext k : 1
  exact ConcreteCategory.congr_hom (SimplexCategory.σ_comp_toMk₁_of_lt _ _ h) k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/StdSimplexOne/Variant490a0bb1a953f908418eb477861d4eaa3ff4adac93091ae7f4f31d33bb11016e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/StdSimplexOne/Variant490a0bb1a953f908418eb477861d4eaa3ff4adac93091ae7f4f31d33bb11016e.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db678c4c9df87db70f97851e482844420576207c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
