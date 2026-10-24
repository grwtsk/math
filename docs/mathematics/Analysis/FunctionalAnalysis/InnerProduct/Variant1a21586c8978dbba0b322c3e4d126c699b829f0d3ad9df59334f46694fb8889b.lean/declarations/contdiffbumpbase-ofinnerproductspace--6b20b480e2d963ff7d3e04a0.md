# ContDiffBumpBase.ofInnerProductSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8b508926b56402af7ec17c0870bdb0d466b8595bf3f23e0ea34827212af8fb4",
  "kind": "def",
  "lexical_name": "ContDiffBumpBase.ofInnerProductSpace",
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
  "slug": "contdiffbumpbase-ofinnerproductspace--6b20b480e2d963ff7d3e04a0",
  "source": {
    "blob": "55ea8dfd1356d33087ee606ef352e09a6a5d3e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 28,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/InnerProduct/Variant1a21586c8978dbba0b322c3e4d126c699b829f0d3ad9df59334f46694fb8889b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b20b480e2d963ff7d3e04a0f118f67d981c8e1c15c0648fa0b349102ac06999",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/InnerProduct/Variant1a21586c8978dbba0b322c3e4d126c699b829f0d3ad9df59334f46694fb8889b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8b508926b56402af7ec17c0870bdb0d466b8595bf3f23e0ea34827212af8fb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ContDiffBumpBase.ofInnerProductSpace : ContDiffBumpBase E where
  toFun R x := smoothTransition ((R - ‖x‖) / (R - 1))
  mem_Icc _ _ := ⟨smoothTransition.nonneg _, smoothTransition.le_one _⟩
  symmetric _ _ := by simp only [norm_neg]
  smooth := by
    rintro ⟨R, x⟩ ⟨hR : 1 < R, -⟩
    apply ContDiffAt.contDiffWithinAt
    rw [← sub_pos] at hR
    rcases eq_or_ne x 0 with rfl | hx
    · have A : ContinuousAt (fun p : ℝ × E ↦ (p.1 - ‖p.2‖) / (p.1 - 1)) (R, 0) :=
        (continuousAt_fst.sub continuousAt_snd.norm).div
          (continuousAt_fst.sub continuousAt_const) hR.ne'
      have B : ∀ᶠ p in 𝓝 (R, (0 : E)), 1 ≤ (p.1 - ‖p.2‖) / (p.1 - 1) :=
        A.eventually <| le_mem_nhds <| (one_lt_div hR).2 <| sub_lt_sub_left (by simp) _
      refine (contDiffAt_const (c := 1)).congr_of_eventuallyEq <| B.mono fun _ ↦
        smoothTransition.one_of_one_le
    · refine smoothTransition.contDiffAt.comp _ (ContDiffAt.div ?_ ?_ hR.ne')
      · exact contDiffAt_fst.sub (contDiffAt_snd.norm ℝ hx)
      · exact contDiffAt_fst.sub contDiffAt_const
  eq_one _ hR _ hx := smoothTransition.one_of_one_le <| (one_le_div <| sub_pos.2 hR).2 <|
    sub_le_sub_left hx _
  support R hR := by
    ext x
    rw [mem_support, Ne, smoothTransition.zero_iff_nonpos, not_le, mem_ball_zero_iff]
    simp [div_pos_iff, sq_lt_sq, abs_of_pos (one_pos.trans hR), hR, hR.not_lt]

/-- Any inner product space has smooth bump functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/InnerProduct/Variant1a21586c8978dbba0b322c3e4d126c699b829f0d3ad9df59334f46694fb8889b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/InnerProduct/Variant1a21586c8978dbba0b322c3e4d126c699b829f0d3ad9df59334f46694fb8889b.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55ea8dfd1356d33087ee606ef352e09a6a5d3e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
