# actual_full_interior_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:782aea12-08b4-c778-33fc-01bf32cf5061",
  "kind": "theorem",
  "lexical_name": "actual_full_interior_intervalIntegrable",
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
  "slug": "actual-full-interior-intervalintegrable--b3e3aa86138f74183588f26c",
  "source": {
    "blob": "c296e0e804a00a34f7100d49582abf1ab506ed2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Variant9f0c019c48367f17eb3bb08ed8e6fca0401a7737cf7adc7ea91bf1929652fcd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3e3aa86138f74183588f26c8012ccf90fb2f3ec2fd622112628798a8ecbb755",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Variant9f0c019c48367f17eb3bb08ed8e6fca0401a7737cf7adc7ea91bf1929652fcd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:782aea12-08b4-c778-33fc-01bf32cf5061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_full_interior_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun t =>
      ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
        actualLowerStripDensity A 0 (t, s)) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  obtain ⟨ht, hs⟩ := actual_box_orders hA
  have hi := actualAdjointInteriorBox_integrable hA
  rw [intervalIntegrable_iff_integrableOn_Ioc_of_le ht]
  simpa only [IntegrableOn, intervalIntegral.integral_of_le hs,
    actualLowerStripDensity, mul_assoc] using hi.integral_prod_left

/-- Genuine full-box L1 permits the exact split, without a new artificial endpoint trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Variant9f0c019c48367f17eb3bb08ed8e6fca0401a7737cf7adc7ea91bf1929652fcd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Variant9f0c019c48367f17eb3bb08ed8e6fca0401a7737cf7adc7ea91bf1929652fcd8.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c296e0e804a00a34f7100d49582abf1ab506ed2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
