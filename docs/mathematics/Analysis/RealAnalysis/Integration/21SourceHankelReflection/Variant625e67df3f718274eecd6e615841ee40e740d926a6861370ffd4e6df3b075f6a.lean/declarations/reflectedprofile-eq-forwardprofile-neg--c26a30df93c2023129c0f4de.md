# reflectedProfile_eq_forwardProfile_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c08d17f7-29df-ecda-bf62-de22a8ccd3a8",
  "kind": "theorem",
  "lexical_name": "reflectedProfile_eq_forwardProfile_neg",
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
  "slug": "reflectedprofile-eq-forwardprofile-neg--c26a30df93c2023129c0f4de",
  "source": {
    "blob": "b64b12c796ba744dddee71eeb1c573d6203a9633",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 279,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant625e67df3f718274eecd6e615841ee40e740d926a6861370ffd4e6df3b075f6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c26a30df93c2023129c0f4de275bb333982c8b1429ea36ac13f586f952ea4ea3",
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

Occurrence: `result:c08d17f7-29df-ecda-bf62-de22a8ccd3a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedProfile_eq_forwardProfile_neg {A : ℝ} (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) (x : ℝ) :
    reflectedProfile A s c x = forwardProfile A s c (-x) := by
  unfold reflectedProfile forwardProfile
  apply Finset.sum_congr rfl
  intro n hn
  congr 1
  rw [show -x - Real.log (n : ℝ) = -(x + Real.log (n : ℝ)) by ring,
    normalized_source_even hA]

/-- An actual normalized source fixture has a negative signed pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant625e67df3f718274eecd6e615841ee40e740d926a6861370ffd4e6df3b075f6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant625e67df3f718274eecd6e615841ee40e740d926a6861370ffd4e6df3b075f6a.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b64b12c796ba744dddee71eeb1c573d6203a9633` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
