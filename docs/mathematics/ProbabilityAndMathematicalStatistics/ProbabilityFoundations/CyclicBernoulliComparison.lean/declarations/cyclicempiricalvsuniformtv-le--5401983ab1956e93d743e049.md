# cyclicEmpiricalVsUniformTV_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21b7ad0f-8207-0d09-0a98-38aeb4f4f123",
  "kind": "theorem",
  "lexical_name": "cyclicEmpiricalVsUniformTV_le",
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
  "slug": "cyclicempiricalvsuniformtv-le--5401983ab1956e93d743e049",
  "source": {
    "blob": "4a4be79226cbaf3133038e1c2564a076e1be8bbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 239,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5401983ab1956e93d743e0496686726ff5b5a7f180b64444d8baff474df3ec67",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21b7ad0f-8207-0d09-0a98-38aeb4f4f123`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicEmpiricalVsUniformTV_le
    (a : ℕ → Bool) (shifts : Finset ℕ) (N r : ℕ)
    (hroots : 0 < (Finset.range N).card)
    (hr : r ≤ N) (hshifts : ∀ h ∈ shifts, h ≤ r) :
    empiricalVsUniformTV (Finset.range N) hroots (cyclicSelected a shifts N) ≤
      Real.sqrt
        (((nonemptyMomentEnergy (Finset.range N) hroots
          (ordinarySelected a shifts) : ℚ) : ℝ)) / 2 +
        (r : ℝ) / (N : ℝ) := by
  classical
  have hN : 0 < N := by
    simpa only [Finset.card_range] using hroots
  have htriangle :=
    empiricalVsUniformTV_triangle (Finset.range N) hroots
      (ordinarySelected a shifts) (cyclicSelected a shifts N)
  have hseam :
      finiteEventTV (Finset.range N)
        (ordinarySelected a shifts) (cyclicSelected a shifts N) ≤
          (r : ℝ) / (N : ℝ) := by
    simpa only [ordinarySelected, cyclicSelected] using
      (finiteTV_ordinary_cyclicWindow_le a shifts N r hN hr hshifts)
  have henergy :=
    empiricalVsUniformTV_le_sqrt_momentEnergy
      (Finset.range N) hroots (ordinarySelected a shifts)
  calc
    empiricalVsUniformTV (Finset.range N) hroots
        (cyclicSelected a shifts N) ≤
      finiteEventTV (Finset.range N)
        (ordinarySelected a shifts) (cyclicSelected a shifts N) +
      empiricalVsUniformTV (Finset.range N) hroots
        (ordinarySelected a shifts) := htriangle
    _ ≤ (r : ℝ) / (N : ℝ) +
      Real.sqrt
        (((nonemptyMomentEnergy (Finset.range N) hroots
          (ordinarySelected a shifts) : ℚ) : ℝ)) / 2 :=
        add_le_add hseam henergy
    _ = _ := by ring

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.CyclicBernoulli
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a4be79226cbaf3133038e1c2564a076e1be8bbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
