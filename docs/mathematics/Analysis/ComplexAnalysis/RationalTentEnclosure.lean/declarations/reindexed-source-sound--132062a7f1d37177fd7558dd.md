# reindexed_source_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:528f424c-dad1-1497-798f-973d26a169c5",
  "kind": "theorem",
  "lexical_name": "reindexed_source_sound",
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
  "slug": "reindexed-source-sound--132062a7f1d37177fd7558dd",
  "source": {
    "blob": "71e536e536f05037b85728a563675bd4aeace688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 144,
    "path": "GRWTSK/Analysis/Complex/RationalTentEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:132062a7f1d37177fd7558ddb6b5cd24ba749e56675d0603c2d78a6524016788",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:528f424c-dad1-1497-798f-973d26a169c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reindexed_source_sound {ι : Type*} [Fintype ι]
    {family : List Member} {x h ε : ℚ} {tr : RationalTentFamily.Trace} {d : CoordinateData}
    (hcheck : checkWithin family x h tr d ε = true)
    (source : ι → ℂ) (multiplicity : ι → ℕ)
    (e : {i // i ∈ Finset.range family.length} ≃ ι)
    (ρ : ℕ → ℂ)
    (hp : ∀ i : {i // i ∈ Finset.range family.length}, ρ i = source (e i))
    (hm : ∀ i : {i // i ∈ Finset.range family.length},
      (memberAt family i).multiplicity = multiplicity (e i))
    (hρ : ∀ i ∈ Finset.range family.length, (ρ i).re ≤ 1)
    (hr : ∀ i ∈ Finset.range family.length,
      ‖ρ i - toComplex (memberAt family i).center‖ ≤ (radiusAt d i : ℝ)) :
    ‖(∑ u : ι, (multiplicity u : ℂ) * tentKernel (x : ℝ) (h : ℝ) (source u)) -
      toComplex (RationalTentFamily.output family tr)‖ ≤ (ε : ℝ) := by
  classical
  have hsum : (∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℂ) *
      tentKernel (x : ℝ) (h : ℝ) (ρ i)) =
      ∑ u : ι, (multiplicity u : ℂ) * tentKernel (x : ℝ) (h : ℝ) (source u) := by
    calc
      _ = ∑ i : {i // i ∈ Finset.range family.length}, ((memberAt family i).multiplicity : ℂ) *
          tentKernel (x : ℝ) (h : ℝ) (ρ i) := (Finset.sum_attach _ _).symm
      _ = ∑ i : {i // i ∈ Finset.range family.length}, (multiplicity (e i) : ℂ) *
          tentKernel (x : ℝ) (h : ℝ) (source (e i)) := by
        apply Finset.sum_congr rfl
        intro i _
        rw [hp i, hm i]
      _ = _ := e.sum_comp (fun u => (multiplicity u : ℂ) *
          tentKernel (x : ℝ) (h : ℝ) (source u))
  rw [← hsum]
  exact checkWithin_sound hcheck ρ hρ hr

end GRWTSK.Analysis.Complex.RationalTentEnclosure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalTentEnclosure.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71e536e536f05037b85728a563675bd4aeace688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
