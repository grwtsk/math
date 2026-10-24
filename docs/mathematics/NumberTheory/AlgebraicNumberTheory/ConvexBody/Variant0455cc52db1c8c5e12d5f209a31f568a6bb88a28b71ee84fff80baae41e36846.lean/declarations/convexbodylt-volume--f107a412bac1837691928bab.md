# convexBodyLT_volume

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c85989a9-9347-8e82-a027-c5900f1b3064",
  "kind": "theorem",
  "lexical_name": "convexBodyLT_volume",
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
  "slug": "convexbodylt-volume--f107a412bac1837691928bab",
  "source": {
    "blob": "bcde65f4321c7c9d0b30b0a7f1e30d92000fe051",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f107a412bac1837691928babae9c72a0d96b51a959446faedebac37191c4769d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c85989a9-9347-8e82-a027-c5900f1b3064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexBodyLT_volume :
    volume (convexBodyLT K f) = (convexBodyLTFactor K) * ∏ w, (f w) ^ (mult w) := by
  calc
    _ = (∏ x : {w // InfinitePlace.IsReal w}, ENNReal.ofReal (2 * (f x.val))) *
          ∏ x : {w // InfinitePlace.IsComplex w}, ENNReal.ofReal (f x.val) ^ 2 * NNReal.pi := by
      simp_rw [volume_eq_prod, prod_prod, volume_pi, pi_pi, Real.volume_ball, Complex.volume_ball]
    _ = ((2 : ℝ≥0) ^ nrRealPlaces K
          * (∏ x : {w // InfinitePlace.IsReal w}, ENNReal.ofReal (f x.val)))
          * ((∏ x : {w // IsComplex w}, ENNReal.ofReal (f x.val) ^ 2) *
            NNReal.pi ^ nrComplexPlaces K) := by
      simp_rw [ofReal_mul (by simp : 0 ≤ (2 : ℝ)), Finset.prod_mul_distrib, Finset.prod_const,
        Finset.card_univ, ofReal_ofNat, ofReal_coe_nnreal, coe_ofNat]
    _ = (convexBodyLTFactor K) * ((∏ x : {w // InfinitePlace.IsReal w}, .ofReal (f x.val)) *
        (∏ x : {w // IsComplex w}, ENNReal.ofReal (f x.val) ^ 2)) := by
      simp_rw [convexBodyLTFactor, coe_mul, ENNReal.coe_pow]
      ring
    _ = (convexBodyLTFactor K) * ∏ w, (f w) ^ (mult w) := by
      simp_rw [prod_eq_prod_mul_prod, coe_mul, ofNNReal_finsetProd, mult_isReal, mult_isComplex,
        pow_one, ENNReal.coe_pow, ofReal_coe_nnreal]

variable {f}

/-- This is a technical result: quite often, we want to impose conditions at all infinite places
but one and choose the value at the remaining place so that we can apply
`exists_ne_zero_mem_ringOfIntegers_lt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcde65f4321c7c9d0b30b0a7f1e30d92000fe051` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
