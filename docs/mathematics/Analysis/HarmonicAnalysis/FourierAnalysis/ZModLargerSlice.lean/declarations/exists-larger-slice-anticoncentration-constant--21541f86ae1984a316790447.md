# exists_larger_slice_anticoncentration_constant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d64d6f5a-cc03-09b6-f068-1904bcb6e1f5",
  "kind": "theorem",
  "lexical_name": "exists_larger_slice_anticoncentration_constant",
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
  "slug": "exists-larger-slice-anticoncentration-constant--21541f86ae1984a316790447",
  "source": {
    "blob": "2ee1212cb57a0641a60c479b37337c31a65d593d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 208,
    "path": "GRWTSK/Analysis/Fourier/ZModLargerSlice.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21541f86ae1984a3167904474306be3614927c31f41a885e7f024b5f656b68b1",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d64d6f5a-cc03-09b6-f068-1904bcb6e1f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_larger_slice_anticoncentration_constant
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1) :
    ∃ C : ℝ, 0 < C ∧
      ∀ (q : ℕ) (hq : q.Prime),
        ∀ (S : Finset (ZMod q)) (k : ℕ),
          2 ≤ S.card →
          1 ≤ k →
          (k : ℝ) ≤ (1 - ε) * S.card →
          ∀ z : ZMod q,
            (@GRWTSK.ZModSubsetSum.subsetSumProbability
              q ⟨hq.ne_zero⟩ S k z : ℝ) ≤
              1 / q +
                C * Real.sqrt (Real.log S.card) /
                  ((S.card : ℝ) * Real.sqrt k) := by
  refine ⟨largerSliceConstant ε, larger_constant_positive hε, ?_⟩
  intro q hq S k hn hk hdensity z
  exact prime_subsetSumProbability_le_largerSlice
    hq S hn hk ε hε hε1 hdensity z

end

end GRWTSK.ZModLargerSlice
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModLargerSlice.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ee1212cb57a0641a60c479b37337c31a65d593d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
