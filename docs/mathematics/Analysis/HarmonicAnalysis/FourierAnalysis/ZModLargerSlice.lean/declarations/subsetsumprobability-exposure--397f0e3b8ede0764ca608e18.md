# subsetSumProbability_exposure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31a495ee-7c86-c5d0-fc74-6ef206c1540d",
  "kind": "theorem",
  "lexical_name": "subsetSumProbability_exposure",
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
  "slug": "subsetsumprobability-exposure--397f0e3b8ede0764ca608e18",
  "source": {
    "blob": "2ee1212cb57a0641a60c479b37337c31a65d593d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 33,
    "path": "GRWTSK/Analysis/Fourier/ZModLargerSlice.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:397f0e3b8ede0764ca608e18c5dfaf24b506a6f74873faca20589f5ce0b542ec",
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

Occurrence: `result:31a495ee-7c86-c5d0-fc74-6ef206c1540d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsetSumProbability_exposure
    (S : Finset (ZMod p)) (a b : ℕ)
    (hab : a + b ≤ S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S (a + b) z : ℝ) =
      (∑ A ∈ S.powersetCard a,
        (GRWTSK.ZModSubsetSum.subsetSumProbability
          (S \ A) b (z - ∑ x ∈ A, x) : ℝ)) /
        ((S.powersetCard a).card : ℝ) := by
  have hfiber (T : Finset (ZMod p)) (j : ℕ) (w : ZMod p) :
      GRWTSK.ZModSubsetSum.subsetSumFiber T j w =
        @Finset.filter (Finset (ZMod p))
          (fun R => (∑ x ∈ R, x) = w)
          (fun R => Classical.propDecidable ((∑ x ∈ R, x) = w))
          (T.powersetCard j) := by
    ext R
    simp only [GRWTSK.ZModSubsetSum.subsetSumFiber, Finset.mem_filter]
  unfold GRWTSK.ZModSubsetSum.subsetSumProbability
  push_cast
  simp_rw [hfiber]
  exact GRWTSK.FixedSizeSubsetExposure.sum_union_exposure
    S a b hab (fun x : ZMod p => x) z

/-- Uniform pointwise bounds on actual conditional residual laws average to
the same bound on the original fixed-size subset law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModLargerSlice.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ee1212cb57a0641a60c479b37337c31a65d593d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
