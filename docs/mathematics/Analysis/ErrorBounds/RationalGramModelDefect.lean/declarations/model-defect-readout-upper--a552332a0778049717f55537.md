# model_defect_readout_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08491a82-289d-1614-55c6-8ca8a9c497d6",
  "kind": "theorem",
  "lexical_name": "model_defect_readout_upper",
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
  "slug": "model-defect-readout-upper--a552332a0778049717f55537",
  "source": {
    "blob": "e73efa445284ec1999553322bdab0510b9d8983c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 123,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalGramModelDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a552332a0778049717f555375fc34bdf1a3dc7efec77e2e4622db119757af602",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalGramModelDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08491a82-289d-1614-55c6-8ca8a9c497d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem model_defect_readout_upper (testDisk : τ → Disk) (gainDisk : τ → ι → Disk)
    (featureDisk : κ → ι → Disk) (nextFeatureDisk : ν → τ → Disk)
    (injectionDisk : τ × τ → Disk) (test : τ → ℂ) (gain : τ → ι → ℂ)
    (feature : κ → ι → ℂ) (nextFeature : ν → τ → ℂ) (injection : τ × τ → ℂ)
    (testEnclosure : ∀ i, Contains (testDisk i) (test i))
    (gainEnclosure : ∀ i j, Contains (gainDisk i j) (gain i j))
    (featureEnclosure : ∀ k i, Contains (featureDisk k i) (feature k i))
    (nextFeatureEnclosure : ∀ k i, Contains (nextFeatureDisk k i) (nextFeature k i))
    (injectionEnclosure : ∀ p, Contains (injectionDisk p) (injection p)) :
    (complexReadout test (fun p => complexGram nextFeature p -
      complexTransport gain (complexGram feature) p - injection p)).re ≤
        (upper (modelDefectReadoutDisk testDisk gainDisk featureDisk nextFeatureDisk injectionDisk) : ℝ) := by
  exact (contains_real_interval (readoutDisk_contains testDisk
    (modelDefectDisk gainDisk featureDisk nextFeatureDisk injectionDisk) test
    (fun p => complexGram nextFeature p - complexTransport gain (complexGram feature) p - injection p)
    testEnclosure (modelDefectDisk_contains gainDisk featureDisk nextFeatureDisk injectionDisk
      gain feature nextFeature injection gainEnclosure featureEnclosure nextFeatureEnclosure
      injectionEnclosure))).2

omit τFinite in
/-- Exact net forcing is independent of the proposed common injection.
Separate disk bounds may still widen because the evaluator does not exploit this correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalGramModelDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalGramModelDefect.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e73efa445284ec1999553322bdab0510b9d8983c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
