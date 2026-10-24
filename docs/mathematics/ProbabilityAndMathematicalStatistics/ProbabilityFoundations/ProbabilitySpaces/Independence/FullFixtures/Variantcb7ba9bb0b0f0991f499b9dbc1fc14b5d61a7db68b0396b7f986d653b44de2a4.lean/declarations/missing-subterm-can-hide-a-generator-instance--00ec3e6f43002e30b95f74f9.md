# missing_subterm_can_hide_a_generator_instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "badf6f2591c0681ff8bd53030066566cce24407a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb7ba9bb0b0f0991f499b9dbc1fc14b5d61a7db68b0396b7f986d653b44de2a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b8b1ee6-eded-ca74-cadd-42abd78cca4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc11c016-3d4b-f6a8-1728-cc1b2dad32a9",
  "kind": "theorem",
  "lexical_name": "missing_subterm_can_hide_a_generator_instance",
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
  "slug": "missing-subterm-can-hide-a-generator-instance--00ec3e6f43002e30b95f74f9",
  "source": {
    "blob": "badf6f2591c0681ff8bd53030066566cce24407a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 325,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/FullFixtures/Variantcb7ba9bb0b0f0991f499b9dbc1fc14b5d61a7db68b0396b7f986d653b44de2a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00ec3e6f43002e30b95f74f91c7da84148ea63326b27954e971c8c856763b120",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/FullFixtures/Variantcb7ba9bb0b0f0991f499b9dbc1fc14b5d61a7db68b0396b7f986d653b44de2a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc11c016-3d4b-f6a8-1728-cc1b2dad32a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem missing_subterm_can_hide_a_generator_instance :
    (Term.unary ⟨1⟩ (.variable 0)).substitute [.nullary ⟨0⟩] ∈
      catalogTerms missingSubtermCatalog ∧
    (Term.unary ⟨1⟩ (.unary ⟨1⟩ (.variable 0))).substitute [.nullary ⟨0⟩] ∈
      catalogTerms missingSubtermCatalog ∧
    Term.nullary ⟨0⟩ ∉ catalogTerms missingSubtermCatalog := by decide

/-- Whole-profile admission requires the finite catalog to retain its ground subterms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/FullFixtures/Variantcb7ba9bb0b0f0991f499b9dbc1fc14b5d61a7db68b0396b7f986d653b44de2a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/FullFixtures/Variantcb7ba9bb0b0f0991f499b9dbc1fc14b5d61a7db68b0396b7f986d653b44de2a4.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `badf6f2591c0681ff8bd53030066566cce24407a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
