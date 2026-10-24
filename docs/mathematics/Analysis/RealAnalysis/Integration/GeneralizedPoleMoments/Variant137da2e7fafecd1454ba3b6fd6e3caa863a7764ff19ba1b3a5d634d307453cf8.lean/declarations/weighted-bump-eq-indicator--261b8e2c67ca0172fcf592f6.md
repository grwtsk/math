# weighted_bump_eq_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96f4b4c71ba91299f9ad589a675405334844f092",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 277,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af703794-1598-5e07-b208-cbce9cdf5221",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc1056dc-869a-121d-c84a-a3ac46f74dfc",
  "kind": "theorem",
  "lexical_name": "weighted_bump_eq_indicator",
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
  "slug": "weighted-bump-eq-indicator--261b8e2c67ca0172fcf592f6",
  "source": {
    "blob": "96f4b4c71ba91299f9ad589a675405334844f092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 277,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:261b8e2c67ca0172fcf592f6c020baf57df41a9a41b39aee4d8b239c2db2f2db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc1056dc-869a-121d-c84a-a3ac46f74dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_bump_eq_indicator (A σ : ℝ) (hA : 0 < A) :
    (fun x ↦ Real.exp (σ * x) * scaledBump A x) =
      (Icc (-A) A).indicator (fun x ↦ Real.exp (σ * x) * bumpInterior A x) := by
  rw [scaledBump_eq_indicator A hA]
  funext x
  exact (Set.indicator_mul_right (Icc (-A) A) (fun x ↦ Real.exp (σ * x))
    (bumpInterior A)).symm

/-- Every fixed exponential moment of the actual bump is genuinely integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96f4b4c71ba91299f9ad589a675405334844f092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
