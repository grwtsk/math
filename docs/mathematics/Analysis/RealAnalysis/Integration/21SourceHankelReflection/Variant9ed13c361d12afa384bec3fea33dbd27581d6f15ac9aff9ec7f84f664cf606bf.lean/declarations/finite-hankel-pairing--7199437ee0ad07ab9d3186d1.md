# finite_hankel_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e43df4c20fb350feae75604083ad76504c34d47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f19e28e-db24-5711-4d3a-d99adb8aa656",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f045b9cf-aa7f-d8da-3e8a-90dd175986e7",
  "kind": "theorem",
  "lexical_name": "finite_hankel_pairing",
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
  "slug": "finite-hankel-pairing--7199437ee0ad07ab9d3186d1",
  "source": {
    "blob": "4e43df4c20fb350feae75604083ad76504c34d47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 112,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7199437ee0ad07ab9d3186d16417d9a5c243b91576c92612c8a4ea4dfb7d778a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f045b9cf-aa7f-d8da-3e8a-90dd175986e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_hankel_pairing {A : ℝ} (hA : 0 < A) (s t : Finset ℕ) (c d : ℕ → ℝ)
    (hs : ∀ m ∈ s, 0 < m) (ht : ∀ n ∈ t, 0 < n) :
    (∫ x : ℝ, forwardProfile A s c x * reflectedProfile A t d x) =
      ∑ m ∈ s, ∑ n ∈ t, c m * d n *
        sourceCorrelation explicitSecondDerivative A (Real.log ((m : ℝ) * (n : ℝ))) := by
  calc
    _ = ∫ x : ℝ, ∑ m ∈ s, ∑ n ∈ t,
        (c m * normalizedTest explicitSecondDerivative A (x - Real.log (m : ℝ))) *
          (d n * normalizedTest explicitSecondDerivative A (x + Real.log (n : ℝ))) := by
      apply integral_congr_ae
      filter_upwards [] with x
      unfold forwardProfile reflectedProfile
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro m hm
      rw [Finset.mul_sum]
    _ = _ := by
      rw [integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro m hm
        rw [integral_finsetSum]
        · apply Finset.sum_congr rfl
          intro n hn
          have he : (fun x : ℝ ↦ (c m * normalizedTest explicitSecondDerivative A
              (x - Real.log (m : ℝ))) * (d n * normalizedTest explicitSecondDerivative A
                (x + Real.log (n : ℝ)))) =
              fun x ↦ (c m * d n) * (normalizedTest explicitSecondDerivative A
                (x - Real.log (m : ℝ)) * normalizedTest explicitSecondDerivative A
                  (x + Real.log (n : ℝ))) := by funext x; ring
          rw [he, integral_const_mul, translated_reflected_pairing A
            (by exact_mod_cast hs m hm) (by exact_mod_cast ht n hn)]
        · intro n hn
          convert (translated_reflected_product_integrable hA (m : ℝ) (n : ℝ)).const_mul
            (c m * d n) using 1
          funext x
          ring
      · intro m hm
        apply integrable_finsetSum t
        intro n hn
        convert (translated_reflected_product_integrable hA (m : ℝ) (n : ℝ)).const_mul
          (c m * d n) using 1 <;> try rfl
        funext x
        ring

/-- The two actual square sectors are integrable before any subtraction is made. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e43df4c20fb350feae75604083ad76504c34d47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
