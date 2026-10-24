# const_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0383d6e8c1d786111c72334117469365de26d969",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9dd62ee-453a-0b73-92d1-dbc883334ace",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:666d66bd-bf26-0a60-d096-7fea4d858d96",
  "kind": "theorem",
  "lexical_name": "const_lt_one",
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
  "slug": "const-lt-one--e259f3abb1a80e4692d42802",
  "source": {
    "blob": "0383d6e8c1d786111c72334117469365de26d969",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 155,
    "path": "GRWTSK/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e259f3abb1a80e4692d42802202690d24ad77d5610f9f5e790101b8b514d46e8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:666d66bd-bf26-0a60-d096-7fea4d858d96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem const_lt_one : const β a < 1 ↔ a < 1 :=
  @const_lt_const _ _ _ _ _ 1
#align function.const_lt_one Function.const_lt_one
#align function.const_neg Function.const_neg

end Function
--Porting note: Tactic code not ported yet
-- namespace Tactic

-- open Function

-- variable (ι) [Zero α] {a : α}

-- private theorem function_const_nonneg_of_pos [Preorder α] (ha : 0 < a) : 0 ≤ const ι a :=
--   const_nonneg_of_nonneg _ ha.le
-- #align tactic.function_const_nonneg_of_pos tactic.function_const_nonneg_of_pos

-- variable [Nonempty ι]

-- private theorem function_const_ne_zero : a ≠ 0 → const ι a ≠ 0 :=
--   const_ne_zero.2
-- #align tactic.function_const_ne_zero tactic.function_const_ne_zero

-- private theorem function_const_pos [Preorder α] : 0 < a → 0 < const ι a :=
--   const_pos.2
-- #align tactic.function_const_pos tactic.function_const_pos

-- /-- Extension for the `positivity` tactic: `Function.const` is positive/nonnegative/nonzero if
-- its input is. -/
-- @[positivity]
-- unsafe def positivity_const : expr → tactic strictness
--   | q(Function.const $(ι) $(a)) => do
--     let strict_a ← core a
--     match strict_a with
--       | positive p =>
--         positive <$> to_expr ``(function_const_pos $(ι) $(p)) <|>
--           nonnegative <$> to_expr ``(function_const_nonneg_of_pos $(ι) $(p))
--       | nonnegative p => nonnegative <$> to_expr ``(const_nonneg_of_nonneg $(ι) $(p))
--       | nonzero p => nonzero <$> to_expr ``(function_const_ne_zero $(ι) $(p))
--   | e =>
--     pp e >>= fail ∘ format.bracket "The expression `" "` is not of the form `Function.const ι a`"
-- #align tactic.positivity_const tactic.positivity_const

-- end Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0383d6e8c1d786111c72334117469365de26d969` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
