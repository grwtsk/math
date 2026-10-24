# N0star_lower_c

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cf62001-644d-0cb9-89b0-8fb8ebff41d7",
  "kind": "theorem",
  "lexical_name": "N0star_lower_c",
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
  "slug": "n0star-lower-c--e365939ca93d6ba6a8e285ba",
  "source": {
    "blob": "b0cb83b5eb804c23b6880cb708754761cea6602f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant392e810da8bd1a78555a3e84a57ddada2fccf3418bfd9bff7e737b85caba9e4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e365939ca93d6ba6a8e285ba8044e81110285c03c4e1c171ea0c20707105467c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant392e810da8bd1a78555a3e84a57ddada2fccf3418bfd9bff7e737b85caba9e4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cf62001-644d-0cb9-89b0-8fb8ebff41d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem N0star_lower_c
    {N0star N NII trGh frGh B cinv R₁ R₂ : ℝ} (hB : 0 ≤ B)
    (h0 : 4 * trGh - frGh - 2 * N - 3 * NII - B * (4 + 2 * Real.sqrt frGh + B) ≤ N0star)
    (htr : |trGh - N| ≤ R₁) (hfr : frGh ≤ cinv * N + R₂) :
    (2 - cinv) * N - (4 * R₁ + R₂ + 3 * NII
        + B * (4 + 2 * Real.sqrt (cinv * N + R₂) + B)) ≤ N0star := by
  have h1 : N - R₁ ≤ trGh := by
    have := (abs_le.mp htr).1
    linarith
  have h2 : Real.sqrt frGh ≤ Real.sqrt (cinv * N + R₂) := Real.sqrt_le_sqrt hfr
  nlinarith [h0, h1, h2, hB, mul_le_mul_of_nonneg_left h2 hB]

/-- link to the Theorem-D constant: 2 − 1/cStar λ = HD λ by definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant392e810da8bd1a78555a3e84a57ddada2fccf3418bfd9bff7e737b85caba9e4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant392e810da8bd1a78555a3e84a57ddada2fccf3418bfd9bff7e737b85caba9e4d.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0cb83b5eb804c23b6880cb708754761cea6602f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
