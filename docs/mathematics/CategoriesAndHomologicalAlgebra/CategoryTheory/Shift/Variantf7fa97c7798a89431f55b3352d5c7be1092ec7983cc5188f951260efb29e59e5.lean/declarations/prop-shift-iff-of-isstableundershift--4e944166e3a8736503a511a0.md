# prop_shift_iff_of_isStableUnderShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0fc16f55264135dcf14fbe17976188eba54ddae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:516c0819-d038-f42d-676c-77862dbb4e7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f99cf1e0-b610-71d0-ad7b-08eec211758f",
  "kind": "lemma",
  "lexical_name": "prop_shift_iff_of_isStableUnderShift",
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
  "slug": "prop-shift-iff-of-isstableundershift--4e944166e3a8736503a511a0",
  "source": {
    "blob": "e0fc16f55264135dcf14fbe17976188eba54ddae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 113,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e944166e3a8736503a511a0884bd5359dcb159ba685d53c298a604d8089e482",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f99cf1e0-b610-71d0-ad7b-08eec211758f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prop_shift_iff_of_isStableUnderShift {G : Type*} [AddGroup G] [HasShift C G]
    [P.IsStableUnderShift G] [P.IsClosedUnderIsomorphisms] (X : C) (g : G) :
    P (X⟦g⟧) ↔ P X := by
  refine ⟨fun hX ↦ ?_, P.le_shift g _⟩
  rw [← P.shift_zero G, ← P.shift_shift g (-g) 0 (by simp)]
  exact P.le_shift (-g) _ hX

variable (A) in
/-- The closure by shifts and isomorphism of a predicate on objects in a category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0fc16f55264135dcf14fbe17976188eba54ddae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
