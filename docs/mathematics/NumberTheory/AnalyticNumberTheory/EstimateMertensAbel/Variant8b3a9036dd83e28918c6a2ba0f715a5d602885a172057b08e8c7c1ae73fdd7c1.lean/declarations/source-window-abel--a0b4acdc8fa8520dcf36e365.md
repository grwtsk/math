# source_window_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e5478b884c6c54c4fa9fe555b47d28ba95530aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16e90b85-0632-7f69-7771-44f4d4797d96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a78637b-95ef-0622-49ba-873755fce79f",
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
  "slug": "source-window-abel--a0b4acdc8fa8520dcf36e365",
  "source": {
    "blob": "8e5478b884c6c54c4fa9fe555b47d28ba95530aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0b4acdc8fa8520dcf36e365bd34f31f1d65f18859a13437f7fb3d6ccf53d3e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a78637b-95ef-0622-49ba-873755fce79f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–158.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e5478b884c6c54c4fa9fe555b47d28ba95530aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
