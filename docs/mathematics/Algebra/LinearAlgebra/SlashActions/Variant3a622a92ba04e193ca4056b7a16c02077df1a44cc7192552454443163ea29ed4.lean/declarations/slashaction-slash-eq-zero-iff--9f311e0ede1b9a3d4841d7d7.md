# SlashAction.slash_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c085f78c1b970786e5f3f922ec4673bcf35a026",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a622a92ba04e193ca4056b7a16c02077df1a44cc7192552454443163ea29ed4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8179a60c-de3a-3642-ac5a-1c9a4cac4f97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67a1febf-3ba7-ffc8-a0f7-80c4e5cac10e",
  "kind": "lemma",
  "lexical_name": "SlashAction.slash_eq_zero_iff",
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
  "slug": "slashaction-slash-eq-zero-iff--9f311e0ede1b9a3d4841d7d7",
  "source": {
    "blob": "3c085f78c1b970786e5f3f922ec4673bcf35a026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/SlashActions/Variant3a622a92ba04e193ca4056b7a16c02077df1a44cc7192552454443163ea29ed4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f311e0ede1b9a3d4841d7d7c50c966fd6985b79c3131532917eb70924b3550f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SlashActions/Variant3a622a92ba04e193ca4056b7a16c02077df1a44cc7192552454443163ea29ed4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67a1febf-3ba7-ffc8-a0f7-80c4e5cac10e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SlashAction.slash_eq_zero_iff {β G α : Type*} [Group G] [AddGroup α] [SlashAction β G α]
    (k : β) (g : G) (a : α) : a ∣[k] g = 0 ↔ a = 0 := by
  refine ⟨fun h ↦ ?_, by simp +contextual⟩
  apply_fun (· ∣[k] g⁻¹) at h
  simpa [← SlashAction.slash_mul] using h

namespace ModularForm

noncomputable section

variable {k : ℤ} (f : ℍ → ℂ)

section privateSlash

set_option backward.privateInPublic true in
/-- The weight `k` action of `GL (Fin 2) ℝ` on functions `f : ℍ → ℂ`. Invoking this directly is
deprecated; it should always be used via the `SlashAction` instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SlashActions/Variant3a622a92ba04e193ca4056b7a16c02077df1a44cc7192552454443163ea29ed4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SlashActions/Variant3a622a92ba04e193ca4056b7a16c02077df1a44cc7192552454443163ea29ed4.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c085f78c1b970786e5f3f922ec4673bcf35a026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
