# forwardProfile_hasCompactSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d64126a9-133d-881e-6c06-9ebb0fd95d22",
  "kind": "theorem",
  "lexical_name": "forwardProfile_hasCompactSupport",
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
  "slug": "forwardprofile-hascompactsupport--4e9d68404af67e678370a8a2",
  "source": {
    "blob": "b64b12c796ba744dddee71eeb1c573d6203a9633",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 89,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant625e67df3f718274eecd6e615841ee40e740d926a6861370ffd4e6df3b075f6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e9d68404af67e678370a8a29d083af0e79b3c414296890ceddf48518521667e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant625e67df3f718274eecd6e615841ee40e740d926a6861370ffd4e6df3b075f6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d64126a9-133d-881e-6c06-9ebb0fd95d22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardProfile_hasCompactSupport {A : ℝ} (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) : HasCompactSupport (forwardProfile A s c) := by
  unfold forwardProfile
  have hs := HasCompactSupport.finset_sum (s := s) (f := fun m x ↦
    c m * normalizedTest explicitSecondDerivative A (x - Real.log (m : ℝ))) (fun m _ ↦
      ((normalizedTest_hasCompactSupport A hA).comp_homeomorph
        (Homeomorph.subRight (Real.log (m : ℝ)))).mul_left)
  convert hs using 1 <;> try rfl
  ext x
  simp only [Finset.sum_apply]

/-- The opposite shifts also give a compactly supported finite profile. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant625e67df3f718274eecd6e615841ee40e740d926a6861370ffd4e6df3b075f6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant625e67df3f718274eecd6e615841ee40e740d926a6861370ffd4e6df3b075f6a.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b64b12c796ba744dddee71eeb1c573d6203a9633` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
