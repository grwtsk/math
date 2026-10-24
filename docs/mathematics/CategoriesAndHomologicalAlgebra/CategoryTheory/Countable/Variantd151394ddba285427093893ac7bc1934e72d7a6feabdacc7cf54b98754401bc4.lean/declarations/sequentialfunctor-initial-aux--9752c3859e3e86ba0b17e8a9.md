# sequentialFunctor_initial_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c1fe580209b86572de45883ee4e04fca3c4c7bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa70c02a-72e0-917f-ff8a-80d66f5a3522",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6d830f4-d7b1-fbbd-153e-261551a8e082",
  "kind": "theorem",
  "lexical_name": "sequentialFunctor_initial_aux",
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
  "slug": "sequentialfunctor-initial-aux--9752c3859e3e86ba0b17e8a9",
  "source": {
    "blob": "6c1fe580209b86572de45883ee4e04fca3c4c7bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 204,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9752c3859e3e86ba0b17e8a916a0ac151ba6b8cfd9b50dd92330f23cbccd7312",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6d830f4-d7b1-fbbd-153e-261551a8e082`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sequentialFunctor_initial_aux (j : J) : ∃ (n : ℕ), sequentialFunctor_obj J n ≤ j := by
  obtain ⟨m, h⟩ := (exists_surjective_nat _).choose_spec j
  refine ⟨m + 1, ?_⟩
  simpa only [h] using leOfHom (IsCofilteredOrEmpty.cone_objs ((exists_surjective_nat _).choose m)
    (sequentialFunctor_obj J m)).choose_spec.choose

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c1fe580209b86572de45883ee4e04fca3c4c7bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
