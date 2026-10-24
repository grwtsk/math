# Right.one_lt_mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:404ccffd-87a5-d3b6-6c20-813c81855286",
  "kind": "theorem",
  "lexical_name": "Right.one_lt_mul'",
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
  "slug": "right-one-lt-mul--eb453835b285b952a13d646f",
  "source": {
    "blob": "93c5dbcb8e9006c93f13e932c2ae88af47ef9f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1055,
    "line": 984,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb453835b285b952a13d646ff262206b181dedcf2caa9af851fec02a96eabf3d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:404ccffd-87a5-d3b6-6c20-813c81855286`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 984–1055.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Right.one_lt_mul' [CovariantClass α α (swap (· * ·)) (· ≤ ·)] {a b : α} (ha : 1 < a)
    (hb : 1 < b) :
    1 < a * b :=
  lt_mul_of_one_lt_of_lt' ha hb
#align right.one_lt_mul' Right.one_lt_mul'
#align right.add_pos' Right.add_pos'

alias mul_le_one' := Left.mul_le_one
#align mul_le_one' mul_le_one'

alias mul_lt_one_of_le_of_lt := Left.mul_lt_one_of_le_of_lt
#align mul_lt_one_of_le_of_lt mul_lt_one_of_le_of_lt

alias mul_lt_one_of_lt_of_le := Left.mul_lt_one_of_lt_of_le
#align mul_lt_one_of_lt_of_le mul_lt_one_of_lt_of_le

alias mul_lt_one := Left.mul_lt_one
#align mul_lt_one mul_lt_one

alias mul_lt_one' := Left.mul_lt_one'
#align mul_lt_one' mul_lt_one'

attribute [to_additive add_nonpos "**Alias** of `Left.add_nonpos`."] mul_le_one'
#align add_nonpos add_nonpos

attribute [to_additive add_neg_of_nonpos_of_neg "**Alias** of `Left.add_neg_of_nonpos_of_neg`."]
  mul_lt_one_of_le_of_lt
#align add_neg_of_nonpos_of_neg add_neg_of_nonpos_of_neg

attribute [to_additive add_neg_of_neg_of_nonpos "**Alias** of `Left.add_neg_of_neg_of_nonpos`."]
  mul_lt_one_of_lt_of_le
#align add_neg_of_neg_of_nonpos add_neg_of_neg_of_nonpos

attribute [to_additive "**Alias** of `Left.add_neg`."] mul_lt_one
#align add_neg add_neg

attribute [to_additive "**Alias** of `Left.add_neg'`."] mul_lt_one'
#align add_neg' add_neg'

alias one_le_mul := Left.one_le_mul
#align one_le_mul one_le_mul

alias one_lt_mul_of_le_of_lt' := Left.one_lt_mul_of_le_of_lt
#align one_lt_mul_of_le_of_lt' one_lt_mul_of_le_of_lt'

alias one_lt_mul_of_lt_of_le' := Left.one_lt_mul_of_lt_of_le
#align one_lt_mul_of_lt_of_le' one_lt_mul_of_lt_of_le'

alias one_lt_mul' := Left.one_lt_mul
#align one_lt_mul' one_lt_mul'

alias one_lt_mul'' := Left.one_lt_mul'
#align one_lt_mul'' one_lt_mul''

attribute [to_additive add_nonneg "**Alias** of `Left.add_nonneg`."] one_le_mul
#align add_nonneg add_nonneg

attribute [to_additive add_pos_of_nonneg_of_pos "**Alias** of `Left.add_pos_of_nonneg_of_pos`."]
  one_lt_mul_of_le_of_lt'
#align add_pos_of_nonneg_of_pos add_pos_of_nonneg_of_pos

attribute [to_additive add_pos_of_pos_of_nonneg "**Alias** of `Left.add_pos_of_pos_of_nonneg`."]
  one_lt_mul_of_lt_of_le'
#align add_pos_of_pos_of_nonneg add_pos_of_pos_of_nonneg

attribute [to_additive add_pos "**Alias** of `Left.add_pos`."] one_lt_mul'
#align add_pos add_pos

attribute [to_additive add_pos' "**Alias** of `Left.add_pos'`."] one_lt_mul''
#align add_pos' add_pos'

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean#L984).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93c5dbcb8e9006c93f13e932c2ae88af47ef9f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
