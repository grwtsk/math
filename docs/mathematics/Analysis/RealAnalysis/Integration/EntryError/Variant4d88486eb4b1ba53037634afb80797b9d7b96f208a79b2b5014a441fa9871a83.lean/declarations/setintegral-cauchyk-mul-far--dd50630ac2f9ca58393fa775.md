# setIntegral_cauchyK_mul_far

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f005bb3-f2a8-c0bd-4e60-4d6c6f2f4264",
  "kind": "theorem",
  "lexical_name": "setIntegral_cauchyK_mul_far",
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
  "slug": "setintegral-cauchyk-mul-far--dd50630ac2f9ca58393fa775",
  "source": {
    "blob": "d4fef11a08b062807a2d6326d30b960355b150c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd50630ac2f9ca58393fa7750dba5275ef36f0cfcb01a3fe8087711bbd23fe87",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f005bb3-f2a8-c0bd-4e60-4d6c6f2f4264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setIntegral_cauchyK_mul_far {a b T : ℝ} (hT : 0 < T) (ha : T ≤ a) :
    ∫ t in Iic (T / 4), cauchyK a t * cauchyK b t ≤ 16 * Real.pi / (9 * T ^ 2) := by
  calc ∫ t in Iic (T / 4), cauchyK a t * cauchyK b t
      ≤ ∫ t in Iic (T / 4), 16 / (9 * T ^ 2) * cauchyK b t := by
        refine setIntegral_mono_on (integrable_cauchyK_mul a b).integrableOn
          ((integrable_cauchyK b).const_mul _).integrableOn measurableSet_Iic fun t ht => ?_
        exact mul_le_mul_of_nonneg_right (cauchyK_far hT ha ht) (cauchyK_nonneg _ _)
    _ ≤ ∫ t, 16 / (9 * T ^ 2) * cauchyK b t :=
        setIntegral_le_integral ((integrable_cauchyK b).const_mul _)
          (Eventually.of_forall fun t => mul_nonneg (by positivity) (cauchyK_nonneg _ _))
    _ = 16 * Real.pi / (9 * T ^ 2) := by rw [integral_const_mul, integral_cauchyK]; ring

/-! ## 2. The core entry-error estimate -/

/-- |t − (a+b)/2| ≤ (|t−a| + |t−b|)/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4fef11a08b062807a2d6326d30b960355b150c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
