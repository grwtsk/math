# integral_k_mul_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edec30f6-7582-4f5f-8754-f91deabb3ed8",
  "kind": "theorem",
  "lexical_name": "integral_k_mul_weight",
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
  "slug": "integral-k-mul-weight--0d78fb3b9868dac50750c08c",
  "source": {
    "blob": "b11805266fa0912a0a3fc34dcca5b5413e43294b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 403,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d78fb3b9868dac50750c08c2f1a47cba8fb9fdbe79cfecaea1ff9134e93874e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edec30f6-7582-4f5f-8754-f91deabb3ed8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_k_mul_weight {k : ℝ → ℂ} (hk : Continuous k) (hki : Integrable k)
    (hFk : Integrable (𝓕 k)) {E : ℝ → ℂ} (hE : Integrable E) :
    ∫ u : ℝ, k u * E u
      = (1 / (2 * π) : ℂ) * ∫ τ : ℝ, paperFT k τ * ∫ u : ℝ, E u * cexp (-I * τ * u) := by
  have hsub : (fun u : ℝ => k u * E u)
      = fun u : ℝ => (1 / (2 * π) : ℂ) * ∫ τ : ℝ, paperFT k τ * cexp (-I * τ * u) * E u := by
    ext u; rw [paper_inversion hk hki hFk u, mul_assoc, ← cintegral_mul_const]
  rw [hsub, cintegral_const_mul]
  congr 1
  rw [integral_integral_swap (integrable_inversion_kernel hFk hE)]
  congr 1; ext τ
  rw [← cintegral_const_mul]
  congr 1; ext u; ring

/-- The τ-integrand produced by `integral_k_mul_weight` is integrable (Fubini). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b11805266fa0912a0a3fc34dcca5b5413e43294b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
