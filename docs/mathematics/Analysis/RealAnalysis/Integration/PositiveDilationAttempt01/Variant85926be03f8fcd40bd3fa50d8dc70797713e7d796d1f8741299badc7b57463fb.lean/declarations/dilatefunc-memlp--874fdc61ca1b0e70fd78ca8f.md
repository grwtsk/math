# dilateFunc_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5b42f69-32c9-eecf-f908-31dc04eb8ac9",
  "kind": "theorem",
  "lexical_name": "dilateFunc_memLp",
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
  "slug": "dilatefunc-memlp--874fdc61ca1b0e70fd78ca8f",
  "source": {
    "blob": "810e834337a81268b6a06c96063aecbf4e59d4bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:874fdc61ca1b0e70fd78ca8f743296465e366769cc799ac62ffe62f5b59b9107",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5b42f69-32c9-eecf-f908-31dc04eb8ac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dilateFunc_memLp {a : ℝ} (ha : 0 < a) {f : ℝ → ℂ}
    (hf : MemLp f 2 positiveMeasure) : MemLp (dilateFunc a f) 2 positiveMeasure := by
  have hg : MemLp f 2 (positiveMeasure.map (a*·)) := by
    rw [positiveMeasure_map_mul ha]
    exact hf.smul_measure (by simp)
  exact (hg.comp_of_map (measurable_const_mul a).aemeasurable).const_mul _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `810e834337a81268b6a06c96063aecbf4e59d4bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
