# maximumIndepSet_card_eq_indepNum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "720b6bd78f16910fa7fcba83f56b0fbdddf81ae3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22b7acd4fadd6f06988a7e20732c117e6ad754b6b7f2adaec37f28377ed52b43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa040564-f7b9-0233-63ec-2fb2ba0c5a62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a28a597c-aa92-20ee-dcfb-8eb8073c1d37",
  "kind": "theorem",
  "lexical_name": "maximumIndepSet_card_eq_indepNum",
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
  "slug": "maximumindepset-card-eq-indepnum--8be389cf8304183dedce9884",
  "source": {
    "blob": "720b6bd78f16910fa7fcba83f56b0fbdddf81ae3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1105,
    "line": 1100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant22b7acd4fadd6f06988a7e20732c117e6ad754b6b7f2adaec37f28377ed52b43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8be389cf8304183dedce9884cde687b8dd3180e3a1d0563d8a3dc6e946d634d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant22b7acd4fadd6f06988a7e20732c117e6ad754b6b7f2adaec37f28377ed52b43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a28a597c-aa92-20ee-dcfb-8eb8073c1d37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1100–1105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maximumIndepSet_card_eq_indepNum
    [Finite α] (t : Finset α) (tmc : G.IsMaximumIndepSet t) : #t = G.indepNum := by
  rw [← isMaximumClique_compl] at tmc
  simp_rw [indepNum, ← isNClique_compl]
  exact Gᶜ.maximumClique_card_eq_cliqueNum t tmc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant22b7acd4fadd6f06988a7e20732c117e6ad754b6b7f2adaec37f28377ed52b43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant22b7acd4fadd6f06988a7e20732c117e6ad754b6b7f2adaec37f28377ed52b43.lean#L1100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `720b6bd78f16910fa7fcba83f56b0fbdddf81ae3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
