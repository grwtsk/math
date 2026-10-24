# correlation_deriv_upper_endpoint_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d0a97a5ce5c959ce2be9f99a35622594f2cdafd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e840e84d-1273-9316-32b8-3abd58f36eea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a51d95d-e942-501e-e0ac-a35521a569d9",
  "kind": "theorem",
  "lexical_name": "correlation_deriv_upper_endpoint_zero",
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
  "slug": "correlation-deriv-upper-endpoint-zero--21de8c622762d0298c2ebd6d",
  "source": {
    "blob": "2d0a97a5ce5c959ce2be9f99a35622594f2cdafd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21de8c622762d0298c2ebd6d20ee3426f66373d61e70ff5b5d675a97decd7721",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a51d95d-e942-501e-e0ac-a35521a569d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlation_deriv_upper_endpoint_zero (r : DilationRealization)
    (A : Set.Ici (1 : ℝ)) :
    deriv (sourceCorrelation r.secondDerivative A) (2 * A) = 0 := by
  have hc := ((contDiff_one_iff_deriv.mp (r.correlation_regular A A.property)).1
    (2 * (A : ℝ))).hasDerivAt.hasDerivWithinAt (s := Set.Ici (2 * (A : ℝ)))
  have hz : HasDerivWithinAt (sourceCorrelation r.secondDerivative A) 0
      (Set.Ici (2 * (A : ℝ))) (2 * A) :=
    (hasDerivWithinAt_const (2 * (A : ℝ)) (Set.Ici (2 * (A : ℝ))) (0 : ℝ)).congr
      (fun t ht ↦ correlation_zero_to_right r A t ht)
      (correlation_upper_endpoint_zero r A)
  exact (uniqueDiffWithinAt_Ici (2 * (A : ℝ))).eq_deriv _ hc hz

/-- The source weight also vanishes at the upper endpoint, including its derivative term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d0a97a5ce5c959ce2be9f99a35622594f2cdafd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
