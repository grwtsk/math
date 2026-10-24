# AnalyticSet.iInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ced734ca-b33d-f0e8-cef1-df78523d4cc5",
  "kind": "theorem",
  "lexical_name": "AnalyticSet.iInter",
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
  "slug": "analyticset-iinter--565edfffe3578cf94032c962",
  "source": {
    "blob": "13d22689357e296d272a36ec51174a0849e49fa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 152,
    "path": "GRWTSK/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:565edfffe3578cf94032c9626452672d47987aad4c45c249a5763c53778f5d2b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ced734ca-b33d-f0e8-cef1-df78523d4cc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticSet.iInter [hι : Nonempty ι] [Countable ι] [T2Space α] {s : ι → Set α}
    (hs : ∀ n, AnalyticSet (s n)) : AnalyticSet (⋂ n, s n) := by
  rcases hι with ⟨i₀⟩
  /- For the proof, write each `s n` as the continuous image under a map `f n` of a
    Polish space `β n`. The product space `γ = Π n, β n` is also Polish, and so is the subset
    `t` of sequences `x n` for which `f n (x n)` is independent of `n`. The set `t` is Polish, and
    the range of `x ↦ f 0 (x 0)` on `t` is exactly `⋂ n, s n`, so this set is analytic. -/
  choose β hβ h'β f f_cont f_range using fun n =>
    analyticSet_iff_exists_polishSpace_range.1 (hs n)
  skip
  let γ := ∀ n, β n
  let t : Set γ := ⋂ n, { x | f n (x n) = f i₀ (x i₀) }
  have t_closed : IsClosed t := by
    apply isClosed_iInter
    intro n
    exact
      isClosed_eq ((f_cont n).comp (continuous_apply n)) ((f_cont i₀).comp (continuous_apply i₀))
  haveI : PolishSpace t := t_closed.polishSpace
  let F : t → α := fun x => f i₀ ((x : γ) i₀)
  have F_cont : Continuous F := (f_cont i₀).comp ((continuous_apply i₀).comp continuous_subtype_val)
  have F_range : range F = ⋂ n : ι, s n := by
    apply Subset.antisymm
    · rintro y ⟨x, rfl⟩
      refine mem_iInter.2 fun n => ?_
      have : f n ((x : γ) n) = F x := (mem_iInter.1 x.2 n : _)
      rw [← this, ← f_range n]
      exact mem_range_self _
    · intro y hy
      have A : ∀ n, ∃ x : β n, f n x = y := by
        intro n
        rw [← mem_range, f_range n]
        exact mem_iInter.1 hy n
      choose x hx using A
      have xt : x ∈ t := by
        refine mem_iInter.2 fun n => ?_
        simp [hx]
      refine' ⟨⟨x, xt⟩, _⟩
      exact hx i₀
  rw [← F_range]
  exact analyticSet_range_of_polishSpace F_cont
#align measure_theory.analytic_set.Inter MeasureTheory.AnalyticSet.iInter

/-- A countable union of analytic sets is analytic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13d22689357e296d272a36ec51174a0849e49fa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
