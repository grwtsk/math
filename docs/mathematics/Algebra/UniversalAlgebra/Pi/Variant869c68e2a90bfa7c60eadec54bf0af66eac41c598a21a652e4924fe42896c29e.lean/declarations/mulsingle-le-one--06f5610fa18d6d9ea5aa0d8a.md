# mulSingle_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcfdf516-c3fd-aa0b-b370-ba9a2981fd65",
  "kind": "lemma",
  "lexical_name": "mulSingle_le_one",
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
  "slug": "mulsingle-le-one--06f5610fa18d6d9ea5aa0d8a",
  "source": {
    "blob": "1e0c53c72608adca41c72ec85eee4cae498e76a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 129,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06f5610fa18d6d9ea5aa0d8aa684e38bc77e514b8de856c4490cd863bcc0064f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcfdf516-c3fd-aa0b-b370-ba9a2981fd65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulSingle_le_one : mulSingle i a ≤ 1 ↔ a ≤ 1 := by simp [mulSingle]

end Pi

-- Porting note: Tactic code not ported yet
-- namespace Tactic

-- open Function

-- variable (ι) [Zero α] {a : α}

-- private theorem function_const_nonneg_of_pos [Preorder α] (ha : 0 < a) : 0 ≤ const ι a :=
--   const_nonneg_of_nonneg _ ha.le

-- variable [Nonempty ι]

-- private theorem function_const_ne_zero : a ≠ 0 → const ι a ≠ 0 :=
--   const_ne_zero.2

-- private theorem function_const_pos [Preorder α] : 0 < a → 0 < const ι a :=
--   const_pos.2

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

-- end Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e0c53c72608adca41c72ec85eee4cae498e76a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
