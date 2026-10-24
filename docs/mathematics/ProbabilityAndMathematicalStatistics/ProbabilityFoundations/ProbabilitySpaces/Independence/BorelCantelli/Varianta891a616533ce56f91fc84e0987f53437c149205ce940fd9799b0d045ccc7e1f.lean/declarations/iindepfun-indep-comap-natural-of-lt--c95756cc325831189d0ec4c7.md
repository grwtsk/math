# iIndepFun.indep_comap_natural_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20563e16a029d4722a0cbd2fc659262fb3ea92e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07ffff37-b848-aa11-7176-3ddd93d14b6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:751b52c0-d930-9966-84e7-1c6a7ee8afae",
  "kind": "theorem",
  "lexical_name": "iIndepFun.indep_comap_natural_of_lt",
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
  "slug": "iindepfun-indep-comap-natural-of-lt--c95756cc325831189d0ec4c7",
  "source": {
    "blob": "20563e16a029d4722a0cbd2fc659262fb3ea92e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 41,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Varianta891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c95756cc325831189d0ec4c77d77f8197d31c78d977304d8f6719268bf05e908",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Varianta891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:751b52c0-d930-9966-84e7-1c6a7ee8afae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepFun.indep_comap_natural_of_lt (hf : ∀ i, StronglyMeasurable (f i))
    (hfi : iIndepFun (fun _ => mβ) f μ) (hij : i < j) :
    Indep (MeasurableSpace.comap (f j) mβ) (Filtration.natural f hf i) μ := by
  suffices Indep (⨆ k ∈ ({j} : Set ι), MeasurableSpace.comap (f k) mβ)
      (⨆ k ∈ {k | k ≤ i}, MeasurableSpace.comap (f k) mβ) μ by rwa [iSup_singleton] at this
  exact indep_iSup_of_disjoint (fun k => (hf k).measurable.comap_le) hfi (by simpa)
set_option linter.uppercaseLean3 false in
#align probability_theory.Indep_fun.indep_comap_natural_of_lt ProbabilityTheory.iIndepFun.indep_comap_natural_of_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Varianta891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Varianta891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20563e16a029d4722a0cbd2fc659262fb3ea92e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
