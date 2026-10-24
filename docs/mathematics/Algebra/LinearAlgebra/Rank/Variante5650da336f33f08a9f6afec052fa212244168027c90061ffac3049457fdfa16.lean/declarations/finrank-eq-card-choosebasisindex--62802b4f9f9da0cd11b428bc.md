# finrank_eq_card_chooseBasisIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88d6d640957a3b508d40ec1445a27b7a7bad1c2e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca92d955-2fb9-4bbf-3ac5-4ece30fc474d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e534a0d1-1b9c-5e5c-1b14-e31642af953a",
  "kind": "theorem",
  "lexical_name": "finrank_eq_card_chooseBasisIndex",
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
  "slug": "finrank-eq-card-choosebasisindex--62802b4f9f9da0cd11b428bc",
  "source": {
    "blob": "88d6d640957a3b508d40ec1445a27b7a7bad1c2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 85,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62802b4f9f9da0cd11b428bc2ef0d265140710a5a1072d9ccca74e8b1964893d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e534a0d1-1b9c-5e5c-1b14-e31642af953a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_eq_card_chooseBasisIndex :
    finrank R M = card (ChooseBasisIndex R M) := by
  simp [finrank, rank_eq_card_chooseBasisIndex]
#align finite_dimensional.finrank_eq_card_choose_basis_index FiniteDimensional.finrank_eq_card_chooseBasisIndex

/-- The finrank of `(ι →₀ R)` is `Fintype.card ι`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d6d640957a3b508d40ec1445a27b7a7bad1c2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
