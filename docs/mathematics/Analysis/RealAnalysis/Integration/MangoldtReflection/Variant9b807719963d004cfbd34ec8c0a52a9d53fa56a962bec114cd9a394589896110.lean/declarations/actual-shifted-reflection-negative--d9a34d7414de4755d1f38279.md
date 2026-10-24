# actual_shifted_reflection_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d916341e5b4a0cfbf75ae1de1064cdfd06d4a97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b807719963d004cfbd34ec8c0a52a9d53fa56a962bec114cd9a394589896110.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:660b016f-9b5e-45b9-65dd-3428c4842863",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96a8f476-f4c6-145a-d7d8-454e0290f131",
  "kind": "theorem",
  "lexical_name": "actual_shifted_reflection_negative",
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
  "slug": "actual-shifted-reflection-negative--d9a34d7414de4755d1f38279",
  "source": {
    "blob": "4d916341e5b4a0cfbf75ae1de1064cdfd06d4a97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflection/Variant9b807719963d004cfbd34ec8c0a52a9d53fa56a962bec114cd9a394589896110.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9a34d7414de4755d1f38279c6040656b433edcfcd0fae0fb7c81fd00bd72549",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MangoldtReflection/Variant9b807719963d004cfbd34ec8c0a52a9d53fa56a962bec114cd9a394589896110.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96a8f476-f4c6-145a-d7d8-454e0290f131`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_shifted_reflection_negative (A : ℝ) (hA : 1 ≤ A) :
    ∃ a : ℝ, 0 < a ∧ a < A ∧
      (∫ x : ℝ, normalizedTest explicitSecondDerivative A (x + a) *
        normalizedTest explicitSecondDerivative A (-x + a)) < 0 := by
  obtain ⟨t, ht0, htA, ht⟩ := CorrelationSign.actual_correlation_negative_interior A hA
  refine ⟨t / 2, by linarith, by linarith, ?_⟩
  have hr := shifted_source_reflection A (t / 2) (t / 2) 0 hA
  simp only [zero_sub, zero_add] at hr
  rw [hr]
  convert ht using 1
  congr 1
  ring

end
end MangoldtReflectionScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MangoldtReflection/Variant9b807719963d004cfbd34ec8c0a52a9d53fa56a962bec114cd9a394589896110.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflection/Variant9b807719963d004cfbd34ec8c0a52a9d53fa56a962bec114cd9a394589896110.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d916341e5b4a0cfbf75ae1de1064cdfd06d4a97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
