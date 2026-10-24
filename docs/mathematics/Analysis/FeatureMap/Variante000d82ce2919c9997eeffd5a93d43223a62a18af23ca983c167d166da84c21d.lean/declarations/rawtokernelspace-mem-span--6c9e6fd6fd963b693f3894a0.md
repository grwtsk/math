# rawToKernelSpace_mem_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:067bb6fe-1873-27cf-3eb9-c28b6c662a1e",
  "kind": "theorem",
  "lexical_name": "rawToKernelSpace_mem_span",
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
  "slug": "rawtokernelspace-mem-span--6c9e6fd6fd963b693f3894a0",
  "source": {
    "blob": "48e48946daeece75a1d660625d1d71129d10175a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 81,
    "path": "GRWTSK/Analysis/FeatureMap/Variante000d82ce2919c9997eeffd5a93d43223a62a18af23ca983c167d166da84c21d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c9e6fd6fd963b693f3894a08d7f8c57790d9969b86533ab7628bf89f4dab549",
  "verification": {
    "reference": "docs/verification/Analysis/FeatureMap/Variante000d82ce2919c9997eeffd5a93d43223a62a18af23ca983c167d166da84c21d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:067bb6fe-1873-27cf-3eb9-c28b6c662a1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawToKernelSpace_mem_span (f : Raw kernel) :
    rawToKernelSpace kernel f ∈ kernelSpan kernel := by
  classical
  induction f using Finsupp.induction with
  | zero =>
      exact (kernelSpan kernel).zero_mem
  | single_add index scalar tail _ _ inductionHypothesis =>
      rw [map_add]
      apply (kernelSpan kernel).add_mem
      · have basisMem : kernelVector kernel index ∈
            kernelSpan kernel :=
          Submodule.subset_span (Set.mem_range_self index)
        have scaledMem := (kernelSpan kernel).smul_mem scalar basisMem
        have singleEq :
            (Finsupp.single index scalar : Raw kernel) =
              scalar • Raw.basisVector kernel index := by
          ext candidate
          simp [Raw.basisVector]
        rw [singleEq, map_smul, rawToKernelSpace_basisVector]
        exact scaledMem
      · exact inductionHypothesis

/-- The canonical feature vectors have dense linear span in the completed
kernel Hilbert space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FeatureMap/Variante000d82ce2919c9997eeffd5a93d43223a62a18af23ca983c167d166da84c21d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FeatureMap/Variante000d82ce2919c9997eeffd5a93d43223a62a18af23ca983c167d166da84c21d.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48e48946daeece75a1d660625d1d71129d10175a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
