# integral_comp_polarCoordReal_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9d01d640d4a633bf14ca44638078910a382d48b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77809847-c5a1-d153-c0a1-328511fae7ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69e066c1-3ba3-8650-c9cb-7a5d236bd114",
  "kind": "theorem",
  "lexical_name": "integral_comp_polarCoordReal_symm",
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
  "slug": "integral-comp-polarcoordreal-symm--a254b151b7a4608d2f1ff4fa",
  "source": {
    "blob": "d9d01d640d4a633bf14ca44638078910a382d48b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a254b151b7a4608d2f1ff4fa5b1ab0680659fd817556a77920ed982c719b0422",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69e066c1-3ba3-8650-c9cb-7a5d236bd114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_comp_polarCoordReal_symm {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : realMixedSpace K → E) :
    ∫ x in (polarCoordReal K).target, (∏ w : {w // IsComplex w}, (x.2 w).1) •
      f ((polarCoordReal K).symm x) = ∫ x, f x := by
  rw [← setIntegral_univ (f := f),
    ← setIntegral_congr_set (polarCoordReal_symm_target_ae_eq_univ K),
    integral_image_eq_integral_abs_det_fderiv_smul volume
      (polarCoordReal K).open_target.measurableSet
      (fun x _ ↦ (hasFDerivAt_polarCoordReal_symm K x).hasFDerivWithinAt)
      (polarCoordReal K).symm.injOn f]
  refine setIntegral_congr_fun (polarCoordReal K).open_target.measurableSet fun x hx ↦ ?_
  simp_rw [det_fderivPolarCoordRealSymm, Finset.abs_prod, abs_of_mem_polarCoordReal_target K hx]

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9d01d640d4a633bf14ca44638078910a382d48b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
