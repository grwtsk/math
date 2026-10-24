# integral_tsum_occurrences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "76b2ad5ffe2373e33cd15334a5f0a9a5b7216591",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 530,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d166f3d-74ba-53ba-f518-498274956f77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76f31287-4a1c-41c0-64b5-64dfe6676e83",
  "kind": "theorem",
  "lexical_name": "integral_tsum_occurrences",
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
  "slug": "integral-tsum-occurrences--b5ab7066ca8ee848fc6594dc",
  "source": {
    "blob": "76b2ad5ffe2373e33cd15334a5f0a9a5b7216591",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 530,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Variant3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5ab7066ca8ee848fc6594dcb5272d1f19cec8dbaae83c2c85460bafc602f43d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Variant3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76f31287-4a1c-41c0-64b5-64dfe6676e83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_tsum_occurrences
    (s : ℂ) (hs : 1 < s.re) :
    (∫ A in Ioi (1 : ℝ),
      ∑' o : ZeroOccurrence,
        occurrenceIntegrand s o A) =
      ∑' o : ZeroOccurrence,
        equation20Summand (shiftedValue o) s := by
  rw [← integral_tsum_of_summable_integral_norm
    (F := fun o A ↦ occurrenceIntegrand s o A)
    (fun o ↦ occurrence_integrable o s hs)
    (integral_norms_summable s hs)]
  unfold occurrenceIntegrand
  simp_rw [integral_occurrence _ s hs]

/-- The corresponding extended norm integrals have finite total mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Variant3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Variant3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260f.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76b2ad5ffe2373e33cd15334a5f0a9a5b7216591` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
