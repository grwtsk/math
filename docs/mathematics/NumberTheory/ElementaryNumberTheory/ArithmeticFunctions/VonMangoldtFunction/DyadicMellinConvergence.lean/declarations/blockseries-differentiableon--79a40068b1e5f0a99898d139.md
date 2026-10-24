# blockSeries_differentiableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ac4630b-9baf-9912-a89f-1c53cac19b02",
  "kind": "theorem",
  "lexical_name": "blockSeries_differentiableOn",
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
  "slug": "blockseries-differentiableon--79a40068b1e5f0a99898d139",
  "source": {
    "blob": "4476090f7cdaa4ac900e5ef988877bc3f7f56cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 149,
    "path": "GRWTSK/NumberTheory/VonMangoldt/DyadicMellinConvergence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79a40068b1e5f0a99898d1395da66354347c02e658cbeadd9a482347a98502b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ac4630b-9baf-9912-a89f-1c53cac19b02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockSeries_differentiableOn (hE : AllDyadicEnergyBound) :
    DifferentiableOn ℂ blockSeries {s : ℂ | 1/2 < s.re} := by
  intro s hs
  change (1 : ℝ)/2 < s.re at hs
  let σ : ℝ := (s.re+1/2)/2
  let M : ℝ := ‖s‖+1
  let U : Set ℂ := {z : ℂ | σ < z.re ∧ ‖z‖ < M}
  have hσ : 1/2 < σ := by dsimp [σ]; linarith [hs]
  have hM : 0 ≤ M := by dsimp [M]; positivity
  have hsU : s ∈ U := by
    constructor
    · dsimp [σ]; linarith [hs]
    · dsimp [M]; linarith
  have hU : IsOpen U :=
    (isOpen_lt continuous_const Complex.continuous_re).inter
      (isOpen_lt continuous_norm continuous_const)
  obtain ⟨u,hu,hu0,hbound⟩ := uniform_majorant hE hσ hM
  have hsum : DifferentiableOn ℂ
      (fun z => ∑' j, dirichletBlock (dyadicScale j) z) U := by
    apply Complex.differentiableOn_tsum_of_summable_norm hu
      (fun j => (dirichletBlock_differentiable (dyadicScale_pos j)).differentiableOn) hU
    intro j z hz
    exact hbound j z hz.1.le hz.2.le
  have hfinite := dirichletBlock_differentiable (X := 1) (by omega) s
  have htail := hsum.differentiableAt (hU.mem_nhds hsU)
  exact (hfinite.add htail).differentiableWithinAt

/-- Supplies the formerly unproved Mellin identity proposition, in proof source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/VonMangoldt/DyadicMellinConvergence.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4476090f7cdaa4ac900e5ef988877bc3f7f56cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
