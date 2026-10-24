# Ordered.upperBound?_least_ub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1560b8e2-f972-c7f5-cf31-48ab58c29873",
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
  "slug": "ordered-upperbound-least-ub--c626e4f5fd5cc08e8d40d3eb",
  "source": {
    "blob": "a56de27973388966c2b4db47ed7d2b083eac3d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 506,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fa586da54942c22f02c2d2b0ff199762300cc5dd54007050f58182f6b0ad42c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c626e4f5fd5cc08e8d40d3eb7d73e219b51695acb6f0130426763f86d3f480c3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fa586da54942c22f02c2d2b0ff199762300cc5dd54007050f58182f6b0ad42c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1560b8e2-f972-c7f5-cf31-48ab58c29873`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ordered.upperBound?_least_ub [Std.TransCmp (α := α) cmp] [IsCut cmp cut]
    (h : Ordered cmp t) (hub : ∀ {x}, ub = some x → t.All (cmpLT cmp · x)) :
    t.upperBound? cut ub = some x → y ∈ t → cut x = .lt → cmp y x = .lt → cut y = .gt := by
  induction t generalizing ub with
  | nil => nofun
  | node _ _ _ _ ihl ihr =>
    simp [upperBound?]; split <;> rename_i hv <;> rintro h₁ (rfl | hy' | hy') hx h₂
    · rcases upperBound?_mem_ub h₁ with h₁ | ⟨⟨⟩⟩
      · cases Std.OrientedCmp.not_lt_of_lt h₂ (All_def.1 h.1 _ h₁).1
      · cases Std.OrientedCmp.not_lt_of_lt h₂ h₂
    · exact ihl h.2.2.1 (by rintro _ ⟨⟨⟩⟩; exact h.1) h₁ hy' hx h₂
    · refine (Std.OrientedCmp.not_lt_of_lt h₂ ?_).elim; have := (All_def.1 h.2.1 _ hy').1
      rcases upperBound?_mem_ub h₁ with h₁ | ⟨⟨⟩⟩
      · exact Std.TransCmp.lt_trans (All_def.1 h.1 _ h₁).1 this
      · exact this
    · exact hv
    · exact IsCut.gt_trans (cut := cut) (cmp := cmp) (All_def.1 h.1 _ hy').1 hv
    · exact ihr h.2.2.2 (fun h => (hub h).2.2) h₁ hy' hx h₂
    · cases h₁; cases Std.OrientedCmp.not_lt_of_lt h₂ h₂
    · cases h₁; cases hx.symm.trans hv
    · cases h₁; cases hx.symm.trans hv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fa586da54942c22f02c2d2b0ff199762300cc5dd54007050f58182f6b0ad42c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fa586da54942c22f02c2d2b0ff199762300cc5dd54007050f58182f6b0ad42c.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a56de27973388966c2b4db47ed7d2b083eac3d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
