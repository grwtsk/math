# vonMangoldt_convolution_hyperbola

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44ac8b42-0c5b-2854-62ae-b33402a7d1a8",
  "kind": "theorem",
  "lexical_name": "vonMangoldt_convolution_hyperbola",
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
  "slug": "vonmangoldt-convolution-hyperbola--180324475e7c45d1409617a8",
  "source": {
    "blob": "3d0eef3f07450b8199acad938667e8229ec1654f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 238,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:180324475e7c45d1409617a8227a46695b3c584f0efd5d4a428a16d55210f145",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44ac8b42-0c5b-2854-62ae-b33402a7d1a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vonMangoldt_convolution_hyperbola (N : Nat) :
    (∑ n ∈ Finset.Icc 1 N,
        (ArithmeticFunction.vonMangoldt *
          ArithmeticFunction.vonMangoldt) n) =
      2 * (∑ d ∈ Finset.Icc 1 (Nat.sqrt N),
        ArithmeticFunction.vonMangoldt d *
          Chebyshev.psi (N / d : Nat)) -
        Chebyshev.psi (Nat.sqrt N : Nat) ^ 2 := by
  have hrect := sum_Icc_dirichletConvolution_eq_rectangular
    ArithmeticFunction.vonMangoldt ArithmeticFunction.vonMangoldt N
  have hbal := balanced_productCutoffSum N
    (fun d m => ArithmeticFunction.vonMangoldt d *
      ArithmeticFunction.vonMangoldt m) (by
        intro a b
        ring)
  have hcutoff :
      AnalyticNT.Bilinear.productCutoffSum N
          (fun d m => ArithmeticFunction.vonMangoldt d *
            ArithmeticFunction.vonMangoldt m) =
        ∑ d ∈ Finset.Icc 1 N,
          ArithmeticFunction.vonMangoldt d *
            ∑ m ∈ Finset.Icc 1 (N / d),
              ArithmeticFunction.vonMangoldt m := by
    unfold AnalyticNT.Bilinear.productCutoffSum
    apply Finset.sum_congr rfl
    intro d hd
    rw [Finset.mul_sum]
  rw [hcutoff] at hbal
  rw [hrect]
  rw [hbal]
  congr 1
  · apply congrArg (fun z : Real => 2 * z)
    apply Finset.sum_congr rfl
    intro d hd
    rw [← Finset.mul_sum, sum_vonMangoldt_Icc_eq_psi_nat]
  · have hsquare :
        (∑ d ∈ Finset.Icc 1 (Nat.sqrt N),
          ∑ m ∈ Finset.Icc 1 (Nat.sqrt N),
            ArithmeticFunction.vonMangoldt d *
              ArithmeticFunction.vonMangoldt m) =
          (∑ d ∈ Finset.Icc 1 (Nat.sqrt N),
            ArithmeticFunction.vonMangoldt d) ^ 2 := by
      rw [pow_two, Finset.sum_mul_sum]
    rw [hsquare, sum_vonMangoldt_Icc_eq_psi_nat]

/-- Abel summation for the logarithm-weighted von-Mangoldt sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0eef3f07450b8199acad938667e8229ec1654f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
