# convolution_mul_moebius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b5b15c0-a1c4-7b3c-92b1-b3ab07e30df5",
  "kind": "lemma",
  "lexical_name": "convolution_mul_moebius",
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
  "slug": "convolution-mul-moebius--88d54a2e86d389cee1c882b0",
  "source": {
    "blob": "c90d86855802903ec13d926c02565be2db4d9979",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 146,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88d54a2e86d389cee1c882b0ac3fa188a8c91b7749f21cee2b64029d05725c95",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b5b15c0-a1c4-7b3c-92b1-b3ab07e30df5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma convolution_mul_moebius {n : ℕ} (χ : DirichletCharacter ℂ n) : ↗χ ⍟ (↗χ * ↗μ) = δ := by
  have : (1 : ℕ → ℂ) ⍟ (μ ·) = δ := by
    rw [one_convolution_eq_zeta_convolution, ← one_eq_delta]
    simp_rw [← natCoe_apply, ← intCoe_apply, coe_mul, coe_zeta_mul_coe_moebius]
  nth_rewrite 1 [← mul_one ↗χ]
  simpa only [mul_convolution_distrib χ 1 ↗μ, this] using mul_delta _

/-- The Dirichlet character mod `0` corresponds to `δ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c90d86855802903ec13d926c02565be2db4d9979` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
