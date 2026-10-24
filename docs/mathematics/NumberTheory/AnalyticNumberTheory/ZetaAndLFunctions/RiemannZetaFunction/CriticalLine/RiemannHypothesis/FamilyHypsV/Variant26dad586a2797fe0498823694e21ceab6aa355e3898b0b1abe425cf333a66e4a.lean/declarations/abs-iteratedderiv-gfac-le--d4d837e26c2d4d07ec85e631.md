# abs_iteratedDeriv_gfac_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86fee856-6026-2946-0d04-844b38b9333c",
  "kind": "lemma",
  "lexical_name": "abs_iteratedDeriv_gfac_le",
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
  "slug": "abs-iteratedderiv-gfac-le--d4d837e26c2d4d07ec85e631",
  "source": {
    "blob": "8c77408fe6586397e3c57ff94be7d415317d1d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 182,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4d837e26c2d4d07ec85e63197006997720455744a07c737c1ec60f70740d8dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86fee856-6026-2946-0d04-844b38b9333c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_iteratedDeriv_gfac_le (hh : ContDiff ℝ 3 h)
    (hH : ∀ i : ℕ, i ≤ 3 → ∀ s : ℝ, |iteratedDeriv i h s| ≤ H)
    (hL : 0 < L) {i : ℕ} (hi : i ≤ 3) (u : ℝ) :
    |iteratedDeriv i (gfac h L) u| ≤ (L⁻¹) ^ i * H := by
  rw [iteratedDeriv_gfac hh hi, abs_mul, abs_of_nonneg (by positivity)]
  exact mul_le_mul_of_nonneg_left (hH i hi _) (by positivity)

/-- **φ_v = (h̃(·/L))·φ as functions** (h̃ = √v on |s| ≤ ½+η where v > 0; φ = 0 off [−L/2, L/2]). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c77408fe6586397e3c57ff94be7d415317d1d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
