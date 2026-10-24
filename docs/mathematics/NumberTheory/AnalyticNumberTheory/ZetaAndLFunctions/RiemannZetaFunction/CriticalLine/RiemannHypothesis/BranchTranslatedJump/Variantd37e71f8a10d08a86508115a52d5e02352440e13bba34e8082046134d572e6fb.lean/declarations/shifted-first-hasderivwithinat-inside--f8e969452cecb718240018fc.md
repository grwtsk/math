# shifted_first_hasDerivWithinAt_inside

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:974215b6-53e3-533e-612d-62ca2f73c9e5",
  "kind": "theorem",
  "lexical_name": "shifted_first_hasDerivWithinAt_inside",
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
  "slug": "shifted-first-hasderivwithinat-inside--f8e969452cecb718240018fc",
  "source": {
    "blob": "f8ce1ef3053a91ac8be5f1e9f62c0ea9b973c67c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 148,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variantd37e71f8a10d08a86508115a52d5e02352440e13bba34e8082046134d572e6fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8e969452cecb718240018fc5be92091dca559c71272e7924036bbb34a0ce1d1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variantd37e71f8a10d08a86508115a52d5e02352440e13bba34e8082046134d572e6fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:974215b6-53e3-533e-612d-62ca2f73c9e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shifted_first_hasDerivWithinAt_inside {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivWithinAt (fun x ↦ deriv (q A) (x + t))
      (384 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)))
      (Icc (-A - t) (A - t)) (A - t) := by
  have h := (actual_first_derivative_hasDerivWithinAt_inside hA).comp_of_eq (A - t)
    (((hasDerivAt_id (A - t)).add_const t).hasDerivWithinAt)
    (show MapsTo (fun x : ℝ ↦ x + t) (Icc (-A - t) (A - t)) (Icc (-A) A) by
      intro x hx; constructor <;> linarith [hx.1, hx.2]) (by simp only [id_eq]; ring)
  simpa only [Function.comp_def, mul_one, id_eq] using h

/-- The same exiting term has the true zero exterior derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variantd37e71f8a10d08a86508115a52d5e02352440e13bba34e8082046134d572e6fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variantd37e71f8a10d08a86508115a52d5e02352440e13bba34e8082046134d572e6fb.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8ce1ef3053a91ac8be5f1e9f62c0ea9b973c67c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
