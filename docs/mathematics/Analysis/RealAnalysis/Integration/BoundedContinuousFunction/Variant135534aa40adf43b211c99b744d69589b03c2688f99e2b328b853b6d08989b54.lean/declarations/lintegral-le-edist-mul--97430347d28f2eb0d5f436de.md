# lintegral_le_edist_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7d14ea6430a48ae9d8081ef9d9317b79a732a45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8d0b5c8-cc4c-302f-e6e3-3817c57e5799",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:383df65f-bddb-ffb8-e443-0b719c51caa3",
  "kind": "lemma",
  "lexical_name": "lintegral_le_edist_mul",
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
  "slug": "lintegral-le-edist-mul--97430347d28f2eb0d5f436de",
  "source": {
    "blob": "f7d14ea6430a48ae9d8081ef9d9317b79a732a45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97430347d28f2eb0d5f436de3ecee44f1e8054c19ff608bfc9e734530cb0d41b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:383df65f-bddb-ffb8-e443-0b719c51caa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lintegral_le_edist_mul (f : X →ᵇ ℝ≥0) (μ : Measure X) :
    (∫⁻ x, f x ∂μ) ≤ edist 0 f * (μ Set.univ) :=
  le_trans (lintegral_mono (fun x ↦ ENNReal.coe_le_coe.mpr (f.apply_le_nndist_zero x))) (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7d14ea6430a48ae9d8081ef9d9317b79a732a45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
