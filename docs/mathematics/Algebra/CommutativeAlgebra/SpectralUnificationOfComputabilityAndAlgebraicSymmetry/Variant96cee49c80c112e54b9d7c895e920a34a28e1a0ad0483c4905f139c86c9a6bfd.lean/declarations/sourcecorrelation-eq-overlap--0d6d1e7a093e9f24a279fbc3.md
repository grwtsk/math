# sourceCorrelation_eq_overlap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06df97e6f1c69fe6799fdede8d2acbf8cd8db8b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d596e14-d467-644e-6f28-af9d45afe480",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3d1f147-8136-fdc6-e9fa-d4dc557a4397",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_eq_overlap",
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
  "slug": "sourcecorrelation-eq-overlap--0d6d1e7a093e9f24a279fbc3",
  "source": {
    "blob": "06df97e6f1c69fe6799fdede8d2acbf8cd8db8b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 37,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d6d1e7a093e9f24a279fbc36bcac6022129729047c9dd6670edc103e6fd75c3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3d1f147-8136-fdc6-e9fa-d4dc557a4397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_eq_overlap (A v : ℝ) (hA : 1 ≤ A)
    (hv : 0 ≤ v) (hv2 : v ≤ 2) :
    sourceCorrelation explicitSecondDerivative A (A * v) =
      ∫ x in (A * v - A)..A, normalizedInterior A x * normalizedInterior A (x - A * v) := by
  have hA0 : 0 < A := by linarith
  have ht : 0 ≤ A * v := mul_nonneg hA0.le hv
  have ht2 : A * v ≤ 2 * A := by nlinarith
  unfold sourceCorrelation
  rw [normalizedTest_eq_indicator A hA0]
  have he : (fun x ↦ (Icc (-A) A).indicator (normalizedInterior A) x *
      (Icc (-A) A).indicator (normalizedInterior A) (x - A * v)) =
      (Icc (A * v - A) A).indicator
        (fun x ↦ normalizedInterior A x * normalizedInterior A (x - A * v)) := by
    funext x
    by_cases hx : x ∈ Icc (-A) A
    · by_cases hy : x - A * v ∈ Icc (-A) A
      · have hz : x ∈ Icc (A * v - A) A := ⟨by linarith [hy.1], hx.2⟩
        simp only [indicator_of_mem hx, indicator_of_mem hy, indicator_of_mem hz]
      · have hz : x ∉ Icc (A * v - A) A := by
          intro hz
          exact hy ⟨by linarith [hz.1], by linarith [hz.2]⟩
        simp only [indicator_of_notMem hy, mul_zero, indicator_of_notMem hz]
    · have hz : x ∉ Icc (A * v - A) A := by
        intro hz
        exact hx ⟨by linarith [hz.1], hz.2⟩
      simp only [indicator_of_notMem hx, zero_mul, indicator_of_notMem hz]
  rw [he, zeroExtension_integral _ _ _ (by linarith)]

/-- Scaling the true overlap removes precisely the Jacobian factor `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06df97e6f1c69fe6799fdede8d2acbf8cd8db8b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
