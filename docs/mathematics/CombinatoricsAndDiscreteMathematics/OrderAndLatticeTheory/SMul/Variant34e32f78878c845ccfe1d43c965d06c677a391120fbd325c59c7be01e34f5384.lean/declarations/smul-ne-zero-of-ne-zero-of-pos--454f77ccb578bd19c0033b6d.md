# smul_ne_zero_of_ne_zero_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3322a28b530957a8a43e9cbacdd29d6d7baf4606",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b247cc58-4941-2fe0-bcb6-b61e72db7ddf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aef605fc-5220-fd2b-74de-cca1af9314a3",
  "kind": "theorem",
  "lexical_name": "smul_ne_zero_of_ne_zero_of_pos",
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
  "slug": "smul-ne-zero-of-ne-zero-of-pos--454f77ccb578bd19c0033b6d",
  "source": {
    "blob": "3322a28b530957a8a43e9cbacdd29d6d7baf4606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 321,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:454f77ccb578bd19c0033b6de836b118e5eee1f2de1ca2a0d2aca27c70fe2a41",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aef605fc-5220-fd2b-74de-cca1af9314a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem smul_ne_zero_of_ne_zero_of_pos [Preorder M] (ha : a ≠ 0) (hb : 0 < b) : a • b ≠ 0 :=
  smul_ne_zero ha hb.ne'

end NoZeroSMulDivisors

-- Porting note: Tactic code not ported yet
-- open Positivity

-- -- failed to format: unknown constant 'term.pseudo.antiquot'
-- /--
--       Extension for the `Positivity` tactic: scalar multiplication is
--       nonnegative/positive/nonzero if both sides are. -/
--     @[ positivity ]
--     unsafe
--   def
--     positivity_smul
--     : expr → tactic strictness
--     |
--         e @ q( $ ( a ) • $ ( b ) )
--         =>
--         do
--           let strictness_a ← core a
--             let strictness_b ← core b
--             match
--               strictness_a , strictness_b
--               with
--               | positive pa , positive pb => positive <$> mk_app ` ` smul_pos [ pa , pb ]
--                 |
--                   positive pa , nonnegative pb
--                   =>
--                   nonnegative <$> mk_app ` ` smul_nonneg_of_pos_of_nonneg [ pa , pb ]
--                 |
--                   nonnegative pa , positive pb
--                   =>
--                   nonnegative <$> mk_app ` ` smul_nonneg_of_nonneg_of_pos [ pa , pb ]
--                 |
--                   nonnegative pa , nonnegative pb
--                   =>
--                   nonnegative <$> mk_app ` ` smul_nonneg [ pa , pb ]
--                 |
--                   positive pa , nonzero pb
--                   =>
--                   nonzero <$> to_expr ` `( smul_ne_zero_of_pos_of_ne_zero $ ( pa ) $ ( pb ) )
--                 |
--                   nonzero pa , positive pb
--                   =>
--                   nonzero <$> to_expr ` `( smul_ne_zero_of_ne_zero_of_pos $ ( pa ) $ ( pb ) )
--                 |
--                   nonzero pa , nonzero pb
--                   =>
--                   nonzero <$> to_expr ` `( smul_ne_zero $ ( pa ) $ ( pb ) )
--                 | sa @ _ , sb @ _ => positivity_fail e a b sa sb
--       | e => pp e >>= fail ∘ format.bracket "The expression `" "` isn't of the form `a • b`"
-- #align tactic.positivity_smul Tactic.positivity_smul

end Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3322a28b530957a8a43e9cbacdd29d6d7baf4606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
