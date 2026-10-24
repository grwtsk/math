# mem_trivialFibrations_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "628cbbc142f05078c1a10b05ce4f1387810f9b51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b2baaca-2e2e-33a0-01e0-5295769a7687",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c48572bb-13e0-9f81-94fb-aa1e53a3166e",
  "kind": "lemma",
  "lexical_name": "mem_trivialFibrations_iff",
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
  "slug": "mem-trivialfibrations-iff--2cf7cce43ec0dd7c871ac3a7",
  "source": {
    "blob": "628cbbc142f05078c1a10b05ce4f1387810f9b51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cf7cce43ec0dd7c871ac3a7fe02711b3fb4da3e23524449d07abebf5332764d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c48572bb-13e0-9f81-94fb-aa1e53a3166e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_trivialFibrations_iff :
    trivialFibrations C f ↔ Fibration f ∧ WeakEquivalence f := by
  rw [fibration_iff, weakEquivalence_iff]
  rfl

end TrivFib

section TrivCof

variable [CategoryWithCofibrations C] [CategoryWithWeakEquivalences C]

/-- A trivial cofibration is a morphism that is both a cofibration and a weak equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `628cbbc142f05078c1a10b05ce4f1387810f9b51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
