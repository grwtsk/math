# neg_logDeriv_LFunction_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59b02623e04e65e37288e68b82a1ed1d32090612",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4febfe06-a46c-ea66-3f0f-41c397489832",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:452c5446-3803-8b2f-4088-b0ae886f0202",
  "kind": "theorem",
  "lexical_name": "neg_logDeriv_LFunction_eq",
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
  "slug": "neg-logderiv-lfunction-eq--be7dab288b2da7c44f814921",
  "source": {
    "blob": "59b02623e04e65e37288e68b82a1ed1d32090612",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be7dab288b2da7c44f8149214346ce6feab6eb0dc005a69b7af3462e93beb79a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:452c5446-3803-8b2f-4088-b0ae886f0202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_logDeriv_LFunction_eq (_hχ1 : χ ≠ 1) {s : ℂ} (hs : 1 < s.re) :
    -logDeriv χ.LFunction s = LSeries (fun n => (χ n : ℂ) * (Λ n : ℂ)) s := by
  have hds : deriv χ.LFunction s = deriv (LSeries (fun n => (χ n : ℂ))) s := by
    refine Filter.EventuallyEq.deriv_eq ?_
    refine Filter.eventuallyEq_iff_exists_mem.mpr ⟨{z | 1 < z.re},
      (isOpen_lt continuous_const continuous_re).mem_nhds hs, fun z hz => ?_⟩
    exact DirichletCharacter.LFunction_eq_LSeries χ hz
  have h2 := DirichletCharacter.LSeries_twist_vonMangoldt_eq χ hs
  rw [logDeriv, Pi.div_apply, hds, DirichletCharacter.LFunction_eq_LSeries χ hs]
  have h3 : (fun n : ℕ => (χ n : ℂ) * (Λ n : ℂ)) = (↗χ * ↗Λ : ℕ → ℂ) := by
    funext n
    simp [Pi.mul_apply]
  rw [h3, h2]
  ring

/-- Pointwise on the line: the integrand as a twisted tsum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59b02623e04e65e37288e68b82a1ed1d32090612` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
