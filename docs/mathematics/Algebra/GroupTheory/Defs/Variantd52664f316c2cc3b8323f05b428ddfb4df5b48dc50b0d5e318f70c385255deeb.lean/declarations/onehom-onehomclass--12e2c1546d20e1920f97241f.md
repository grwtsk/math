# OneHom.oneHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a74a7bec63251f671d9f819bc6faabac05cc1582f863db609d546e844f3ea34f",
  "kind": "instance",
  "lexical_name": "OneHom.oneHomClass",
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
  "slug": "onehom-onehomclass--12e2c1546d20e1920f97241f",
  "source": {
    "blob": "08ea8a26e80a36ecc853991ae0119013566ebdb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 197,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantd52664f316c2cc3b8323f05b428ddfb4df5b48dc50b0d5e318f70c385255deeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12e2c1546d20e1920f97241f930c828cd212e9f2ff2e9470977b7ee311a4fbfb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantd52664f316c2cc3b8323f05b428ddfb4df5b48dc50b0d5e318f70c385255deeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a74a7bec63251f671d9f819bc6faabac05cc1582f863db609d546e844f3ea34f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance OneHom.oneHomClass : OneHomClass (OneHom M N) M N where
  map_one := OneHom.map_one'

library_note «hom simp lemma priority»
/--
The hom class hierarchy allows for a single lemma, such as `map_one`, to apply to a large variety
of morphism types, so long as they have an instance of `OneHomClass`. For example, this applies to
to `MonoidHom`, `RingHom`, `AlgHom`, `StarAlgHom`, as well as their `Equiv` variants, etc. However,
precisely because these lemmas are so widely applicable, they keys in the `simp` discrimination tree
are necessarily highly non-specific. For example, the key for `map_one` is
`@DFunLike.coe _ _ _ _ _ 1`.

Consequently, whenever lean sees `⇑f 1`, for some `f : F`, it will attempt to synthesize a
`OneHomClass F ?A ?B` instance. If no such instance exists, then Lean will need to traverse (almost)
the entirety of the `FunLike` hierarchy in order to determine this because so many classes have a
`OneHomClass` instance (in fact, this problem is likely worse for `ZeroHomClass`). This can lead to
a significant performance hit when `map_one` fails to apply.

To avoid this problem, we mark these widely applicable simp lemmas with key discrimination tree keys
with `mid` priority in order to ensure that they are not tried first.

We do not use `low`, to allow bundled morphisms to unfold themselves with `low` priority such that
the generic morphism lemmas are applied first. For instance, we might have
```lean
def fooMonoidHom : M →* N where
  toFun := foo; map_one' := sorry; map_mul' := sorry

@[simp low] lemma fooMonoidHom_apply (x : M) : fooMonoidHom x = foo x := rfl
```
As `map_mul` is tagged `simp mid`, this means that it still fires before `fooMonoidHom_apply`, which
is the behavior we desire.
-/

variable [FunLike F M N]

/-- See note [hom simp lemma priority] -/
@[to_additive (attr := simp mid, grind =)]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantd52664f316c2cc3b8323f05b428ddfb4df5b48dc50b0d5e318f70c385255deeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantd52664f316c2cc3b8323f05b428ddfb4df5b48dc50b0d5e318f70c385255deeb.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08ea8a26e80a36ecc853991ae0119013566ebdb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
