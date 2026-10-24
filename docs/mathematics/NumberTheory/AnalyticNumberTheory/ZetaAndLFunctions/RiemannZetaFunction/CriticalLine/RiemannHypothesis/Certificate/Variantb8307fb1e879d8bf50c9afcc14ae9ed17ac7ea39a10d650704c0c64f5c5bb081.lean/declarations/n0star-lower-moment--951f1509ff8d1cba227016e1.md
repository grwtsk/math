# N0star_lower_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9264619347e998173efe785f60f559088636afc1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8307fb1e879d8bf50c9afcc14ae9ed17ac7ea39a10d650704c0c64f5c5bb081.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:733ec133-7997-0c4d-9b50-58fca9721625",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0bfc7dcf-19b9-7e9a-bcf1-717b0f4b0ddd",
  "kind": "theorem",
  "lexical_name": "N0star_lower_moment",
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
  "slug": "n0star-lower-moment--951f1509ff8d1cba227016e1",
  "source": {
    "blob": "9264619347e998173efe785f60f559088636afc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variantb8307fb1e879d8bf50c9afcc14ae9ed17ac7ea39a10d650704c0c64f5c5bb081.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:951f1509ff8d1cba227016e119dbd9cd684ae91659d8d9c583aca5d1549a8619",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variantb8307fb1e879d8bf50c9afcc14ae9ed17ac7ea39a10d650704c0c64f5c5bb081.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bfc7dcf-19b9-7e9a-bcf1-717b0f4b0ddd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem N0star_lower_moment
    {N0star N NII trGh frGh B κ R₁ R₂ : ℝ} (hB : 0 ≤ B)
    (h0 : 4 * trGh - frGh - 2 * N - 3 * NII - B * (4 + 2 * Real.sqrt frGh + B) ≤ N0star)
    (htr : N - R₁ ≤ trGh) (hfr : frGh ≤ κ * N + R₂) :
    (2 - κ) * N - (4 * R₁ + R₂ + 3 * NII
        + B * (4 + 2 * Real.sqrt (κ * N + R₂) + B)) ≤ N0star := by
  have h2 : Real.sqrt frGh ≤ Real.sqrt (κ * N + R₂) := Real.sqrt_le_sqrt hfr
  nlinarith [h0, htr, h2, hB, mul_le_mul_of_nonneg_left h2 hB]

/-! ## Seam-agnostic count certificates (for the multiplicity-aware rank–trace variants:
the zero-side inequality arrives as the hypothesis h0, so the same algebra serves N₀* (seamA),
the c = 2 multiplicity-aware N₀ˢ seam, and — in halved form below — the c = 3 N_d seam). -/

/-- The moment certificate with the fixed-T seam inequality abstracted: any count `lower`
satisfying the seam shape eventually obeys the (2 − κ − ε) certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variantb8307fb1e879d8bf50c9afcc14ae9ed17ac7ea39a10d650704c0c64f5c5bb081.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variantb8307fb1e879d8bf50c9afcc14ae9ed17ac7ea39a10d650704c0c64f5c5bb081.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9264619347e998173efe785f60f559088636afc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
