# card_univ_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b28a0a9e9891234b2ce13f1d58f5bb9ccec31736",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea2f8cc7f276f11e1466d252fd13055dbc5667f0e53d10b30c588e79e23eba38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b6e68b2-812d-a5a8-e9ab-1aa00fd45fa8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46c51217-0535-a0c6-61e1-c277f7ada4db",
  "kind": "theorem",
  "lexical_name": "card_univ_pos",
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
  "slug": "card-univ-pos--9c610737e9acd2b2479f8bfd",
  "source": {
    "blob": "b28a0a9e9891234b2ce13f1d58f5bb9ccec31736",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1243,
    "line": 1221,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantea2f8cc7f276f11e1466d252fd13055dbc5667f0e53d10b30c588e79e23eba38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c610737e9acd2b2479f8bfd0a35ae6c29985153a03fef149644ed1cb9c427a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variantea2f8cc7f276f11e1466d252fd13055dbc5667f0e53d10b30c588e79e23eba38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46c51217-0535-a0c6-61e1-c277f7ada4db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1221–1243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem card_univ_pos (α : Type*) [Fintype α] [Nonempty α] :
    0 < (Finset.univ : Finset α).card :=
  Finset.univ_nonempty.card_pos

--Porting note(https://github.com/leanprover-community/mathlib4/issues/6038): restore
-- /-- Extension for the `positivity` tactic: `finset.card s` is positive if `s` is nonempty. -/
-- @[positivity]
-- unsafe def positivity_finset_card : expr → tactic strictness
--   | q(Finset.card $(s)) => do
--     let p
--       ←-- TODO: Partial decision procedure for `finset.nonempty`
--             to_expr
--             ``(Finset.Nonempty $(s)) >>=
--           find_assumption
--     positive <$> mk_app `` Finset.Nonempty.card_pos [p]
--   | q(@Fintype.card $(α) $(i)) => positive <$> mk_mapp `` Fintype.card_pos [α, i, none]
--   | e =>
--     pp e >>=
--       fail ∘
--       format.bracket "The expression `" "` isn't of the form `finset.card s` or `fintype.card α`"
-- #align tactic.positivity_finset_card tactic.positivity_finset_card

end Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variantea2f8cc7f276f11e1466d252fd13055dbc5667f0e53d10b30c588e79e23eba38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantea2f8cc7f276f11e1466d252fd13055dbc5667f0e53d10b30c588e79e23eba38.lean#L1221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b28a0a9e9891234b2ce13f1d58f5bb9ccec31736` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
