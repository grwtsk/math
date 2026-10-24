# surjective_isStableUnderBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6158b94c50ed03002d47634124dbfc8875521ba6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:120a8704-505e-5ec7-6bb1-159e6778b00e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:065df3bc-fa35-e284-93d5-7977d89f1da8",
  "kind": "theorem",
  "lexical_name": "surjective_isStableUnderBaseChange",
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
  "slug": "surjective-isstableunderbasechange--33dc7d6e7242b97c383bf627",
  "source": {
    "blob": "6158b94c50ed03002d47634124dbfc8875521ba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 44,
    "path": "GRWTSK/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33dc7d6e7242b97c383bf627d6f3e01a15f664aa3865601a40f5e8c470a10122",
  "verification": {
    "reference": "docs/verification/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:065df3bc-fa35-e284-93d5-7977d89f1da8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_isStableUnderBaseChange : IsStableUnderBaseChange surjective := by
  refine IsStableUnderBaseChange.mk surjective_respectsIso ?_
  classical
  introv h x
  induction x with
  | zero => exact ⟨0, map_zero _⟩
  | tmul x y =>
    obtain ⟨y, rfl⟩ := h y; use y • x; dsimp
    rw [TensorProduct.smul_tmul, Algebra.algebraMap_eq_smul_one]
  | add x y ex ey => obtain ⟨⟨x, rfl⟩, ⟨y, rfl⟩⟩ := ex, ey; exact ⟨x + y, map_add _ x y⟩

/-- `M⁻¹R →+* M⁻¹S` is surjective if `R →+* S` is surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6158b94c50ed03002d47634124dbfc8875521ba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
