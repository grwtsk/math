# angularContour_eq_constant_add_compensated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ec9c080afd7b3f101ca9361c3d57feee3d62e7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d62e9690cf75e4e8fe5f9e1713398ce49b80300f27ed2ce0480882e37b71e9db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26d3be48-ff6c-e5f0-db82-28c96259af41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a671422-886c-5e7f-b757-2b7da1eee1f0",
  "kind": "theorem",
  "lexical_name": "angularContour_eq_constant_add_compensated",
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
  "slug": "angularcontour-eq-constant-add-compensated--0f25cec255263291fd8d1d52",
  "source": {
    "blob": "4ec9c080afd7b3f101ca9361c3d57feee3d62e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantd62e9690cf75e4e8fe5f9e1713398ce49b80300f27ed2ce0480882e37b71e9db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f25cec255263291fd8d1d524eea0eaddcd9812e3effad7e45eea0837f55f1d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantd62e9690cf75e4e8fe5f9e1713398ce49b80300f27ed2ce0480882e37b71e9db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a671422-886c-5e7f-b757-2b7da1eee1f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angularContour_eq_constant_add_compensated (A : ℝ) (hA : 1 ≤ A) :
    angularContour A = (rightLineMajorant 2 : ℂ) + compensatedAngularContour A := by
  have hH := nativeMellin_two_integrable A hA
  have hD := angularIntegrand_integrable A hA
  have hI : (∫ t : ℝ, compensatedAngularIntegrand A t) =
      (∫ t : ℝ, angularIntegrand A t) - (rightLineMajorant 2 : ℂ) *
        (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) := by
    rw [compensated_integrand_eq, integral_sub hD (hH.const_mul _), integral_const_mul]
  unfold compensatedAngularContour angularContour
  rw [hI]
  have hm := nativeMellin_angular_mass A hA
  calc
    _ = (rightLineMajorant 2 : ℂ) *
        ((1 / (2 * Real.pi) : ℝ) * ∫ t : ℝ,
          nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) +
        ((1 / (2 * Real.pi) : ℝ) *
          ((∫ t : ℝ, angularIntegrand A t) - (rightLineMajorant 2 : ℂ) *
            (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))))) := by
      ring
    _ = _ := by rw [hm]; ring

/-- Finite-height compensation retains the exact truncated native mass factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantd62e9690cf75e4e8fe5f9e1713398ce49b80300f27ed2ce0480882e37b71e9db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantd62e9690cf75e4e8fe5f9e1713398ce49b80300f27ed2ce0480882e37b71e9db.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ec9c080afd7b3f101ca9361c3d57feee3d62e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
