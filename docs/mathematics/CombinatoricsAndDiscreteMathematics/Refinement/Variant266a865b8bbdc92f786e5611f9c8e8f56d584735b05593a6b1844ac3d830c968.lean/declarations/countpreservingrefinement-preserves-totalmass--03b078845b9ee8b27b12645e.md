# countPreservingRefinement_preserves_totalMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27a201609f53d73f6b0b1e45ff0e9d89634281d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:356c4b8d-3eab-3977-f9fa-4335a1e0a741",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e459186-7a84-0e58-b23c-6444376f62d5",
  "kind": "theorem",
  "lexical_name": "countPreservingRefinement_preserves_totalMass",
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
  "slug": "countpreservingrefinement-preserves-totalmass--03b078845b9ee8b27b12645e",
  "source": {
    "blob": "27a201609f53d73f6b0b1e45ff0e9d89634281d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03b078845b9ee8b27b12645ef2c627f90e57b47ac9c050d7fec110a3ec6bedb0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e459186-7a84-0e58-b23c-6444376f62d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countPreservingRefinement_preserves_totalMass
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {parent : AnalyticCell}
    (refinement :
      CountPreservingRefinement authority parent) :
    (authority.divisor parent).count =
      ∑ index : refinement.partition.Child,
        (authority.divisor
          (refinement.partition.child index)).count := by
  rw [refinement.parentCount.countSound]
  calc
    refinement.parentCount.count =
        ∑ index : refinement.partition.Child,
          (refinement.childCount index).count :=
      refinement.countConservation
    _ =
        ∑ index : refinement.partition.Child,
          (authority.divisor
            (refinement.partition.child index)).count := by
      apply Finset.sum_congr rfl
      intro index _
      symm
      exact (refinement.childCount index).countSound

end Mathematics.RHIsolation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a201609f53d73f6b0b1e45ff0e9d89634281d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
