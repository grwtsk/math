# mean_dyadicBand_le_nonzeroLowEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a69eddcb-dda6-7bd3-ef7e-0a53385161f1",
  "kind": "theorem",
  "lexical_name": "mean_dyadicBand_le_nonzeroLowEnergy",
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
  "slug": "mean-dyadicband-le-nonzerolowenergy--47bc5610cf63d5b73d7e1232",
  "source": {
    "blob": "4fb5160815c51d110b620c33380cd9677fe7223e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 227,
    "path": "GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47bc5610cf63d5b73d7e1232d175626ac8ba91fc01799c83a58e9a88817e039e",
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

Occurrence: `result:a69eddcb-dda6-7bd3-ef7e-0a53385161f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mean_dyadicBand_le_nonzeroLowEnergy (energy : Ω → ZMod p → ℝ)
    (hzero : ∀ ω, energy ω 0 = 0) (k : ℕ) :
    mean (fun ω => ((dyadicBand (energy ω) k).card : ℝ)) ≤
      mean (fun ω => ((nonzeroLowEnergy energy ((2 : ℝ) ^ k) ω).card : ℝ)) := by
  apply mean_card_le_of_subset
  intro ω χ hχ
  have hb := (Finset.mem_filter.mp hχ).2
  have hz : χ ≠ 0 := by
    intro hz
    rw [hz, hzero ω] at hb
    exact (not_le_of_gt (by positivity : 0 < (2 : ℝ) ^ k)) hb.1
  simp only [nonzeroLowEnergy, Finset.mem_filter, Finset.mem_erase,
    Finset.mem_univ, and_true]
  refine ⟨hz, ?_⟩
  have heq : (2 : ℝ) ^ (k + 1) = 2 * (2 : ℝ) ^ k := by ring
  exact hb.2.trans_eq heq

/-- The source expected `A₀` bound, conditional only on the actual outside-`B`
partition event estimate at threshold two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fb5160815c51d110b620c33380cd9677fe7223e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
