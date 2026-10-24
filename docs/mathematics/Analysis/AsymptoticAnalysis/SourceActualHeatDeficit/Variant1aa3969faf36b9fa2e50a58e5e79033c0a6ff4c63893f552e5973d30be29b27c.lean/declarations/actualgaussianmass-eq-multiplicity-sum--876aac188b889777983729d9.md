# actualGaussianMass_eq_multiplicity_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4d4cd65-14b2-566a-145e-1349b94d894e",
  "kind": "theorem",
  "lexical_name": "actualGaussianMass_eq_multiplicity_sum",
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
  "slug": "actualgaussianmass-eq-multiplicity-sum--876aac188b889777983729d9",
  "source": {
    "blob": "117ada60642589b4db151ec3f90a06529585b414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 145,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variant1aa3969faf36b9fa2e50a58e5e79033c0a6ff4c63893f552e5973d30be29b27c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:876aac188b889777983729d95332b8486352001c9adbd905b1cbadb13de678af",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variant1aa3969faf36b9fa2e50a58e5e79033c0a6ff4c63893f552e5973d30be29b27c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4d4cd65-14b2-566a-145e-1349b94d894e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualGaussianMass_eq_multiplicity_sum {t : ℝ} (ht : 0 < t) :
    actualGaussianMass t = ∑' p : ZeroPoint, gaussianTerm t (multiplicity p) p.val.im := by
  unfold actualGaussianMass gaussianMass
  calc
    _ = ∑' p : ZeroPoint, ∑' _i : Fin (multiplicity p), gaussianTerm t 1 p.val.im :=
      (actualGaussian_summable ht).tsum_sigma
    _ = _ := by
      simp only [gaussianTerm, Nat.cast_one, one_mul, tsum_const,
        Nat.card_eq_fintype_card, Fintype.card_fin, nsmul_eq_mul]

/-- The deficit counts each distinct point with precisely its analytic multiplicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variant1aa3969faf36b9fa2e50a58e5e79033c0a6ff4c63893f552e5973d30be29b27c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variant1aa3969faf36b9fa2e50a58e5e79033c0a6ff4c63893f552e5973d30be29b27c.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117ada60642589b4db151ec3f90a06529585b414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
