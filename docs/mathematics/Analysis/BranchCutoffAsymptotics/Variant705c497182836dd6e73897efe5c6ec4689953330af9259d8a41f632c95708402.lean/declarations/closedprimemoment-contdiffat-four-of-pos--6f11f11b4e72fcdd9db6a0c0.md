# closedPrimeMoment_contDiffAt_four_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1858aa5d-8cc4-932e-8c34-59d63bc85b7a",
  "kind": "theorem",
  "lexical_name": "closedPrimeMoment_contDiffAt_four_of_pos",
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
  "slug": "closedprimemoment-contdiffat-four-of-pos--6f11f11b4e72fcdd9db6a0c0",
  "source": {
    "blob": "a8cb208725e277b6a23bf0a00ace611e38ae0f9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 169,
    "path": "GRWTSK/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f11f11b4e72fcdd9db6a0c0478b270f9d645103c24c9eed05ac9fa860c4eadf",
  "verification": {
    "reference": "docs/verification/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1858aa5d-8cc4-932e-8c34-59d63bc85b7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMoment_contDiffAt_four_of_pos {x : ℝ} (hx : 0 < x) :
    ContDiffAt ℝ 4 closedPrimeMoment x := by
  let N := ⌊Real.exp (2 * x)⌋₊ + 1
  have hexp : Real.exp (2 * x) < (N + 1 : ℕ) := by
    dsimp [N]
    norm_num only [Nat.cast_add, Nat.cast_one]
    linarith [Nat.lt_floor_add_one (Real.exp (2 * x))]
  have hlog := Real.log_lt_log (Real.exp_pos (2 * x)) hexp
  rw [Real.log_exp] at hlog
  have he := closedPrimeMoment_eventually_eq_fixed_sum hx
    (by linarith : x < Real.log (N + 1 : ℕ) / 2)
  have hp : ContDiffAt ℝ 4 (partialMoment N) x := by
    unfold partialMoment
    apply ContDiffAt.sum
    intro n _hn
    exact primePowerTerm_contDiffAt_four_of_pos n hx
  exact hp.congr_of_eventuallyEq he

/-- The complete unchanged source is C⁴ on its entire positive-scale domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8cb208725e277b6a23bf0a00ace611e38ae0f9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
