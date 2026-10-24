# radial_secant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce9725c8-4f2a-6d15-cad8-fd137f46365a",
  "kind": "theorem",
  "lexical_name": "radial_secant",
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
  "slug": "radial-secant--24714c0d8688e5a57dd4073e",
  "source": {
    "blob": "70c6f020b36694bbb14ff09df24adfac4f5b0687",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variantf85e884fe6fc8e113bb90bbe1b9c4f1e7845bf5d6af853646f3154469c55e347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24714c0d8688e5a57dd4073e892dd03f19312f9bd045185a5d4fc060fa430e88",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variantf85e884fe6fc8e113bb90bbe1b9c4f1e7845bf5d6af853646f3154469c55e347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce9725c8-4f2a-6d15-cad8-fd137f46365a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radial_secant (p : Fin 2) {β η : ℝ} (hβ : β ≤ 1) (hη : η ≤ 1) :
    radialFloor * primeLog p * |β - η| ≤ |radial p β - radial p η| := by
  rcases le_total β η with h | h
  · have hd := radial_ordered_secant p hη h
    rw [abs_of_nonpos (sub_nonpos.2 h)]
    have hn := le_abs_self (radial p β - radial p η)
    nlinarith
  · have hd := radial_ordered_secant p hβ h
    rw [abs_of_nonneg (sub_nonneg.2 h)]
    have hn := neg_le_abs (radial p β - radial p η)
    nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variantf85e884fe6fc8e113bb90bbe1b9c4f1e7845bf5d6af853646f3154469c55e347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variantf85e884fe6fc8e113bb90bbe1b9c4f1e7845bf5d6af853646f3154469c55e347.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70c6f020b36694bbb14ff09df24adfac4f5b0687` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
