# atom_six_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ddce6306569ccd4cca56235d51c65ec9c70b056f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/Moebius/CompositeActivationExamples.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:574473c4-ac2b-ca32-53b1-c0f3fe87f9f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7e15a58-1bff-174a-65b9-f1cfae796865",
  "kind": "theorem",
  "lexical_name": "atom_six_positive",
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
  "slug": "atom-six-positive--e38cadb70d6cfb8ab9923047",
  "source": {
    "blob": "ddce6306569ccd4cca56235d51c65ec9c70b056f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 99,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompositeActivationExamples/Variantc4dcc7c6512afd55bc7fbfbeb1c32bd56024273c1eb185bb3f1b1b1d2b680f0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e38cadb70d6cfb8ab9923047de0289e5af2aab3ac1a7450ac39afd4d97c541ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompositeActivationExamples/Variantc4dcc7c6512afd55bc7fbfbeb1c32bd56024273c1eb185bb3f1b1b1d2b680f0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7e15a58-1bff-174a-65b9-f1cfae796865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atom_six_positive {u : ℝ} (hu : Real.log 6 < u) : 0 < atom 6 u := by
  have hz := atom_entry_zero (by decide : 0<6)
  have he : Real.exp (-Real.log (6:ℝ)/2) = (Real.sqrt (6:ℝ))⁻¹ := by
    simp only [atom,le_refl,if_true] at hz
    linarith
  have hlt := Real.exp_lt_exp.mpr (show -u/2 < -Real.log (6:ℝ)/2 by linarith)
  rw [he] at hlt
  simp only [atom,Nat.cast_ofNat,if_pos hu.le]
  linarith

/-- A genuine positive composite bridge on the current terminal interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompositeActivationExamples/Variantc4dcc7c6512afd55bc7fbfbeb1c32bd56024273c1eb185bb3f1b1b1d2b680f0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompositeActivationExamples/Variantc4dcc7c6512afd55bc7fbfbeb1c32bd56024273c1eb185bb3f1b1b1d2b680f0f.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddce6306569ccd4cca56235d51c65ec9c70b056f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
