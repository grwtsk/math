# shifted_kernel_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce818ccf-629c-13e5-f11f-54c24fe4982a",
  "kind": "theorem",
  "lexical_name": "shifted_kernel_integral",
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
  "slug": "shifted-kernel-integral--adf97e338cebefb2bd4b89e0",
  "source": {
    "blob": "7e3d9cec73f185cbced950be61c011878c93f835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adf97e338cebefb2bd4b89e075bfcfe986619d2eee17ed8a086607b80feff673",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce818ccf-629c-13e5-f11f-54c24fe4982a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shifted_kernel_integral (b a : ℝ) (ha : 0 < a) :
    (∫ x in Ioi 0, kernel b (x + a)) = Real.log (1 + b ^ 2 * (a⁻¹) ^ 2) / 2 := by
  have h := integral_Ioi_of_hasDerivAt_of_nonneg'
    (g := fun x => primitive b (x + a)) (a := 0) (l := 0)
    (g' := fun x => kernel b (x + a))
    (fun x hx => by
      have hxa : 0 < x + a := add_pos_of_nonneg_of_pos hx ha
      convert! (hasDerivAt_primitive b (x + a) hxa).comp x
        ((hasDerivAt_id x).add_const a) using 1
      simp)
    (fun x hx => kernel_nonneg b (x + a) (add_pos hx ha))
    (shifted_primitive_tendsto b a)
  simpa [primitive, neg_div] using h

/-- A reusable integral comparison for a nonnegative decreasing function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e3d9cec73f185cbced950be61c011878c93f835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
