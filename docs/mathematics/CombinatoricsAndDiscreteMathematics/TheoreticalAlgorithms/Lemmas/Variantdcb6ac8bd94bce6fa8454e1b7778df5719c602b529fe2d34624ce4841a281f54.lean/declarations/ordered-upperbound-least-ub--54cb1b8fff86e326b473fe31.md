# Ordered.upperBound?_least_ub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0856eabeaf7d36dcaac55a966297f94c80b1f2cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 490,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dcb6ac8bd94bce6fa8454e1b7778df5719c602b529fe2d34624ce4841a281f54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67703a06-3400-53c0-cfa4-a9e701ca4b6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2790535-5d28-9bc2-9e29-9e7496214f16",
  "kind": "theorem",
  "lexical_name": "Ordered.upperBound?_least_ub",
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
  "slug": "ordered-upperbound-least-ub--54cb1b8fff86e326b473fe31",
  "source": {
    "blob": "0856eabeaf7d36dcaac55a966297f94c80b1f2cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 490,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb6ac8bd94bce6fa8454e1b7778df5719c602b529fe2d34624ce4841a281f54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54cb1b8fff86e326b473fe3179a117f24511e08997f29293d7b39d468fe05fa2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb6ac8bd94bce6fa8454e1b7778df5719c602b529fe2d34624ce4841a281f54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2790535-5d28-9bc2-9e29-9e7496214f16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ordered.upperBound?_least_ub [@TransCmp α cmp] [IsCut cmp cut] (h : Ordered cmp t)
    (hub : ∀ {x}, ub = some x → t.All (cmpLT cmp · x)) :
    t.upperBound? cut ub = some x → y ∈ t → cut x = .lt → cmp y x = .lt → cut y = .gt := by
  induction t generalizing ub with
  | nil => nofun
  | node _ _ _ _ ihl ihr =>
    simp [upperBound?]; split <;> rename_i hv <;> rintro h₁ (rfl | hy' | hy') hx h₂
    · rcases upperBound?_mem_ub h₁ with h₁ | ⟨⟨⟩⟩
      · cases OrientedCmp.lt_asymm h₂ (All_def.1 h.1 _ h₁).1
      · cases OrientedCmp.lt_asymm h₂ h₂
    · exact ihl h.2.2.1 (by rintro _ ⟨⟨⟩⟩; exact h.1) h₁ hy' hx h₂
    · refine (OrientedCmp.lt_asymm h₂ ?_).elim; have := (All_def.1 h.2.1 _ hy').1
      rcases upperBound?_mem_ub h₁ with h₁ | ⟨⟨⟩⟩
      · exact TransCmp.lt_trans (All_def.1 h.1 _ h₁).1 this
      · exact this
    · exact hv
    · exact IsCut.gt_trans (cut := cut) (cmp := cmp) (All_def.1 h.1 _ hy').1 hv
    · exact ihr h.2.2.2 (fun h => (hub h).2.2) h₁ hy' hx h₂
    · cases h₁; cases OrientedCmp.lt_asymm h₂ h₂
    · cases h₁; cases hx.symm.trans hv
    · cases h₁; cases hx.symm.trans hv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb6ac8bd94bce6fa8454e1b7778df5719c602b529fe2d34624ce4841a281f54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb6ac8bd94bce6fa8454e1b7778df5719c602b529fe2d34624ce4841a281f54.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0856eabeaf7d36dcaac55a966297f94c80b1f2cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
