# CuspForm.isCuspForm_toModularFormₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77754e63c0c24a90f2de6fd7294bf77059119b4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8e67b77b9386a09c00f6ed38a5e2330992e0b55e20e9d3e4a18321f16f000a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6de47ea-8499-7528-8adf-ed66985bf1b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e2f9d9f-1e24-2fdc-074d-5c8ed0baf30f",
  "kind": "lemma",
  "lexical_name": "CuspForm.isCuspForm_toModularFormₗ",
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
  "slug": "cuspform-iscuspform-tomodularform--e2b0371cab7f4edada19fc4d",
  "source": {
    "blob": "77754e63c0c24a90f2de6fd7294bf77059119b4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variante8e67b77b9386a09c00f6ed38a5e2330992e0b55e20e9d3e4a18321f16f000a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2b0371cab7f4edada19fc4d2b94b03ccb43c8dfd0a90665acac310bba2a4d83",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variante8e67b77b9386a09c00f6ed38a5e2330992e0b55e20e9d3e4a18321f16f000a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e2f9d9f-1e24-2fdc-074d-5c8ed0baf30f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CuspForm.isCuspForm_toModularFormₗ {Γ : Subgroup (GL (Fin 2) ℝ)} [Γ.HasDetOne]
    (f : CuspForm Γ k) : ModularForm.IsCuspForm f.toModularFormₗ := by
  simp [← mem_cuspFormSubmodule_iff, ModularForm.cuspFormSubmodule]

/-- A modular form is a cusp form if and only if it vanishes at every cusp. This is the
general characterization valid for any subgroup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variante8e67b77b9386a09c00f6ed38a5e2330992e0b55e20e9d3e4a18321f16f000a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variante8e67b77b9386a09c00f6ed38a5e2330992e0b55e20e9d3e4a18321f16f000a6.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77754e63c0c24a90f2de6fd7294bf77059119b4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
