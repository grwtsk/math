# setIntegral_cauchyK_mul_far

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f8720428b276926fb1310827167a982a1006e88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8780511e-2c60-d916-7d1b-780f7258a0a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79f36205-e030-36a4-b4d3-38b3dcf3087f",
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
  "slug": "setintegral-cauchyk-mul-far--b889393bd1c57f6236fa3eda",
  "source": {
    "blob": "4f8720428b276926fb1310827167a982a1006e88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b889393bd1c57f6236fa3eda8cefdfea588ecb1442c1f4c1a96947f378fcf6cc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79f36205-e030-36a4-b4d3-38b3dcf3087f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–114.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f8720428b276926fb1310827167a982a1006e88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
