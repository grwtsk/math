# addMonoidWithOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0218a9067ec94b48a8fd050ad945bbb88c49be53e7db9791f084da71e71dcb66",
  "kind": "instance",
  "lexical_name": "addMonoidWithOne",
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
  "slug": "addmonoidwithone--e2e41aa98f5760c9381aab32",
  "source": {
    "blob": "c4ebac264c734625202304d4f033e170762bf688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 388,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2e41aa98f5760c9381aab321406a99028ee604a605dba1804a1c801f4f2363b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0218a9067ec94b48a8fd050ad945bbb88c49be53e7db9791f084da71e71dcb66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance addMonoidWithOne [AddMonoidWithOne α] : AddMonoidWithOne (WithZero α) :=
  { WithZero.addMonoid, WithZero.one with
    natCast := fun n => if n = 0 then 0 else (n.cast : α),
    natCast_zero := rfl,
    natCast_succ := fun n => by
      cases n with
      | zero => show (((1 : ℕ) : α) : WithZero α) = 0 + 1; · rw [Nat.cast_one, coe_one, zero_add]
      | succ n =>
          show (((n + 2 : ℕ) : α) : WithZero α) = ((n + 1 : ℕ) : α) + 1
          rw [Nat.cast_succ, coe_add, coe_one]
      }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4ebac264c734625202304d4f033e170762bf688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
