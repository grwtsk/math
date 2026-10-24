# isSplittingField_iff_intermediateField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b49308aab5c29f3acf7e23442ee5f7338147dfe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5e154c2b8caec6c66c6746ac8005a63883869832f35da81f600651f337fc390.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a8f9d19-0d40-6369-10f1-185d1f9b4078",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd0289a3-5dd4-695e-df12-a76c287a4722",
  "kind": "theorem",
  "lexical_name": "isSplittingField_iff_intermediateField",
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
  "slug": "issplittingfield-iff-intermediatefield--261447806262582f40dd6d2b",
  "source": {
    "blob": "9b49308aab5c29f3acf7e23442ee5f7338147dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 162,
    "path": "GRWTSK/Algebra/IsSplittingField/Varianta5e154c2b8caec6c66c6746ac8005a63883869832f35da81f600651f337fc390.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:261447806262582f40dd6d2b9f24716c19f853439fa03b4f451d6a0eccb1db45",
  "verification": {
    "reference": "docs/verification/Algebra/IsSplittingField/Varianta5e154c2b8caec6c66c6746ac8005a63883869832f35da81f600651f337fc390.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd0289a3-5dd4-695e-df12-a76c287a4722`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSplittingField_iff_intermediateField : p.IsSplittingField K L ↔
    p.Splits (algebraMap K L) ∧ IntermediateField.adjoin K (p.rootSet L) = ⊤ := by
  rw [← IntermediateField.toSubalgebra_injective.eq_iff,
      IntermediateField.adjoin_algebraic_toSubalgebra fun _ ↦ isAlgebraic_of_mem_rootSet]
  exact ⟨fun ⟨spl, adj⟩ ↦ ⟨spl, adj⟩, fun ⟨spl, adj⟩ ↦ ⟨spl, adj⟩⟩

-- Note: p.Splits (algebraMap F E) also works
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsSplittingField/Varianta5e154c2b8caec6c66c6746ac8005a63883869832f35da81f600651f337fc390.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsSplittingField/Varianta5e154c2b8caec6c66c6746ac8005a63883869832f35da81f600651f337fc390.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b49308aab5c29f3acf7e23442ee5f7338147dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
