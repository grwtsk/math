# source_error_with_modulus_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1b0f49c-5428-7959-cf08-d9007d638d25",
  "kind": "theorem",
  "lexical_name": "source_error_with_modulus_bound",
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
  "slug": "source-error-with-modulus-bound--9cd059ae32bca84a0867891e",
  "source": {
    "blob": "d6fa16ca87f7c433a0cb410b2fc81bcda20cd858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 122,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cd059ae32bca84a0867891e507384ca650036b3db636cfa74435333847c30b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1b0f49c-5428-7959-cf08-d9007d638d25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_error_with_modulus_bound (e : FinitePowerEnclosure N s)
    (hN : 1 ≤ N) {σ B : ℝ} (hσ : 0 < σ) (hs : σ ≤ s.re) (hB : ‖s‖ ≤ B) :
    ‖poleNormalizedZeta s - e.sample‖ ≤
      B * (B + 1) * ((N : ℝ) ^ (-σ) / σ) +
        (B + 1) * (∑ k ∈ Finset.Icc 1 N, e.error k) + e.endpoint_error := by
  have hsub : ‖s - 1‖ ≤ B + 1 := by
    calc
      ‖s - 1‖ ≤ ‖s‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ ≤ B + 1 := by simpa using add_le_add_right hB 1
  have hsum : 0 ≤ ∑ k ∈ Finset.Icc 1 N, e.error k := Finset.sum_nonneg e.error_nonneg
  calc
    _ = ‖(poleNormalizedZeta s - finitePowerPoleModel N s) +
        (finitePowerPoleModel N s - e.sample)‖ := by congr 1; ring
    _ ≤ ‖poleNormalizedZeta s - finitePowerPoleModel N s‖ +
        ‖finitePowerPoleModel N s - e.sample‖ := norm_add_le _ _
    _ ≤ B * (B + 1) * ((N : ℝ) ^ (-σ) / σ) + e.finiteError :=
      add_le_add (finitePower_source_error_uniform hN hσ hs hB) e.finite_model_error
    _ ≤ _ := by
      unfold finiteError
      have h := mul_le_mul_of_nonneg_right hsub hsum
      linarith

/-- Explicit normalized-source derivative majorant from the existing Mellin proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6fa16ca87f7c433a0cb410b2fc81bcda20cd858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
