# subsetSumProbability_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5fd5089-b2f6-f8cc-3ab7-ef98c1d8d34e",
  "kind": "theorem",
  "lexical_name": "subsetSumProbability_total",
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
  "slug": "subsetsumprobability-total--44615429af976f976aeea685",
  "source": {
    "blob": "5e9d5844046328d25132c83c7003c192e820123b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 138,
    "path": "GRWTSK/Analysis/Fourier/ZModSubsetSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44615429af976f976aeea6855117c8734cd1654eedd4d4dd53dc2d0b544b5149",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5fd5089-b2f6-f8cc-3ab7-ef98c1d8d34e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsetSumProbability_total {p : ℕ} [NeZero p]
    (S : Finset (ZMod p)) (m : ℕ) (hm : m ≤ S.card) :
    ∑ z : ZMod p, subsetSumProbability S m z = 1 := by
  have hcount : ∑ z : ZMod p, (subsetSumFiber S m z).card = (S.powersetCard m).card := by
    symm
    apply Finset.card_eq_sum_card_fiberwise (f := fun R : Finset (ZMod p) => ∑ x ∈ R, x)
    intro R _
    exact Finset.mem_univ _
  unfold subsetSumProbability
  rw [← Finset.sum_div]
  have hcast : ∑ z : ZMod p, ((subsetSumFiber S m z).card : ℚ) =
      ((S.powersetCard m).card : ℚ) := by exact_mod_cast hcount
  rw [hcast]
  have hn : ((S.powersetCard m).card : ℚ) ≠ 0 := by
    rw [fixed_size_space_card]
    exact_mod_cast ne_of_gt (Nat.choose_pos hm)
  exact div_self hn

/-- Separating the trivial frequency identifies exactly the remaining analytic
obligation for any normalized finite law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModSubsetSum.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e9d5844046328d25132c83c7003c192e820123b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
