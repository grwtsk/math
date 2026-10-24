# largeDivisor_eq_strict_coefficient_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:beb7b795-60b3-e624-fd35-93a601705daf",
  "kind": "theorem",
  "lexical_name": "largeDivisor_eq_strict_coefficient_sum",
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
  "slug": "largedivisor-eq-strict-coefficient-sum--54307c71116b280aa921138d",
  "source": {
    "blob": "957b2c2af82d0fc2b342824ac33003ecadd4612d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54307c71116b280aa921138dd3f714571184a9d028e4d7bb6f4954e9b5f84492",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beb7b795-60b3-e624-fd35-93a601705daf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem largeDivisor_eq_strict_coefficient_sum (A : ℝ) :
    largeDivisorMobiusMoment A =
      ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
        strictDivisorLogCoefficient (vaughanCutoff A) n * plainProfile A 1 n := by
  have he : largeDivisorMobiusMoment A =
      ∑ n ∈ Finset.Icc 2 (sourceKernelCutoff A),
        strictDivisorLogCoefficient (vaughanCutoff A) n * plainProfile A 1 n := by
    unfold largeDivisorMobiusMoment primePowerInventory
    apply Finset.sum_congr rfl
    intro n hn
    rw [plainProfile_natural_eq A
      (by have := (Finset.mem_Icc.mp hn).1; omega : 0 < n)]
    unfold strictDivisorLogCoefficient
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro dk _
    unfold mobiusLogTerm
    by_cases hd : vaughanCutoff A < dk.1
    · have hr := (strict_cutoff_iff A dk.1).mp hd
      simp [hd, hr, realMoebius]
    · have hr : ¬ A ^ 2 < (dk.1 : ℝ) := by
        exact fun hr => hd ((strict_cutoff_iff A dk.1).mpr hr)
      simp [hd, hr]
  rw [he]
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Icc.mp hn).1; omega,
      (Finset.mem_Icc.mp hn).2⟩
  · intro n hn hnnot
    have hn1 : n = 1 := by
      simp only [Finset.mem_Icc] at hn hnnot
      omega
    subst n
    rw [strictDivisorLogCoefficient_one, zero_mul]

/-- Literal complete L-B is the unchanged strict coefficient inventory, including the unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957b2c2af82d0fc2b342824ac33003ecadd4612d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
