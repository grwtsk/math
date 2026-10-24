# prime_subsetSumProbability_le_largerSlice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87c6ef4a-18b9-ae56-861a-a53255917c3c",
  "kind": "theorem",
  "lexical_name": "prime_subsetSumProbability_le_largerSlice",
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
  "slug": "prime-subsetsumprobability-le-largerslice--64b998835cfe597f759a65f5",
  "source": {
    "blob": "2ee1212cb57a0641a60c479b37337c31a65d593d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 191,
    "path": "GRWTSK/Analysis/Fourier/ZModLargerSlice.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64b998835cfe597f759a65f57bbf36ce5e070c7f071a792d4c2dfba699f6c56b",
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

Occurrence: `result:87c6ef4a-18b9-ae56-861a-a53255917c3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_subsetSumProbability_le_largerSlice
    (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hm : 1 ≤ m)
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1)
    (hdensity : (m : ℝ) ≤ (1 - ε) * S.card)
    (z : ZMod p) :
    (@GRWTSK.ZModSubsetSum.subsetSumProbability
      p ⟨hp.ne_zero⟩ S m z : ℝ) ≤
      1 / p +
        largerSliceConstant ε * Real.sqrt (Real.log S.card) /
          ((S.card : ℝ) * Real.sqrt m) := by
  let : NeZero p := ⟨hp.ne_zero⟩
  exact subsetSumProbability_le_largerSlice
    hp S hn hm ε hε hε1 hdensity z

/-- The Corollary 1.4 constant depends only on epsilon and is uniform in the
prime modulus, finite residue set, positive sample size, and target residue. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModLargerSlice.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ee1212cb57a0641a60c479b37337c31a65d593d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
