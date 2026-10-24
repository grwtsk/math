# prime_larger_slice_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bea6874b-55b4-d283-7c54-f3b46fbd3648",
  "kind": "theorem",
  "lexical_name": "prime_larger_slice_bound",
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
  "slug": "prime-larger-slice-bound--b65026890cdbd15afcf615fc",
  "source": {
    "blob": "4751fbb9ab953803b6d52680c257dac3a7d31ac0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 33,
    "path": "GRWTSK/Analysis/Fourier/Checks/Positive/LargerSliceAntiConcentration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b65026890cdbd15afcf615fc6b1f06813a3ccaa36f945a38e6ec91f256cad3fa",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bea6874b-55b4-d283-7c54-f3b46fbd3648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_larger_slice_bound {p m : ℕ}
    (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hm : 1 ≤ m)
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1)
    (hdensity : (m : ℝ) ≤ (1 - ε) * S.card) (z : ZMod p) :
    (@GRWTSK.ZModSubsetSum.subsetSumProbability
      p ⟨hp.ne_zero⟩ S m z : ℝ) ≤
      1 / p + largerSliceConstant ε * Real.sqrt (Real.log S.card) /
        ((S.card : ℝ) * Real.sqrt m) :=
  GRWTSK.ZModLargerSlice.prime_subsetSumProbability_le_largerSlice
    hp S hn hm ε hε hε1 hdensity z

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/Checks/Positive/LargerSliceAntiConcentration.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4751fbb9ab953803b6d52680c257dac3a7d31ac0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
