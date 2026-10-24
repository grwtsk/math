# preComp_φ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad53c8aa27a47124e01389d22ea4df6cc04c926a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cee692045e1f82eb8a9865d5f4c7b7f6088c6906a0761ceba0a7aff3ca1a98a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff69c2ef-82a8-d9db-827e-2789fa94dcb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d4c6a89-0450-a272-6f12-b41f2d1de634",
  "kind": "theorem",
  "lexical_name": "preComp_φ",
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
  "slug": "precomp--72caf5155c7ffe1e46694f2a",
  "source": {
    "blob": "ad53c8aa27a47124e01389d22ea4df6cc04c926a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 150,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Decomposition/Variant9cee692045e1f82eb8a9865d5f4c7b7f6088c6906a0761ceba0a7aff3ca1a98a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72caf5155c7ffe1e46694f2a65a625d18216db78cf8a7e4594e8b587abc48884",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Decomposition/Variant9cee692045e1f82eb8a9865d5f4c7b7f6088c6906a0761ceba0a7aff3ca1a98a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d4c6a89-0450-a272-6f12-b41f2d1de634`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preComp_φ : (f.preComp g).φ = g.app (op [n + 1]) ≫ f.φ := by
  unfold φ preComp
  simp only [PInfty_f, comp_add]
  congr 1
  · simp only [P_f_naturality_assoc]
  · simp only [comp_sum, P_f_naturality_assoc, SimplicialObject.δ_naturality_assoc]
#align algebraic_topology.dold_kan.morph_components.pre_comp_φ AlgebraicTopology.DoldKan.MorphComponents.preComp_φ

end MorphComponents

end DoldKan

end AlgebraicTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Decomposition/Variant9cee692045e1f82eb8a9865d5f4c7b7f6088c6906a0761ceba0a7aff3ca1a98a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Decomposition/Variant9cee692045e1f82eb8a9865d5f4c7b7f6088c6906a0761ceba0a7aff3ca1a98a.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad53c8aa27a47124e01389d22ea4df6cc04c926a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
