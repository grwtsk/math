# AddCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab7585566401dd6bd9ea53946f16e350e622e8837b2d6428b03c6e55e03fc962",
  "kind": "class",
  "lexical_name": "AddCommGroup",
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
  "slug": "addcommgroup--9b5747d35baed00b548ab0e4",
  "source": {
    "blob": "7aeabed2c4e3218f70b9584fb182a068d77b464b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf8c2c41c5d7ed6c4d6103815dc404f40096348830dc5065802f64b02ebe3b2c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b5747d35baed00b548ab0e474016547729db9d5959889c856c967295ec6429d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf8c2c41c5d7ed6c4d6103815dc404f40096348830dc5065802f64b02ebe3b2c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab7585566401dd6bd9ea53946f16e350e622e8837b2d6428b03c6e55e03fc962`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class AddCommGroup (M : Type u) extends AddCommMonoid M, Neg M, Sub M where
  /-- Negation is the left inverse of addition. -/
  neg_add_cancel : ∀ a : M, -a + a = 0
  /-- Subtraction is addition of the negative. -/
  sub_eq_add_neg : ∀ a b : M, a - b = a + -b

attribute [instance 100] AddCommGroup.toAddCommMonoid AddCommGroup.toNeg AddCommGroup.toSub

/--
A module over the natural numbers, i.e. a type with zero, addition, and scalar multiplication by natural numbers,
satisfying appropriate compatibilities.

Equivalently, an additive commutative monoid.

Use `IntModule` if the type has negation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf8c2c41c5d7ed6c4d6103815dc404f40096348830dc5065802f64b02ebe3b2c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf8c2c41c5d7ed6c4d6103815dc404f40096348830dc5065802f64b02ebe3b2c9.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aeabed2c4e3218f70b9584fb182a068d77b464b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
