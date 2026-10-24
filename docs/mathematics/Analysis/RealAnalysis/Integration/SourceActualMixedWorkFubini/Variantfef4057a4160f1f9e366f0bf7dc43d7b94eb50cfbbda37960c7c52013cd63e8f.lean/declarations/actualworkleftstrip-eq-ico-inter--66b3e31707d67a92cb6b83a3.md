# actualWorkLeftStrip_eq_Ico_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79eb81386480ae77cd5b4f82b5d72655b02ad983",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 833,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19e7d31b-e868-5381-1760-f796a67bdf2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c592afb7-0b33-054a-e7cc-4647b631dabf",
  "kind": "theorem",
  "lexical_name": "actualWorkLeftStrip_eq_Ico_inter",
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
  "slug": "actualworkleftstrip-eq-ico-inter--66b3e31707d67a92cb6b83a3",
  "source": {
    "blob": "79eb81386480ae77cd5b4f82b5d72655b02ad983",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 849,
    "line": 833,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantfef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66b3e31707d67a92cb6b83a3284e11a6f5fd1ce0720ff8bac60dfcb62b007508",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantfef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c592afb7-0b33-054a-e7cc-4647b631dabf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 833–849.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualWorkLeftStrip_eq_Ico_inter (A : ℝ) :
    actualWorkLeftStrip A =
      Ico (Real.log (vaughanCutoff A : ℝ) - A)
        (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) - A) ∩
      Iic (A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) := by
  ext v
  change (v ∈ Icc (Real.log (vaughanCutoff A : ℝ) - A)
      (A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) ∧
      v ∉ Icc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) - A)
        (A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) ↔ _
  constructor
  · rintro ⟨hv, hn⟩
    exact ⟨⟨hv.1, lt_of_not_ge (fun h => hn ⟨h, hv.2⟩)⟩, hv.2⟩
  · rintro ⟨⟨hl, hr⟩, hu⟩
    exact ⟨⟨hl, hu⟩, fun h => (not_le_of_gt hr) h.1⟩

/-- The original work equals overlap work plus its unresolved continuous strip contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantfef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantfef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean#L833).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79eb81386480ae77cd5b4f82b5d72655b02ad983` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
