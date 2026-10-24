# actual_signed_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce5ec1cf-8faa-0cf6-0d96-f4622ee7e923",
  "kind": "theorem",
  "lexical_name": "actual_signed_integrable",
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
  "slug": "actual-signed-integrable--95e78a2e69dfa16bcb4ed5ab",
  "source": {
    "blob": "02b2304c8dc0d328b4a5294e9f3ac38eada9af57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95e78a2e69dfa16bcb4ed5aba262b7ffebe513a2a233f88f0093f794ab83a8f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce5ec1cf-8faa-0cf6-0d96-f4622ee7e923`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_signed_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun x => (Chebyshev.psi x - (⌊x⌋ : ℝ)) *
      deriv (plainProfile A 1) x) (Ioi (1:ℝ)) := by
  have hf : IntegrableOn (fun x => (Chebyshev.psi x - (⌊x⌋ : ℝ)) *
      deriv (plainProfile A 1) x) (Ioc (1:ℝ) (Real.exp (2*A))) := by
    convert (actual_finite_signed_integrable hA).mono_set Ioc_subset_Icc_self using 1
    funext x
    ring
  have ht : IntegrableOn (fun x => (Chebyshev.psi x - (⌊x⌋ : ℝ)) *
      deriv (plainProfile A 1) x) (Ioi (Real.exp (2*A))) := by
    have hz : IntegrableOn (fun _ : ℝ => (0:ℝ)) (Ioi (Real.exp (2*A))) := integrableOn_zero
    apply hz.congr_fun
    · intro x hx
      dsimp only
      rw [actual_derivative_zero_above hA hx, mul_zero]
    · exact measurableSet_Ioi
  have hX : (1:ℝ) ≤ Real.exp (2*A) := Real.one_le_exp (by linarith)
  simpa only [Ioc_union_Ioi_eq_Ioi hX] using hf.union ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02b2304c8dc0d328b4a5294e9f3ac38eada9af57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
