# hasDerivAt_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27126fd9-8937-47e2-e8e1-5a61256960bb",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_primitive",
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
  "slug": "hasderivat-primitive--e0f76ab66e22059790141ff6",
  "source": {
    "blob": "7e3d9cec73f185cbced950be61c011878c93f835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0f76ab66e22059790141ff650f7be68b7e02ffec18cdfaae4e83f5c5e779f0a",
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

Occurrence: `result:27126fd9-8937-47e2-e8e1-5a61256960bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_primitive (b x : ℝ) (hx : 0 < x) :
    HasDerivAt (primitive b) (kernel b x) x := by
  change HasDerivAt (fun y : ℝ => -(Real.log (1 + b ^ 2 * (y⁻¹) ^ 2)) / 2) _ x
  have hx0 : x ≠ 0 := ne_of_gt hx
  have hpos : 0 < 1 + b ^ 2 * (x⁻¹) ^ 2 := by positivity
  have h := (((((hasDerivAt_id x).inv hx0).pow 2).const_mul (b ^ 2)).const_add 1).log
    (ne_of_gt hpos)
  apply (h.neg.div_const 2).congr_deriv
  dsimp [kernel]
  field_simp

/-- The primitive has a genuine finite limit at infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e3d9cec73f185cbced950be61c011878c93f835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
