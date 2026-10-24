# integral_mul_square_le_of_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:101a42cd-0466-15e4-8364-d6f4f1c64f78",
  "kind": "theorem",
  "lexical_name": "integral_mul_square_le_of_unit",
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
  "slug": "integral-mul-square-le-of-unit--2c2751af3aa5d4d18d0e7a3c",
  "source": {
    "blob": "fe74d0f81e1736aa5316590dcfe5bbaccc47d801",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 54,
    "path": "GRWTSK/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c2751af3aa5d4d18d0e7a3c3e42134777c5ca7525089c230e08e8a023aab80b",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:101a42cd-0466-15e4-8364-d6f4f1c64f78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_mul_square_le_of_unit {f g : ℝ → ℝ}
    (hf : Integrable (fun x ↦ (f x) ^ 2))
    (hg : Integrable (fun x ↦ (g x) ^ 2))
    (hm : Integrable (fun x ↦ f x * g x)) (hu : (∫ x : ℝ, (g x) ^ 2) = 1) :
    (∫ x : ℝ, f x * g x) ^ 2 ≤ ∫ x : ℝ, (f x) ^ 2 := by
  let c : ℝ := ∫ x : ℝ, f x * g x
  have hnonneg : 0 ≤ ∫ x : ℝ, (f x - c * g x) ^ 2 :=
    integral_nonneg (fun x ↦ sq_nonneg _)
  have hexpand : (fun x : ℝ ↦ (f x - c * g x) ^ 2) =
      fun x ↦ (f x) ^ 2 - (2 * c) * (f x * g x) + c ^ 2 * (g x) ^ 2 := by
    funext x
    ring
  rw [hexpand] at hnonneg
  rw [integral_add
    (f := fun x : ℝ ↦ (f x) ^ 2 - (2 * c) * (f x * g x))
    (g := fun x : ℝ ↦ c ^ 2 * (g x) ^ 2)
    (hf.sub (hm.const_mul _)) (hg.const_mul _),
    integral_sub (f := fun x : ℝ ↦ (f x) ^ 2)
      (g := fun x : ℝ ↦ (2 * c) * (f x * g x)) hf (hm.const_mul _),
    integral_const_mul, integral_const_mul, hu] at hnonneg
  dsimp [c] at hnonneg
  nlinarith

/-- The unit source norm reduces Cauchy–Schwarz to its exact derivative-square energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe74d0f81e1736aa5316590dcfe5bbaccc47d801` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
