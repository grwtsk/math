# reflection_eq_even_square_sub_odd_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c25156f28dd10431b805b84c470e0adaf85ff17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0265884b-0f37-1b20-a37e-1c3c267a7bdd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7d42515-ce9a-81c9-84dd-2dc46baea331",
  "kind": "theorem",
  "lexical_name": "reflection_eq_even_square_sub_odd_square",
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
  "slug": "reflection-eq-even-square-sub-odd-square--f004e8587cc114ee0fbec3fe",
  "source": {
    "blob": "7c25156f28dd10431b805b84c470e0adaf85ff17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f004e8587cc114ee0fbec3fe004450ac3892825abaf5c1f24b81f6cec3732da9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7d42515-ce9a-81c9-84dd-2dc46baea331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflection_eq_even_square_sub_odd_square (f : ℝ → ℝ)
    (hf : Continuous f) (hcf : HasCompactSupport f) :
    (∫ x : ℝ, f x * f (-x)) =
      (∫ x : ℝ, ((f x + f (-x)) / 2) ^ 2) -
      (∫ x : ℝ, ((f x - f (-x)) / 2) ^ 2) := by
  have hn : Continuous (fun x : ℝ ↦ f (-x)) := hf.comp continuous_neg
  have hcn : HasCompactSupport (fun x : ℝ ↦ f (-x)) :=
    hcf.comp_homeomorph (Homeomorph.neg ℝ)
  have he : Integrable (fun x : ℝ ↦ ((f x + f (-x)) / 2) ^ 2) :=
    (((hf.add hn).div_const 2).pow 2).integrable_of_hasCompactSupport
      (by
        simp only [div_eq_mul_inv, pow_two]
        exact (hcf.add hcn).mul_right.mul_right)
  have ho : Integrable (fun x : ℝ ↦ ((f x - f (-x)) / 2) ^ 2) :=
    (((hf.sub hn).div_const 2).pow 2).integrable_of_hasCompactSupport
      (by
        simp only [div_eq_mul_inv, pow_two]
        exact (hcf.sub hcn).mul_right.mul_right)
  rw [← integral_sub he ho]
  apply integral_congr_ae
  filter_upwards [] with x
  ring

/-- The actual plus-shift kernel has a negative one-coordinate direction at every scale.
The shift is real; this theorem does not assert it is a prime logarithm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c25156f28dd10431b805b84c470e0adaf85ff17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
