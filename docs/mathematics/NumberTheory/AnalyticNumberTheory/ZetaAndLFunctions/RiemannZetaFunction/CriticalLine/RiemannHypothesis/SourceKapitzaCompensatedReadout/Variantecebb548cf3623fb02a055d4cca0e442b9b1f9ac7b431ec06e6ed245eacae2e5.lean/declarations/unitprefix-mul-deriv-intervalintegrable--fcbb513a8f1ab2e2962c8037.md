# unitPrefix_mul_deriv_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f2f8d1b-01da-1db4-1f6a-b611c3fb28e4",
  "kind": "theorem",
  "lexical_name": "unitPrefix_mul_deriv_intervalIntegrable",
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
  "slug": "unitprefix-mul-deriv-intervalintegrable--fcbb513a8f1ab2e2962c8037",
  "source": {
    "blob": "3d7eb6f7018772a2f63da3b99a366d142c562231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantecebb548cf3623fb02a055d4cca0e442b9b1f9ac7b431ec06e6ed245eacae2e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcbb513a8f1ab2e2962c80379ee71398a26369f816271046fae45f52e3c14d50",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantecebb548cf3623fb02a055d4cca0e442b9b1f9ac7b431ec06e6ed245eacae2e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f2f8d1b-01da-1db4-1f6a-b611c3fb28e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitPrefix_mul_deriv_intervalIntegrable (b : ℝ) (hb : 0 ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun s => unitPrefix s * deriv F s) volume 0 b := by
  have hi : IntervalIntegrable (∑ n ∈ primePowerInventory b,
      fun s : ℝ => if Real.log n ≤ s then deriv F s else 0) volume 0 b :=
    IntervalIntegrable.sum _ (fun n _ =>
      intervalIntegrable_closed_step 0 b (Real.log n) (deriv F)
        (hF.continuous_deriv_one.intervalIntegrable 0 b))
  have he : (∑ n ∈ primePowerInventory b,
      fun s : ℝ => if Real.log n ≤ s then deriv F s else 0) =
      (fun s => ∑ n ∈ primePowerInventory b,
      if Real.log n ≤ s then deriv F s else 0) := by
    ext s
    simp
  rw [he] at hi
  apply hi.congr
  intro s hs
  exact (unitPrefix_mul_eq_steps b s (deriv F s) ((uIoc_of_le hb ▸ hs).2)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantecebb548cf3623fb02a055d4cca0e442b9b1f9ac7b431ec06e6ed245eacae2e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantecebb548cf3623fb02a055d4cca0e442b9b1f9ac7b431ec06e6ed245eacae2e5.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d7eb6f7018772a2f63da3b99a366d142c562231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
