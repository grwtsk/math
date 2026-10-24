# support_swap_mul_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc6b4bc7-d3ef-4956-d92c-e238371ef0ed",
  "kind": "theorem",
  "lexical_name": "support_swap_mul_swap",
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
  "slug": "support-swap-mul-swap--38a61f4759b9c445097fbe3c",
  "source": {
    "blob": "78a2d364753cdd35fb348332b8ea8175f12df249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 459,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variant8051c5a34554cea409643b6298e269605527fadf6a766132043d0e9fd9a15add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38a61f4759b9c445097fbe3ceb336dd6c69f350bc0fa024017c49afa4f5d139a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variant8051c5a34554cea409643b6298e269605527fadf6a766132043d0e9fd9a15add.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc6b4bc7-d3ef-4956-d92c-e238371ef0ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_swap_mul_swap {x y z : α} (h : List.Nodup [x, y, z]) :
    support (swap x y * swap y z) = {x, y, z} := by
  simp only [List.not_mem_nil, and_true_iff, List.mem_cons, not_false_iff, List.nodup_cons,
    List.mem_singleton, and_self_iff, List.nodup_nil] at h
  push_neg at h
  apply le_antisymm
  · convert support_mul_le (swap x y) (swap y z) using 1
    rw [support_swap h.left.left, support_swap h.right.left]
    simp only [sup_eq_union]
    simp only [mem_singleton, mem_insert, union_insert, insert_union, mem_union, true_or, or_true,
      insert_eq_of_mem]
    rfl
  · intro
    simp only [mem_insert, mem_singleton]
    rintro (rfl | rfl | rfl | _) <;>
      simp [swap_apply_of_ne_of_ne, h.left.left, h.left.left.symm, h.left.right.symm,
        h.left.right.left.symm, h.right.left.symm]
#align equiv.perm.support_swap_mul_swap Equiv.Perm.support_swap_mul_swap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variant8051c5a34554cea409643b6298e269605527fadf6a766132043d0e9fd9a15add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variant8051c5a34554cea409643b6298e269605527fadf6a766132043d0e9fd9a15add.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78a2d364753cdd35fb348332b8ea8175f12df249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
