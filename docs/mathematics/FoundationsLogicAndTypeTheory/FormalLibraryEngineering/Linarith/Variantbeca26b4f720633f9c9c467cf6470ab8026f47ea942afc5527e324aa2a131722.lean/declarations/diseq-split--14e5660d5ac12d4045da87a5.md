# diseq_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75916d7f6091b36000ada9fdc4c37859979ae3a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 307,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/beca26b4f720633f9c9c467cf6470ab8026f47ea942afc5527e324aa2a131722.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:858cc545-4d14-1c91-361d-a0927e127dba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a54d8c8-028b-0ad5-a4f8-3a328989baf1",
  "kind": "theorem",
  "lexical_name": "diseq_split",
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
  "slug": "diseq-split--14e5660d5ac12d4045da87a5",
  "source": {
    "blob": "75916d7f6091b36000ada9fdc4c37859979ae3a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 307,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variantbeca26b4f720633f9c9c467cf6470ab8026f47ea942afc5527e324aa2a131722.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14e5660d5ac12d4045da87a536a0d9dbc2f3004dbd6fe725c52d65c6cb64f407",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variantbeca26b4f720633f9c9c467cf6470ab8026f47ea942afc5527e324aa2a131722.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a54d8c8-028b-0ad5-a4f8-3a328989baf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diseq_split {α} [IntModule α] [LE α] [LT α] [LawfulOrderLT α] [IsLinearOrder α] [OrderedAdd α] (ctx : Context α) (p₁ p₂ : Poly)
    : diseq_split_cert p₁ p₂ → p₁.denote' ctx ≠ 0 → p₁.denote' ctx < 0 ∨ p₂.denote' ctx < 0 := by
  simp [diseq_split_cert]; intro _ h₁; subst p₂; simp
  cases LinearOrder.trichotomy (p₁.denote ctx) 0
  next h => exact Or.inl h
  next h =>
    apply Or.inr
    simp [h₁] at h
    rw [← neg_pos_iff, neg_zsmul, neg_neg, one_zsmul]; assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variantbeca26b4f720633f9c9c467cf6470ab8026f47ea942afc5527e324aa2a131722.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variantbeca26b4f720633f9c9c467cf6470ab8026f47ea942afc5527e324aa2a131722.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75916d7f6091b36000ada9fdc4c37859979ae3a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
