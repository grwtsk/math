# actual_density_eq_low_density_on_left_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "945751b8e4e1086821b5cea2d898f7a63d780c7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 514,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b063118-4ad2-0ba9-66ac-79715c617fb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61704eaf-7e8d-9e74-436a-6350745993d0",
  "kind": "theorem",
  "lexical_name": "actual_density_eq_low_density_on_left_strip",
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
  "slug": "actual-density-eq-low-density-on-left-strip--0171ec58aca65038c51855e6",
  "source": {
    "blob": "945751b8e4e1086821b5cea2d898f7a63d780c7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 514,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/01SourceRestrictedLowTimeWork/Variant52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0171ec58aca65038c51855e604ed6834f9e887f0ec97f10b89233fdb6523c9a4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/01SourceRestrictedLowTimeWork/Variant52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61704eaf-7e8d-9e74-436a-6350745993d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_density_eq_low_density_on_left_strip {A : ℝ} (hA : 1 ≤ A)
    {v : ℝ} (hv : v ∈ actualWorkLeftStrip A) :
    actualMixedWorkDensity A v = actualLowMixedWorkDensity A v := by
  have hp : 0 < A := by linarith
  rw [actualWorkLeftStrip_eq_Ico_inter] at hv
  unfold actualMixedWorkDensity actualLowMixedWorkDensity
  rw [actual_product_eq_low_product_on_left _
    ((normalizedTest_contDiff A hp).continuous_deriv (by norm_num)) hA
    (SourceActualMixedWorkFubini.deriv_source_tsupport_subset hp) hv.1.2,
    actual_product_eq_low_product_on_left _ (normalizedTest_contDiff A hp).continuous hA
      (SourceActualMixedWorkFubini.source_tsupport_subset hp) hv.1.2]

/-- The disclosed actual spatial remainder has a scale-independent absolute budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/01SourceRestrictedLowTimeWork/Variant52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/01SourceRestrictedLowTimeWork/Variant52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `945751b8e4e1086821b5cea2d898f7a63d780c7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
