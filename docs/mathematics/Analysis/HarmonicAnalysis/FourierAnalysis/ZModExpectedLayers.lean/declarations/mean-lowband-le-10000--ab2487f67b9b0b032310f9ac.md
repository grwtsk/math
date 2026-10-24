# mean_lowBand_le_10000

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71d0f319-1c81-b1e3-a113-407a78522c0b",
  "kind": "theorem",
  "lexical_name": "mean_lowBand_le_10000",
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
  "slug": "mean-lowband-le-10000--ab2487f67b9b0b032310f9ac",
  "source": {
    "blob": "4fb5160815c51d110b620c33380cd9677fe7223e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 246,
    "path": "GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab2487f67b9b0b032310f9acf75cd17a9d13598158230534d4e27f359b4688f5",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71d0f319-1c81-b1e3-a113-407a78522c0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mean_lowBand_le_10000 [Nonempty Ω] (hp : p.Prime)
    (S : Finset (ZMod p)) (hn : 10 ≤ S.card) (energy : Ω → ZMod p → ℝ)
    (m : ℝ) (hm : (2000 : ℝ) ^ 2 ≤ m) (hmn : m ≤ S.card)
    (hsmall : ∀ χ : ZMod p, χ ≠ 0 →
      χ ∉ smallEnergyFrequencies S m 2000 →
        eventProbability (fun ω => energy ω χ < 2) ≤ 1 / (S.card : ℝ) ^ 9) :
    mean (fun ω => ((lowBand (energy ω)).card : ℝ)) ≤
      1 + 10000 * p / ((S.card : ℝ) * Real.sqrt m) := by
  have h := mean_nonzeroLowEnergy_le_10000 hp S hn energy m 1
    (by norm_num at hm; linarith) hmn (by norm_num) (by norm_num at hm ⊢; linarith)
    (by simpa using hsmall)
  have h' := (mean_lowBand_le_one_add energy).trans (add_le_add le_rfl h)
  simpa using h'

/-- The source expected dyadic-layer bound, conditional only on the actual
outside-`B` concentration estimate for this dyadic threshold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fb5160815c51d110b620c33380cd9677fe7223e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
