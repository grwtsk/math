# count_lower_moment_c3_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3596aba6-397a-fae7-8ad2-db7e6fadde44",
  "kind": "theorem",
  "lexical_name": "count_lower_moment_c3_five",
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
  "slug": "count-lower-moment-c3-five--17c65b6e8b4bc04e8ae12f32",
  "source": {
    "blob": "5f3f3cf9c95468ee9c28e31e8b4c8427090adb2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificateC3/Variant1bf80b7dd3391147dae3248d0f3be0060e9cf1a8850a5139d369cd1ad45e4b17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17c65b6e8b4bc04e8ae12f32286d2e44de395ecb46aa2a9fd6eafab507871ac2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificateC3/Variant1bf80b7dd3391147dae3248d0f3be0060e9cf1a8850a5139d369cd1ad45e4b17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3596aba6-397a-fae7-8ad2-db7e6fadde44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_lower_moment_c3_five
    {lower N NII trGh frGh B κ R₁ R₂ : ℝ} (hB : 0 ≤ B)
    (h0 : 6 * trGh - frGh - 3 * N - 5 * NII - B * (6 + 2 * Real.sqrt frGh + B) ≤ 2 * lower)
    (htr : N - R₁ ≤ trGh) (hfr : frGh ≤ κ * N + R₂) :
    (3/2 - κ/2) * N - (3 * R₁ + R₂ / 2 + (5/2) * NII
        + (B/2) * (6 + 2 * Real.sqrt (κ * N + R₂) + B)) ≤ lower := by
  have h2 : Real.sqrt frGh ≤ Real.sqrt (κ * N + R₂) := Real.sqrt_le_sqrt hfr
  nlinarith [h0, htr, h2, hB, mul_le_mul_of_nonneg_left h2 hB]

/-- **the c = 3 count certificate.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificateC3/Variant1bf80b7dd3391147dae3248d0f3be0060e9cf1a8850a5139d369cd1ad45e4b17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificateC3/Variant1bf80b7dd3391147dae3248d0f3be0060e9cf1a8850a5139d369cd1ad45e4b17.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f3f3cf9c95468ee9c28e31e8b4c8427090adb2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
