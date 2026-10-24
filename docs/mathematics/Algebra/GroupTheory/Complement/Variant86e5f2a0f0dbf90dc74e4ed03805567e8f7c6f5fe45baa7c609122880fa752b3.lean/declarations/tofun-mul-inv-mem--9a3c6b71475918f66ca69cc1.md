# toFun_mul_inv_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fba9ad8-a823-0bc0-3771-1459c1beee33",
  "kind": "theorem",
  "lexical_name": "toFun_mul_inv_mem",
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
  "slug": "tofun-mul-inv-mem--9a3c6b71475918f66ca69cc1",
  "source": {
    "blob": "a16b036b5c5feed15ca4837b8705bca6aa508205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 436,
    "path": "GRWTSK/Algebra/GroupTheory/Complement/Variant86e5f2a0f0dbf90dc74e4ed03805567e8f7c6f5fe45baa7c609122880fa752b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a3c6b71475918f66ca69cc13054ee5399a8488782fe0725a6c9e4697a492fa6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Complement/Variant86e5f2a0f0dbf90dc74e4ed03805567e8f7c6f5fe45baa7c609122880fa752b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fba9ad8-a823-0bc0-3771-1459c1beee33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toFun_mul_inv_mem (hS : S ∈ Subgroup.rightTransversals (H : Set G)) (g : G) :
    (toFun hS g : G) * g⁻¹ ∈ H :=
  (congr_arg (· ∈ H) (by rw [mul_inv_rev, inv_inv])).mp (H.inv_mem (mul_inv_toFun_mem hS g))
#align subgroup.mem_right_transversals.to_fun_mul_inv_mem Subgroup.MemRightTransversals.toFun_mul_inv_mem
#align add_subgroup.mem_right_transversals.to_fun_add_neg_mem AddSubgroup.MemRightTransversals.toFun_add_neg_mem

end MemRightTransversals

section Action

open Pointwise MulAction MemLeftTransversals

variable {F : Type*} [Group F] [MulAction F G] [QuotientAction F H]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Complement/Variant86e5f2a0f0dbf90dc74e4ed03805567e8f7c6f5fe45baa7c609122880fa752b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Complement/Variant86e5f2a0f0dbf90dc74e4ed03805567e8f7c6f5fe45baa7c609122880fa752b3.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a16b036b5c5feed15ca4837b8705bca6aa508205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
