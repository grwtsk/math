# Ne.lt_of_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f36ff88bc019754e37ef905bc96e0be6b5e0c81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/8288c3e4da87cf4c7e9e41c6fdecf4b74509a6fc8203431b7c6b7e63f1d079eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37f138bf-17e5-ac83-dc63-d3745fe18d7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f51aa0a-d124-20bd-6d14-1256dd7c2780",
  "kind": "theorem",
  "lexical_name": "Ne.lt_of_le'",
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
  "slug": "ne-lt-of-le--b3318faccc195da369f0f645",
  "source": {
    "blob": "1f36ff88bc019754e37ef905bc96e0be6b5e0c81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8288c3e4da87cf4c7e9e41c6fdecf4b74509a6fc8203431b7c6b7e63f1d079eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3318faccc195da369f0f645954c448b1d279aa579dbaa55885940265e6ecfd7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8288c3e4da87cf4c7e9e41c6fdecf4b74509a6fc8203431b7c6b7e63f1d079eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f51aa0a-d124-20bd-6d14-1256dd7c2780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ne.lt_of_le' : b ≠ a → a ≤ b → a < b :=
  flip lt_of_le_of_ne'
#align ne.lt_of_le' Ne.lt_of_le'

end PartialOrder

attribute [simp] le_refl

attribute [ext] LE

alias LE.le.trans := le_trans

alias LE.le.trans' := le_trans'

alias LE.le.trans_lt := lt_of_le_of_lt

alias LE.le.trans_lt' := lt_of_le_of_lt'

alias LE.le.antisymm := le_antisymm

alias LE.le.antisymm' := ge_antisymm

alias LE.le.lt_of_ne := lt_of_le_of_ne

alias LE.le.lt_of_ne' := lt_of_le_of_ne'

alias LE.le.lt_of_not_le := lt_of_le_not_le

alias LE.le.lt_or_eq := lt_or_eq_of_le

alias LE.le.lt_or_eq_dec := Decidable.lt_or_eq_of_le

alias LT.lt.le := le_of_lt

alias LT.lt.trans := lt_trans

alias LT.lt.trans' := lt_trans'

alias LT.lt.trans_le := lt_of_lt_of_le

alias LT.lt.trans_le' := lt_of_lt_of_le'

alias LT.lt.ne := ne_of_lt
#align has_lt.lt.ne LT.lt.ne

alias LT.lt.asymm := lt_asymm

alias LT.lt.not_lt := lt_asymm

alias Eq.le := le_of_eq
#align eq.le Eq.le

-- Porting note: no `decidable_classical` linter
-- attribute [nolint decidable_classical] LE.le.lt_or_eq_dec

section

variable [Preorder α] {a b c : α}

/-- A version of `le_refl` where the argument is implicit -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8288c3e4da87cf4c7e9e41c6fdecf4b74509a6fc8203431b7c6b7e63f1d079eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8288c3e4da87cf4c7e9e41c6fdecf4b74509a6fc8203431b7c6b7e63f1d079eb.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f36ff88bc019754e37ef905bc96e0be6b5e0c81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
