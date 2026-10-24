# MonoidHom.monoidHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b9892ea83ed19de408449fce0a3e323acece1c2659820c2aa0e12de4d3c8adb",
  "kind": "instance",
  "lexical_name": "MonoidHom.monoidHomClass",
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
  "slug": "monoidhom-monoidhomclass--cf2f8c5f1cf84264fbf46119",
  "source": {
    "blob": "65d81378047e4331a9bb0763cb2e4c80736a27fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 371,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf2f8c5f1cf84264fbf46119d9b9e6bafc8623cbc2cbd17294f7f6ea20e60346",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b9892ea83ed19de408449fce0a3e323acece1c2659820c2aa0e12de4d3c8adb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance MonoidHom.monoidHomClass : MonoidHomClass (M →* N) M N where
  coe f := f.toFun
  coe_injective' f g h := by
    cases f
    cases g
    congr
    apply FunLike.coe_injective'
    exact h
  map_mul := MonoidHom.map_mul'
  map_one f := f.toOneHom.map_one'
#align monoid_hom.monoid_hom_class MonoidHom.monoidHomClass
#align add_monoid_hom.add_monoid_hom_class AddMonoidHom.addMonoidHomClass

-- Porting note: we need to add an extra `to_additive`.
-- This is waiting on https://github.com/leanprover-community/mathlib4/issues/660
attribute [to_additive existing] MonoidHomClass.toOneHomClass

/-- Turn an element of a type `F` satisfying `MonoidHomClass F M N` into an actual
`MonoidHom`. This is declared as the default coercion from `F` to `M →* N`. -/
@[to_additive (attr := coe)
"Turn an element of a type `F` satisfying `AddMonoidHomClass F M N` into an
actual `MonoidHom`. This is declared as the default coercion from `F` to `M →+ N`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65d81378047e4331a9bb0763cb2e4c80736a27fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
