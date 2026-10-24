# hasDerivAt_primitiveSlope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1705aa22-d404-ee24-0688-abc89a1b347d",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_primitiveSlope",
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
  "slug": "hasderivat-primitiveslope--0caa665618188d5a14c2250f",
  "source": {
    "blob": "410b2a3dc873896136a17bdb5985d2b8d1d33ff1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 85,
    "path": "GRWTSK/Analysis/Real/RationalTentCorrectionPrefixExact.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0caa665618188d5a14c2250f0eaf2adc78b7bcebfdf6fec4c4ef2b2ba28e509b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1705aa22-d404-ee24-0688-abc89a1b347d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_primitiveSlope (k : ℕ) (t : ℝ) (ht : t ≠ 0) :
    HasDerivAt (primitiveSlope k) (densityTerm k t) t := by
  have h := hasDerivAt_zpow (-oddExponent k - 1) t (Or.inl ht)
  have hd := h.const_mul
    ((1 / ((oddExponent k : ℝ) * ((oddExponent k + 1 : ℤ) : ℝ))) *
      ((-oddExponent k : ℤ) : ℝ))
  convert hd using 1
  · simp [primitiveSlope, mul_assoc]
  · have hq : (0 : ℝ) < (oddExponent k : ℝ) := by
      exact_mod_cast oddExponent_pos k
    have hq1 : (0 : ℝ) < ((oddExponent k + 1 : ℤ) : ℝ) := by
      exact_mod_cast (show (0 : ℤ) < oddExponent k + 1 by
        have := oddExponent_pos k
        omega)
    rw [show -oddExponent k - 1 - 1 = -(oddExponent k + 2) by ring]
    have hpow :
        t ^ (-(oddExponent k + 2)) = densityTerm k t := by
      unfold densityTerm oddExponent
      rw [show -(2 * (k : ℤ) + 1 + 2) = -((2 * k + 3 : ℕ) : ℤ) by
        push_cast
        ring]
      simp only [zpow_neg, zpow_natCast]
      field_simp [ht]
      ring
    rw [hpow]
    field_simp [ne_of_gt hq, ne_of_gt hq1]
    ring

/-- Continuity of one density term on a positive interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/RationalTentCorrectionPrefixExact.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `410b2a3dc873896136a17bdb5985d2b8d1d33ff1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
