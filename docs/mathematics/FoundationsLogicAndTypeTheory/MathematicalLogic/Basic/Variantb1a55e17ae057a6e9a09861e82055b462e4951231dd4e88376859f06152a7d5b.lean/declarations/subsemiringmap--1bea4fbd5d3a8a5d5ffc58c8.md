# subsemiringMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98aea2a52f05095a1cf240d86815d8acaf4fcd58b3c4e1ccba799f923da043f6",
  "kind": "def",
  "lexical_name": "subsemiringMap",
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
  "slug": "subsemiringmap--1bea4fbd5d3a8a5d5ffc58c8",
  "source": {
    "blob": "179f29708cd93fbd88017c33185f41dae100f143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1339,
    "line": 1313,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb1a55e17ae057a6e9a09861e82055b462e4951231dd4e88376859f06152a7d5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bea4fbd5d3a8a5d5ffc58c88fd4071464276ca1f3337a72826255ac48e3a070",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb1a55e17ae057a6e9a09861e82055b462e4951231dd4e88376859f06152a7d5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98aea2a52f05095a1cf240d86815d8acaf4fcd58b3c4e1ccba799f923da043f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1313–1339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subsemiringMap (e : R ≃+* S) (s : Subsemiring R) : s ≃+* s.map e.toRingHom :=
  { e.toAddEquiv.addSubmonoidMap s.toAddSubmonoid, e.toMulEquiv.submonoidMap s.toSubmonoid with }
#align ring_equiv.subsemiring_map RingEquiv.subsemiringMap

end RingEquiv

/-! ### Actions by `Subsemiring`s

These are just copies of the definitions about `Submonoid` starting from `submonoid.mul_action`.
The only new result is `subsemiring.module`.

When `R` is commutative, `Algebra.ofSubsemiring` provides a stronger result than those found in
this file, which uses the same scalar action.
-/


section Actions

namespace Subsemiring

variable {R' α β : Type*}

section NonAssocSemiring

variable [NonAssocSemiring R']

/-- The action by a subsemiring is the action by the underlying semiring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb1a55e17ae057a6e9a09861e82055b462e4951231dd4e88376859f06152a7d5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb1a55e17ae057a6e9a09861e82055b462e4951231dd4e88376859f06152a7d5b.lean#L1313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `179f29708cd93fbd88017c33185f41dae100f143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
