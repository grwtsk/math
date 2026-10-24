# verify_integral_bound_withInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aadeba643fd3f4e60c7710626c255a7effe39f9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b449a0fa-8e73-5055-0a25-60e6fd429ac5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:555a47ac-fadd-e9b7-6ed7-088dcbea3a07",
  "kind": "theorem",
  "lexical_name": "verify_integral_bound_withInv",
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
  "slug": "verify-integral-bound-withinv--ae4721147fff9d920f7226eb",
  "source": {
    "blob": "aadeba643fd3f4e60c7710626c255a7effe39f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2227,
    "line": 2205,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae4721147fff9d920f7226eb7978c756a653f6de8f08347f4289546c1acc9851",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:555a47ac-fadd-e9b7-6ed7-088dcbea3a07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2205–2227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_integral_bound_withInv (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (_target : ℚ)
    (h_cert : checkIntegralBoundsWithInv e I _target = true)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) volume I.lo I.hi) :
    ∃ bound, integrateInterval1WithInv e I = some bound ∧
      ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e ∈ bound := by
  simp only [checkIntegralBoundsWithInv] at h_cert
  cases h_eval : evalInterval?1 e I with
  | none =>
    simp only [h_eval] at h_cert
    cases h_cert
  | some J =>
    have hbound : integrateInterval1WithInv e I =
        some (IntervalRat.mul (IntervalRat.singleton I.width) J) := by
      simp only [integrateInterval1WithInv, h_eval]
    refine ⟨IntervalRat.mul (IntervalRat.singleton I.width) J, hbound, ?_⟩
    exact integrateInterval1WithInv_correct e hsupp I
      (IntervalRat.mul (IntervalRat.singleton I.width) J) hbound hInt

/-! ### Partitioned integration for ExprSupportedWithInv -/

/-- Collect per-subinterval bounds using evalInterval?1.
    Returns `none` if any subinterval fails. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean#L2205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aadeba643fd3f4e60c7710626c255a7effe39f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
