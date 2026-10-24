# actualCutoff_sqrt_gap_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce713f1e-1c6d-5d26-3a00-9d1f5ce1aa4c",
  "kind": "theorem",
  "lexical_name": "actualCutoff_sqrt_gap_bounds",
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
  "slug": "actualcutoff-sqrt-gap-bounds--283c7b96905a69866ab99916",
  "source": {
    "blob": "b2872b504e1c6d3aee22280299ca8f5d48b319dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 297,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:283c7b96905a69866ab9991643d61972739afffee626d28d04b9c59ae8a2f96b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce713f1e-1c6d-5d26-3a00-9d1f5ce1aa4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCutoff_sqrt_gap_bounds {A : ℝ} (hA : 2 ≤ A) :
    0 ≤ A - Real.sqrt (vaughanCutoff A : ℝ) ∧
      A - Real.sqrt (vaughanCutoff A : ℝ) ≤ 1 / A ∧
        1 / Real.sqrt (vaughanCutoff A : ℝ) ≤ 2 / A := by
  have hp : 0 < A := by linarith
  let U : ℝ := vaughanCutoff A
  have hU : 1 ≤ U := (actual_cutoff_order A (by linarith : 1 ≤ A)).1
  have hs0 : 0 < Real.sqrt U := Real.sqrt_pos.2 (by linarith)
  have hs : Real.sqrt U ≤ A := Real.sqrt_le_iff.mpr
    ⟨hp.le, Nat.floor_le (sq_nonneg A)⟩
  have hss : (Real.sqrt U) ^ 2 = U := Real.sq_sqrt (by linarith)
  have hfloor : A ^ 2 - 1 ≤ U := (Nat.sub_one_lt_floor (A ^ 2)).le
  have hhalf : A / 2 ≤ Real.sqrt U := by
    apply Real.le_sqrt_of_sq_le
    nlinarith
  have hgap : 0 ≤ A - Real.sqrt U := sub_nonneg.mpr hs
  refine ⟨hgap, ?_, ?_⟩
  · apply (le_div_iff₀ hp).2
    nlinarith [mul_nonneg (Real.sqrt_nonneg U) hgap]
  · apply (div_le_div_iff₀ hs0 hp).2
    nlinarith

/-- The exact unit floor integral and the literal fractional constant differ only in their tails. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2872b504e1c6d3aee22280299ca8f5d48b319dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
