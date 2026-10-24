# eq_of_le_of_forall_gt_imp_ge_of_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "117b17c9ef1d2e37b2f63ca8f5c70fd38acda001",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03a92a006ebb504a220050cbc8b72008096951ffdcfc353b4a37463f327e6160.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa12c4ba-6d6e-b46d-37cd-28d2cde53352",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ea7bf4d-d986-38fa-a420-b7ce7636ca0f",
  "kind": "theorem",
  "lexical_name": "eq_of_le_of_forall_gt_imp_ge_of_dense",
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
  "slug": "eq-of-le-of-forall-gt-imp-ge-of-dense--bc96429f590e55a178e2a3c5",
  "source": {
    "blob": "117b17c9ef1d2e37b2f63ca8f5c70fd38acda001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1224,
    "line": 1205,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant03a92a006ebb504a220050cbc8b72008096951ffdcfc353b4a37463f327e6160.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc96429f590e55a178e2a3c5cc52ac26942f8af11e1a09f61a97905bee2f1f39",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant03a92a006ebb504a220050cbc8b72008096951ffdcfc353b4a37463f327e6160.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ea7bf4d-d986-38fa-a420-b7ce7636ca0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1205–1224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_le_of_forall_gt_imp_ge_of_dense (h₁ : a₂ ≤ a₁) (h₂ : ∀ a < a₁, a ≤ a₂) : a₁ = a₂ :=
  (le_of_forall_lt_imp_le_of_dense h₂).antisymm h₁

@[deprecated (since := "2025-01-21")]
alias le_of_forall_le_of_dense := le_of_forall_gt_imp_ge_of_dense

@[deprecated (since := "2025-01-21")]
alias le_of_forall_ge_of_dense := le_of_forall_lt_imp_le_of_dense

@[deprecated (since := "2025-01-21")] alias forall_lt_le_iff := forall_lt_imp_le_iff_le_of_dense
@[deprecated (since := "2025-01-21")] alias forall_gt_ge_iff := forall_gt_imp_ge_iff_le_of_dense

@[deprecated (since := "2025-01-21")]
alias eq_of_le_of_forall_le_of_dense := eq_of_le_of_forall_lt_imp_le_of_dense

@[deprecated (since := "2025-01-21")]
alias eq_of_le_of_forall_ge_of_dense := eq_of_le_of_forall_gt_imp_ge_of_dense

end LinearOrder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant03a92a006ebb504a220050cbc8b72008096951ffdcfc353b4a37463f327e6160.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant03a92a006ebb504a220050cbc8b72008096951ffdcfc353b4a37463f327e6160.lean#L1205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117b17c9ef1d2e37b2f63ca8f5c70fd38acda001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
