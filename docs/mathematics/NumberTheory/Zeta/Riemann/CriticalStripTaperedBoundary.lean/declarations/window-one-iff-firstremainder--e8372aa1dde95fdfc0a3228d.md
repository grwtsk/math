# window_one_iff_firstRemainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd831517-f3da-1228-82a8-308556153c48",
  "kind": "theorem",
  "lexical_name": "window_one_iff_firstRemainder",
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
  "slug": "window-one-iff-firstremainder--e8372aa1dde95fdfc0a3228d",
  "source": {
    "blob": "ca8be3674bb665ffd299f7323571742654b42fa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 137,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8372aa1dde95fdfc0a3228ddb30211067fdc0302d081798037e64e2e832da0e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd831517-f3da-1228-82a8-308556153c48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem window_one_iff_firstRemainder : WindowRH 1 ↔ NoTargetZero firstRemainder := by
  constructor
  · intro h z hz hzero
    have hpos : 0 < z.im := by linarith [hz.1]
    have hwindow : z ∈ heightWindow 1 := by
      simpa only [heightWindow, Set.mem_setOf_eq, ZetaCommutatorRoot.heightAt_eq_im,
        Nat.cast_one, abs_of_pos hpos] using hz.2.1
    exact (ne_of_gt hz.2.2.1) (h z hwindow hzero)
  · intro h
    apply (window_succ_iff 0).mpr
    refine ⟨windowRH_zero, (shellRH_iff_upperRight_exclusion 0).mpr ?_⟩
    intro z hz hzero
    have hupper : (0 : ℝ) < z.im ∧ z.im ≤ 1 := by
      simpa [upperHeightShell, ZetaCommutatorRoot.heightAt_eq_im] using hz.1
    have hseed : (1 / 3 : ℝ) < z.im := by
      simpa only [ZetaCommutatorRoot.heightAt_eq_im, abs_of_pos hupper.1] using
        nontrivialZetaZero_height_gt_one_third hzero
    exact h z ⟨hseed, hupper.2, hz.2, hzero.mem_critical_strip.2,
      target_right_parabolic hzero⟩ hzero

/-- A downstream certificate must cover the ACTUAL remaining carrier for H. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca8be3674bb665ffd299f7323571742654b42fa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
