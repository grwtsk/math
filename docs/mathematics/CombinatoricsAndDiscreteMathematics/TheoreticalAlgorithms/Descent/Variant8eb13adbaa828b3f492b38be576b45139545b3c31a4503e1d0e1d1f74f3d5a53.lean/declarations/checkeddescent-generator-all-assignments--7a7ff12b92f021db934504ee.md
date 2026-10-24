# checkedDescent_generator_all_assignments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e85a2edd2e78e6e5af7d513793414bacd71c8b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8eb13adbaa828b3f492b38be576b45139545b3c31a4503e1d0e1d1f74f3d5a53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1257c557-03df-b2aa-998e-bbe08fec0059",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cabc3b8-6cb4-44c9-46a3-c62ebc3e2c5b",
  "kind": "theorem",
  "lexical_name": "checkedDescent_generator_all_assignments",
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
  "slug": "checkeddescent-generator-all-assignments--7a7ff12b92f021db934504ee",
  "source": {
    "blob": "8e85a2edd2e78e6e5af7d513793414bacd71c8b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant8eb13adbaa828b3f492b38be576b45139545b3c31a4503e1d0e1d1f74f3d5a53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a7ff12b92f021db934504ee7fcc882e79d659b287071be13ef48ba25b123ce6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant8eb13adbaa828b3f492b38be576b45139545b3c31a4503e1d0e1d1f74f3d5a53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cabc3b8-6cb4-44c9-46a3-c62ebc3e2c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checkedDescent_generator_all_assignments (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar)
    (descent : CheckedDescent full algebra grammar congruence)
    (generator : LicensedGenerator) (member : generator ∈ full.value.generators)
    (assignment : List ℕ) (length : assignment.length = full.value.variableCount)
    (bounded : ∀ value ∈ assignment, value < full.value.interpreter.table.cardinality) :
    GeneratorInterpreted full generator assignment := by
  apply descent.valid.2.2.1 generator member assignment
  exact (finiteWords_complete _ _ _).mpr ⟨length, by simpa using bounded⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant8eb13adbaa828b3f492b38be576b45139545b3c31a4503e1d0e1d1f74f3d5a53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant8eb13adbaa828b3f492b38be576b45139545b3c31a4503e1d0e1d1f74f3d5a53.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e85a2edd2e78e6e5af7d513793414bacd71c8b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
