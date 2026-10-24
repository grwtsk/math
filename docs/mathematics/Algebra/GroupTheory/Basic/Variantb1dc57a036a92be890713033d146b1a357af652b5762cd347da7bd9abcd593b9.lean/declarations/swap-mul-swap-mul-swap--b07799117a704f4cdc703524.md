# swap_mul_swap_mul_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:070eea67-f5f3-e382-a5d5-898a1ef034a2",
  "kind": "theorem",
  "lexical_name": "swap_mul_swap_mul_swap",
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
  "slug": "swap-mul-swap-mul-swap--b07799117a704f4cdc703524",
  "source": {
    "blob": "9089d75f89716e574c300bf8d9d6ae80c3d7901e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 599,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantb1dc57a036a92be890713033d146b1a357af652b5762cd347da7bd9abcd593b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b07799117a704f4cdc703524c3b3a56b9a41ad6f853843cdc17db202a6941130",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantb1dc57a036a92be890713033d146b1a357af652b5762cd347da7bd9abcd593b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:070eea67-f5f3-e382-a5d5-898a1ef034a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem swap_mul_swap_mul_swap {x y z : α} (hwz : x ≠ y) (hxz : x ≠ z) :
    swap y z * swap x y * swap y z = swap z x :=
  Equiv.ext fun n => by
    simp only [swap_apply_def, Perm.mul_apply]
    -- Porting note: was `cc`
    split_ifs <;> aesop
#align equiv.swap_mul_swap_mul_swap Equiv.swap_mul_swap_mul_swap

end Swap

section AddGroup
variable [AddGroup α] (a b : α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantb1dc57a036a92be890713033d146b1a357af652b5762cd347da7bd9abcd593b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantb1dc57a036a92be890713033d146b1a357af652b5762cd347da7bd9abcd593b9.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9089d75f89716e574c300bf8d9d6ae80c3d7901e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
