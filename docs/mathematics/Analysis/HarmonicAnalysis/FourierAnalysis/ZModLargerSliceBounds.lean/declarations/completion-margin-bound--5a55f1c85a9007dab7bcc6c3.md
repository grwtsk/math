# completion_margin_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:395cef92-ee67-46dc-72a2-262e3c9fa4a6",
  "kind": "theorem",
  "lexical_name": "completion_margin_bound",
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
  "slug": "completion-margin-bound--5a55f1c85a9007dab7bcc6c3",
  "source": {
    "blob": "a54fcae51d539345f95e852a6623b313c05ada0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 76,
    "path": "GRWTSK/Analysis/Fourier/ZModLargerSliceBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a55f1c85a9007dab7bcc6c39ac68a1c04b67fca721be47bf66be6ef6e0e14bf",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:395cef92-ee67-46dc-72a2-262e3c9fa4a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completion_margin_bound {p : ℕ} [NeZero p]
    (S : Finset (ZMod p)) (m : ℕ) (z : ZMod p)
    (hn : 2 ≤ S.card) (hm : 1 ≤ m)
    {ε : ℝ} (hε : 0 < ε)
    (hmargin : (m : ℝ) ≤ (1 - ε) * S.card) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / (ε * S.card) := by
  have hnR : (0 : ℝ) < S.card := by
    exact_mod_cast (show 0 < S.card by omega)
  have hmnR : (m : ℝ) ≤ S.card := by
    have hnonneg : 0 ≤ ε * (S.card : ℝ) :=
      mul_nonneg hε.le hnR.le
    nlinarith
  have hmn : m ≤ S.card := by exact_mod_cast hmnR
  have hq :=
    GRWTSK.ZModSubsetSum.subsetSumProbability_le_one_div_remaining
      S m z hm hmn
  have hp :
      (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
        1 / ((S.card - m + 1 : ℕ) : ℝ) := by
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_natCast] using
      (Rat.cast_mono (K := ℝ) hq)
  have hden :
      ε * (S.card : ℝ) ≤ ((S.card - m + 1 : ℕ) : ℝ) := by
    rw [Nat.cast_add, Nat.cast_sub hmn, Nat.cast_one]
    nlinarith
  exact hp.trans
    (one_div_le_one_div_of_le (mul_pos hε hnR) hden)

/-- Clearing the two positive denominators reduces the comparison to one
square-root inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModLargerSliceBounds.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a54fcae51d539345f95e852a6623b313c05ada0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
