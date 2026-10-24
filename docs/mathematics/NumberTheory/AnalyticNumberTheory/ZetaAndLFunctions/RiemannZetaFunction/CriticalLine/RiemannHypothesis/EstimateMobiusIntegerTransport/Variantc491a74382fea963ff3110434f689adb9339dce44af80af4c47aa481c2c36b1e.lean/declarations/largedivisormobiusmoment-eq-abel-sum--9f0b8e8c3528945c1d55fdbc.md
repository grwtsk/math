# largeDivisorMobiusMoment_eq_abel_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcccc485caa4689e37a81696df13246c4b7ba9be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8671c23b-9f1b-85f9-4b64-351cd40b37c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d281100f-a9e0-d081-dcbe-b2f16fa9cf09",
  "kind": "theorem",
  "lexical_name": "largeDivisorMobiusMoment_eq_abel_sum",
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
  "slug": "largedivisormobiusmoment-eq-abel-sum--9f0b8e8c3528945c1d55fdbc",
  "source": {
    "blob": "fcccc485caa4689e37a81696df13246c4b7ba9be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 288,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f0b8e8c3528945c1d55fdbc5dd3888d7fe7f91e9d0720e62c3073bef9b05e80",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d281100f-a9e0-d081-dcbe-b2f16fa9cf09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem largeDivisorMobiusMoment_eq_abel_sum
    (A : ℝ) (hA : 1 ≤ A) :
    largeDivisorMobiusMoment A =
      ∑ d ∈ Finset.Ioc
        ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊,
        realMoebius d * sourceMobiusKernel A d := by
  symm
  let D : Finset ℕ :=
    Finset.Ioc ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊
  have hagree := sourceMobiusKernel_integerAgreement A hA
  calc
    (∑ d ∈ D, realMoebius d * sourceMobiusKernel A d) =
        ∑ d ∈ D, realMoebius d *
          (∑ n ∈ primePowerInventory (2 * A),
            ∑ dk ∈ n.divisorsAntidiagonal,
              if dk.1 = d
              then Real.log dk.2 * closedPrimeWeight A n
              else 0) := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [hagree d hd]
    _ =
        ∑ n ∈ primePowerInventory (2 * A),
          ∑ dk ∈ n.divisorsAntidiagonal,
            ∑ d ∈ D,
              realMoebius d *
                (if dk.1 = d
                then Real.log dk.2 * closedPrimeWeight A n
                else 0) := by
      simp_rw [Finset.mul_sum]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n hn
      rw [Finset.sum_comm]
    _ = largeDivisorMobiusMoment A := by
      unfold largeDivisorMobiusMoment mobiusLogTerm realMoebius
      apply Finset.sum_congr rfl
      intro n hn
      apply Finset.sum_congr rfl
      intro dk hdk
      by_cases hlarge : A ^ 2 < (dk.1 : ℝ)
      · have hmem :
            dk.1 ∈ D := by
          unfold D
          exact
            (first_factor_mem_abel_window_iff
              A hA n hn dk hdk).2 hlarge
        rw [Finset.sum_eq_single dk.1]
        · simp [hlarge]
        · intro d hd hne
          simp [hne]
        · simp [hmem]
      · have hnot : dk.1 ∉ D := by
          unfold D
          intro hm
          exact hlarge
            ((first_factor_mem_abel_window_iff
              A hA n hn dk hdk).1 hm)
        have hz :
            (∑ d ∈ D,
              (((ArithmeticFunction.moebius d : ℤ) : ℝ) *
                (if dk.1 = d
                  then Real.log dk.2 * closedPrimeWeight A n
                  else 0))) = 0 := by
          apply Finset.sum_eq_zero
          intro d hd
          have hne : dk.1 ≠ d := by
            intro h
            apply hnot
            simpa [h] using hd
          simp [hne]
        rw [hz]
        simp [hlarge]

/-- Exact complete large-divisor Mertens identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcccc485caa4689e37a81696df13246c4b7ba9be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
