# integral_phiHatR_sq_mul_cos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41ef273659adeaf754c97c5613253e7bfe5be01f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 439,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e5e8f34-2a23-9876-f931-71b0a8075f09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41ba07ab-ebe3-c354-e4f0-df755caee67e",
  "kind": "theorem",
  "lexical_name": "integral_phiHatR_sq_mul_cos",
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
  "slug": "integral-phihatr-sq-mul-cos--ffc9c1092156b244d3c95ade",
  "source": {
    "blob": "41ef273659adeaf754c97c5613253e7bfe5be01f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 439,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffc9c1092156b244d3c95ade40de5d6682add3fce992959f61f68882b9002a54",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41ba07ab-ebe3-c354-e4f0-df755caee67e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_phiHatR_sq_mul_cos (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L)
    (y : ℝ) : ∫ r, phiHatR ϱ L w r ^ 2 * Real.cos (r * y) = 2 * π * Aphi ϱ L w y :=
  integral_mul_cos_of_paperFT_eq (A := Aphi ϱ L w) (G := fun r => phiHatR ϱ L w r ^ 2)
    (autocorr_continuous_of_even phi_even (phi_continuous hϱ hw hwL) (phi_hasCompactSupport hϱ hw))
    (autocorr_integrable_of_even phi_even (phi_continuous hϱ hw hwL) (phi_hasCompactSupport hϱ hw))
    (integrable_phiHatR_sq hϱ hw hwL)
    (fun r => by rw [← phiHatR_sq_eq hϱ hw hwL r]; push_cast; ring) y

/-- [eq:Phi2FT]: "`∫_ℝ Φ(x)² e^{ixy} dx = 2π g(y)` (`y ∈ ℝ`)", in cosine form (`Φ²` is even
and real, so the sine part vanishes). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41ef273659adeaf754c97c5613253e7bfe5be01f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
