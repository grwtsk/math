# isAlgebraic_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1db7410022c05a5b2008f5dcb351677e0954944f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf8ad24e-e170-021d-eae1-e9d3c6618276",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8084b09a-a455-0d78-f053-83a6dc6e4e7d",
  "kind": "theorem",
  "lexical_name": "isAlgebraic_iff'",
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
  "slug": "isalgebraic-iff--b11111b9bf8e3b68cb80ea90",
  "source": {
    "blob": "1db7410022c05a5b2008f5dcb351677e0954944f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 352,
    "path": "GRWTSK/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b11111b9bf8e3b68cb80ea90001162dc852dbc169210430a5c0681c364830aee",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8084b09a-a455-0d78-f053-83a6dc6e4e7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAlgebraic_iff' [Field K] [IsDomain R] [Algebra R K] [Algebra S K]
    [NoZeroSMulDivisors R K] [IsFractionRing S K] [IsScalarTower R S K] :
    Algebra.IsAlgebraic R S ↔ Algebra.IsAlgebraic R K := by
  simp only [Algebra.isAlgebraic_def]
  constructor
  · intro h x
    letI := MulActionWithZero.nontrivial S K
    letI := FractionRing.liftAlgebra R K
    have := FractionRing.isScalarTower_liftAlgebra R K
    rw [IsFractionRing.isAlgebraic_iff R (FractionRing R) K, isAlgebraic_iff_isIntegral]
    obtain ⟨a : S, b, ha, rfl⟩ := div_surjective (A := S) x
    obtain ⟨f, hf₁, hf₂⟩ := h b
    rw [div_eq_mul_inv]
    refine IsIntegral.mul ?_ ?_
    · rw [← isAlgebraic_iff_isIntegral]
      refine .extendScalars
        (FaithfulSMul.algebraMap_injective R (FractionRing R)) ?_
      exact .algebraMap (h a)
    · rw [← isAlgebraic_iff_isIntegral]
      use (f.map (algebraMap R (FractionRing R))).reverse
      constructor
      · rwa [Ne, Polynomial.reverse_eq_zero, ← Polynomial.degree_eq_bot,
          Polynomial.degree_map_eq_of_injective
            (FaithfulSMul.algebraMap_injective R (FractionRing R)),
          Polynomial.degree_eq_bot]
      · have : Invertible (algebraMap S K b) :=
          IsUnit.invertible
            (isUnit_of_mem_nonZeroDivisors
              (mem_nonZeroDivisors_iff_ne_zero.2 fun h =>
                nonZeroDivisors.ne_zero ha
                  ((injective_iff_map_eq_zero (algebraMap S K)).1
                    (FaithfulSMul.algebraMap_injective _ _) b h)))
        rw [Polynomial.aeval_def, ← invOf_eq_inv, Polynomial.eval₂_reverse_eq_zero_iff,
          Polynomial.eval₂_map, ← IsScalarTower.algebraMap_eq, ← Polynomial.aeval_def,
          Polynomial.aeval_algebraMap_apply, hf₂, RingHom.map_zero]
  · intro h x
    obtain ⟨f, hf₁, hf₂⟩ := h (algebraMap S K x)
    use f, hf₁
    rw [Polynomial.aeval_algebraMap_apply] at hf₂
    exact
      (injective_iff_map_eq_zero (algebraMap S K)).1 (FaithfulSMul.algebraMap_injective _ _) _
        hf₂

open nonZeroDivisors

variable {S K}

/-- If the `S`-multiples of `a` are contained in some `R`-span, then `Frac(S)`-multiples of `a`
are contained in the equivalent `Frac(R)`-span. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1db7410022c05a5b2008f5dcb351677e0954944f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
