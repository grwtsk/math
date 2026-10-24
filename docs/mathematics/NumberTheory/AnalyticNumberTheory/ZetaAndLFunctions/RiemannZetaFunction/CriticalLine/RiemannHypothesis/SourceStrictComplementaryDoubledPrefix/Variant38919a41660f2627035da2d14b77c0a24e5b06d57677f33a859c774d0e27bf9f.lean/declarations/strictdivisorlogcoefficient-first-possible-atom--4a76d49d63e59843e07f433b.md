# strictDivisorLogCoefficient_first_possible_atom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b55bf4ca-e673-9c44-51a3-6e3d78fa6af2",
  "kind": "theorem",
  "lexical_name": "strictDivisorLogCoefficient_first_possible_atom",
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
  "slug": "strictdivisorlogcoefficient-first-possible-atom--4a76d49d63e59843e07f433b",
  "source": {
    "blob": "a1163f50c6a8c627ee0d0b48f6464e810c87e9c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictComplementaryDoubledPrefix/Variant38919a41660f2627035da2d14b77c0a24e5b06d57677f33a859c774d0e27bf9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a76d49d63e59843e07f433b122c949ab4c4f03fdf215e9ce6887a55afaa88b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictComplementaryDoubledPrefix/Variant38919a41660f2627035da2d14b77c0a24e5b06d57677f33a859c774d0e27bf9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b55bf4ca-e673-9c44-51a3-6e3d78fa6af2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictDivisorLogCoefficient_first_possible_atom (U : ℕ) :
    strictDivisorLogCoefficient U (2 * (U + 1)) =
      realMoebius (U + 1) * Real.log (2 : ℝ) := by
  unfold strictDivisorLogCoefficient
  rw [Finset.sum_eq_single (U + 1, 2)]
  · simp
  · intro dk hdk hne
    by_cases hd : U < dk.1
    · by_cases hk : dk.2 = 1
      · simp [hk]
      · have hk0 := Nat.right_ne_zero_of_mem_divisorsAntidiagonal hdk
        have hk2 : 2 ≤ dk.2 := by omega
        have hnprod := (Nat.mem_divisorsAntidiagonal.mp hdk).1
        have hm := Nat.mul_le_mul_left dk.1 hk2
        rw [hnprod] at hm
        have hd1 : dk.1 = U + 1 := by omega
        have hkprod : (U + 1) * dk.2 = (U + 1) * 2 := by
          simpa only [hd1, Nat.mul_comm] using hnprod
        have hk1 : dk.2 = 2 := Nat.eq_of_mul_eq_mul_left (by omega : 0 < U + 1) hkprod
        exact (hne (Prod.ext hd1 hk1)).elim
    · simp only [if_neg hd]
  · intro hnot
    exfalso
    apply hnot
    exact Nat.mem_divisorsAntidiagonal.mpr ⟨by omega, by omega⟩

end
end FormalResearch.RiemannHypothesis.SourceStrictComplementaryDoubledPrefix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictComplementaryDoubledPrefix/Variant38919a41660f2627035da2d14b77c0a24e5b06d57677f33a859c774d0e27bf9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictComplementaryDoubledPrefix/Variant38919a41660f2627035da2d14b77c0a24e5b06d57677f33a859c774d0e27bf9f.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1163f50c6a8c627ee0d0b48f6464e810c87e9c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
