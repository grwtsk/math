# actualUnitTilt_complex_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25464ac5-c3fa-0215-6fe8-5dd0b78068fd",
  "kind": "theorem",
  "lexical_name": "actualUnitTilt_complex_integrable",
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
  "slug": "actualunittilt-complex-integrable--3b8dab22f9fa39dce2f7916b",
  "source": {
    "blob": "1aad65dbefb73ee8dbe7f683d4bf63775295eabe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variantc00c4aab27f50b3f4524aa3c920bfa4a8e2c954a645ad78c8e6f66dc091f3fb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b8dab22f9fa39dce2f7916b677a4d4c695360625ad7bbc374e1c4f0b46e37c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variantc00c4aab27f50b3f4524aa3c920bfa4a8e2c954a645ad78c8e6f66dc091f3fb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25464ac5-c3fa-0215-6fe8-5dd0b78068fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUnitTilt_complex_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun x => (actualUnitTilt A x : ℂ)) volume := by
  have hp : 0 < A := by linarith
  have hc : Continuous (actualUnitTilt A) :=
    (normalizedTest_contDiff A hp).continuous.mul Real.continuous_exp
  have hs : HasCompactSupport (actualUnitTilt A) :=
    (normalizedTest_hasCompactSupport A hp).mul_right
  exact (Complex.continuous_ofReal.comp hc).integrable_of_hasCompactSupport
    (hs.comp_left (g := Complex.ofReal) (by simp))

/-- The equivalence class has the same genuine whole-line L1 prerequisite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variantc00c4aab27f50b3f4524aa3c920bfa4a8e2c954a645ad78c8e6f66dc091f3fb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variantc00c4aab27f50b3f4524aa3c920bfa4a8e2c954a645ad78c8e6f66dc091f3fb4.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aad65dbefb73ee8dbe7f683d4bf63775295eabe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
