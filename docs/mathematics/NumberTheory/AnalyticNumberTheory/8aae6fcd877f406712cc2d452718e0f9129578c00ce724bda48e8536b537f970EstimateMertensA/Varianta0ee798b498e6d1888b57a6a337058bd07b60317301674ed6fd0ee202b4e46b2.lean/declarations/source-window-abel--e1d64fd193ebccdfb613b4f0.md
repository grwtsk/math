# source_window_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d7e9279-bcc5-babc-468a-38d420c0badd",
  "kind": "theorem",
  "lexical_name": "source_window_abel",
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
  "slug": "source-window-abel--e1d64fd193ebccdfb613b4f0",
  "source": {
    "blob": "2fdcb8b0e9e1880c96bc48d4314d9ff5605a3612",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 125,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1d64fd193ebccdfb613b4f08d22c482bdcfbbff283822c08e5f115fdaad6808",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d7e9279-bcc5-babc-468a-38d420c0badd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_window_abel
    (A : ℝ) (hA : 1 ≤ A)
    (Phi : ℝ → ℝ)
    (hPhiDiff :
      ∀ x ∈ Icc (sourceLower A) (sourceUpper A),
        DifferentiableAt ℝ Phi x)
    (hPhiInt :
      IntegrableOn (deriv Phi)
        (Icc (sourceLower A) (sourceUpper A))) :
    (∑ d ∈ Finset.Ioc
        ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊,
      realMoebius d * Phi d) =
      Phi (sourceUpper A) * mertens (sourceUpper A) -
        Phi (sourceLower A) * mertens (sourceLower A) +
        mertensKernelIntegral A Phi := by
  have hLower : 0 ≤ sourceLower A := by
    unfold sourceLower
    positivity
  have hOrder :
      sourceLower A ≤ sourceUpper A := by
    unfold sourceLower sourceUpper
    have hApos : 0 < A := by linarith
    have hlog : Real.log A ≤ A - 1 :=
      Real.log_le_sub_one_of_pos hApos
    calc
      A ^ 2 =
          Real.exp (Real.log A + Real.log A) := by
        rw [Real.exp_add, Real.exp_log hApos, pow_two]
      _ = Real.exp (2 * Real.log A) := by
        congr 1
        ring
      _ ≤ Real.exp (2 * A) := by
        apply Real.exp_le_exp.mpr
        linarith
  rw [mobius_abel_commuted hLower hOrder
    Phi hPhiDiff hPhiInt]
  unfold mertensKernelIntegral
  ring

/-- If the source kernel vanishes at the strict upper boundary, only the
closed-right lower endpoint remains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fdcb8b0e9e1880c96bc48d4314d9ff5605a3612` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
