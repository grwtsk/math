# source_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc875702-093c-4ef5-4f5d-a9a9d1a4e214",
  "kind": "theorem",
  "lexical_name": "source_error",
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
  "slug": "source-error--bc1f064f4a9403da99c1847d",
  "source": {
    "blob": "a630238e699825c5b38e3732dffececf0d684e6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 120,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc1f064f4a9403da99c1847d4f774d7f2dd79dd28dea722bbe098c13e1605289",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc875702-093c-4ef5-4f5d-a9a9d1a4e214`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_error (s : Coordinates) {N : ℕ} (hN : 1 ≤ N) (p : ℕ) (hs : 0 < s.1) :
    ‖poleNormalizedZeta (toComplex s) - PoleNormalizedEndpointJet.model N (p + 1) (toComplex s)‖ ≤
      (sourceAllowance s N p : ℝ) := by
  have hsR : 0 < (toComplex s).re := by
    simpa [toComplex] using (show (0 : ℝ) < (s.1 : ℝ) by exact_mod_cast hs)
  have h := PoleNormalizedEndpointJet.source_error hN p hsR (norm_le_magnitude s)
  have hb := PeriodicBernoulli.majorant_nonneg (2 * (p + 1))
  have hm := magnitude_nonneg s
  have hnQ : (0 : ℚ) ≤ tailAllowance N p (magnitude s) := by
    unfold tailAllowance
    positivity
  have hn : (0 : ℝ) ≤ (tailAllowance N p (magnitude s) : ℝ) := by exact_mod_cast hnQ
  have h' : ‖poleNormalizedZeta (toComplex s) - PoleNormalizedEndpointJet.model N (p + 1) (toComplex s)‖ ≤
      ‖toComplex s - 1‖ * (tailAllowance N p (magnitude s) : ℝ) := by
    simpa only [tailAllowance, Rat.cast_mul, Rat.cast_div, Rat.cast_prod, Rat.cast_add,
      Rat.cast_natCast, Rat.cast_pow] using h
  apply h'.trans
  rw [sourceAllowance, Rat.cast_mul]
  apply mul_le_mul_of_nonneg_right _ hn
  simpa only [toComplex_sub, toComplex_one] using norm_le_magnitude (sub s one)

/-- Finite arithmetic plus the independently derived actual-source residual.
Only the finite model, not its derivative, is transported by this pointwise ball. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a630238e699825c5b38e3732dffececf0d684e6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
