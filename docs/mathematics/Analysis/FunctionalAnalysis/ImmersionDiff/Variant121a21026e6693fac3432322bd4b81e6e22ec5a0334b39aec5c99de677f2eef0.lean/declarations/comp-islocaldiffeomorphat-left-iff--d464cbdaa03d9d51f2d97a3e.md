# comp_isLocalDiffeomorphAt_left_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bea9969446b772c975bd5fa5ab099acaab0b8ded",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c3f4130-ee42-c19e-e473-1265db4f925f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5dbd02c-1a00-5586-4fe0-80d378faea2c",
  "kind": "lemma",
  "lexical_name": "comp_isLocalDiffeomorphAt_left_iff",
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
  "slug": "comp-islocaldiffeomorphat-left-iff--d464cbdaa03d9d51f2d97a3e",
  "source": {
    "blob": "bea9969446b772c975bd5fa5ab099acaab0b8ded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 136,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d464cbdaa03d9d51f2d97a3e741d04435700dd4947a428fe2e746ef1fba32b30",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5dbd02c-1a00-5586-4fe0-80d378faea2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_isLocalDiffeomorphAt_left_iff {f₀ : N → M} {y : N} (hxy : f₀ y = x)
    (hf₀ : IsLocalDiffeomorphAt J I n f₀ y) (hn : n ≠ 0) :
    IsDiffImmersionAt I I' f x ↔ IsDiffImmersionAt J I' (f ∘ f₀) y := by
  refine ⟨fun hf ↦ hf.comp_isLocalDiffeomorphAt_left hxy hf₀ hn,
    fun h ↦ ?_⟩
  have := (hxy ▸ hf₀.localInverse_left_inv hf₀.localInverse_mem_target)
  apply (h.comp_isLocalDiffeomorphAt_left this
    (hxy ▸ hf₀.localInverse_isLocalDiffeomorphAt) hn).congr
  exact (hxy ▸ hf₀.localInverse_eventuallyEq_right.symm).fun_comp f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bea9969446b772c975bd5fa5ab099acaab0b8ded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
