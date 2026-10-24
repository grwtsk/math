# Integrable.exists_boundedContinuous_integral_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35c6ead0-bd33-c141-681e-e84f25acea2a",
  "kind": "theorem",
  "lexical_name": "Integrable.exists_boundedContinuous_integral_sub_le",
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
  "slug": "integrable-exists-boundedcontinuous-integral-sub-le--06d82c504e04193e52479b67",
  "source": {
    "blob": "8e2e0b3b8f7e7468d1389b8f4ab139bb492e1f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 319,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06d82c504e04193e52479b678e2fa5070827ff82344cd35d311727b0c173bfc2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35c6ead0-bd33-c141-681e-e84f25acea2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.exists_boundedContinuous_integral_sub_le [μ.WeaklyRegular] {f : α → E}
    (hf : Integrable f μ) {ε : ℝ} (hε : 0 < ε) :
    ∃ g : α →ᵇ E, (∫ x, ‖f x - g x‖ ∂μ) ≤ ε ∧ Integrable g μ := by
  simp only [← memLp_one_iff_integrable, ← ENNReal.ofReal_one]
    at hf ⊢
  simpa using hf.exists_boundedContinuous_integral_rpow_sub_le zero_lt_one hε

namespace Lp

variable (E μ)

/-- A function in `Lp` can be approximated in `Lp` by continuous functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e2e0b3b8f7e7468d1389b8f4ab139bb492e1f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
