# combined_two_line_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ce55e5fcc6da19d4e8fd1de4bddab5061dea963",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c2b7aaf-017a-4e45-dc4d-5283d4e51df0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f39587d-45ca-135f-b0d1-a85517220692",
  "kind": "theorem",
  "lexical_name": "combined_two_line_continuous",
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
  "slug": "combined-two-line-continuous--aff196eb81ccf60c3655612f",
  "source": {
    "blob": "8ce55e5fcc6da19d4e8fd1de4bddab5061dea963",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aff196eb81ccf60c3655612f9f7941b590c59d468ce7c97c32dd8975a81519f1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f39587d-45ca-135f-b0d1-a85517220692`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem combined_two_line_continuous :
    Continuous (fun t : ℝ ↦ combinedMultiplier ((2 : ℂ) + Complex.I * (t : ℂ))) := by
  apply continuous_iff_continuousAt.mpr
  intro t
  let s : ℂ := 2 + Complex.I * (t : ℂ)
  have hs : 1 < s.re := by norm_num [s]
  have hsone : s ≠ 1 := by
    intro h
    have hh := congr_arg Complex.re h
    norm_num [s] at hh
  have ha : AnalyticAt ℂ riemannZeta s := analyticOn_riemannZeta s (by simpa using hsone)
  have hc : ContinuousAt combinedMultiplier s :=
    ha.deriv.continuousAt.neg.div ha.continuousAt (riemannZeta_ne_zero_of_one_lt_re hs)
  have hline : Continuous (fun u : ℝ ↦ (2 : ℂ) + Complex.I * (u : ℂ)) := by fun_prop
  exact ContinuousAt.comp (f := fun u : ℝ ↦ (2 : ℂ) + Complex.I * (u : ℂ))
    (x := t) hc hline.continuousAt

/-- The actual normalized native transform is continuous along the complete initial line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ce55e5fcc6da19d4e8fd1de4bddab5061dea963` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
