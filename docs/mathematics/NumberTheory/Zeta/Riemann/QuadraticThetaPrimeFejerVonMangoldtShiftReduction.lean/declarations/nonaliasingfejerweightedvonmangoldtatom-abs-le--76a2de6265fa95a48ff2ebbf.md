# nonAliasingFejerWeightedVonMangoldtAtom_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8933381f-e420-7fd8-b4e4-7c0192c9718c",
  "kind": "theorem",
  "lexical_name": "nonAliasingFejerWeightedVonMangoldtAtom_abs_le",
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
  "slug": "nonaliasingfejerweightedvonmangoldtatom-abs-le--76a2de6265fa95a48ff2ebbf",
  "source": {
    "blob": "c0157897853716e8630663f1f070cd3050ee87d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 177,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76a2de6265fa95a48ff2ebbff275d1f7175a4f2fc7bdcb13aa86095ed9f72538",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8933381f-e420-7fd8-b4e4-7c0192c9718c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonAliasingFejerWeightedVonMangoldtAtom_abs_le
    {X N m n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hn : n ∈ fejerOctaveIndexSet X) :
    |nonAliasingFejerWeightedVonMangoldtAtom X N m n| ≤
      1 + Real.log (((4 * X : ℕ) : ℝ)) := by
  have hw0 :=
    nonAliasingFejerPrefixWeight_nonnegative
      hreg hm0 hm1 hn
  have hw1 :=
    nonAliasingFejerPrefixWeight_le_one
      hreg hm0 hm1 hn
  have hnI := Finset.mem_Ioc.mp hn
  have hnpos : 0 < n := by omega
  have hlogUpper :
      Real.log (n : ℝ) ≤
        Real.log (((4 * X : ℕ) : ℝ)) := by
    exact Real.log_le_log
      (by exact_mod_cast hnpos)
      (by exact_mod_cast hnI.2)
  have hΛ0 :
      0 ≤ ArithmeticFunction.vonMangoldt n :=
    ArithmeticFunction.vonMangoldt_nonneg
  have hΛlog :
      ArithmeticFunction.vonMangoldt n ≤
        Real.log (n : ℝ) :=
    ArithmeticFunction.vonMangoldt_le_log
  unfold nonAliasingFejerWeightedVonMangoldtAtom
    centeredVonMangoldtAtom
  rw [abs_mul, abs_of_nonneg hw0]
  calc
    nonAliasingFejerPrefixWeight X N m n *
        |ArithmeticFunction.vonMangoldt n - 1|
      ≤
    1 * |ArithmeticFunction.vonMangoldt n - 1| := by
      exact mul_le_mul_of_nonneg_right hw1 (abs_nonneg _)
    _ = |ArithmeticFunction.vonMangoldt n - 1| := by ring
    _ ≤ ArithmeticFunction.vonMangoldt n + 1 := by
      calc
        |ArithmeticFunction.vonMangoldt n - 1|
          ≤ |ArithmeticFunction.vonMangoldt n| + |(1 : ℝ)| :=
            abs_sub _ _
        _ = ArithmeticFunction.vonMangoldt n + 1 := by
          rw [abs_of_nonneg hΛ0]
          norm_num
    _ ≤ 1 + Real.log (((4 * X : ℕ) : ℝ)) := by
      linarith

/-- The weighted correction also lies under the safe logarithmic envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0157897853716e8630663f1f070cd3050ee87d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
