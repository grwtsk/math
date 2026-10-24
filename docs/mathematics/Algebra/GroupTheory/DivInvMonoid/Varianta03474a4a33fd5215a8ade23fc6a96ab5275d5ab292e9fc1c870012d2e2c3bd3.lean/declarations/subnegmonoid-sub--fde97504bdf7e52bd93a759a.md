# SubNegMonoid.sub'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f528eb5d70633ca277660ff60324dce8a8879e586c32f654bcfdf5c5759384c8",
  "kind": "def",
  "lexical_name": "SubNegMonoid.sub'",
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
  "slug": "subnegmonoid-sub--fde97504bdf7e52bd93a759a",
  "source": {
    "blob": "c44f325c63455b7c02d3240f442277cf4029161f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 162,
    "path": "GRWTSK/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fde97504bdf7e52bd93a759a116e9f90e94ad7af83446c4a395e98f21546105f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f528eb5d70633ca277660ff60324dce8a8879e586c32f654bcfdf5c5759384c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SubNegMonoid.sub' {G : Type*} [AddMonoid G] [Neg G] (a b : G) : G := a + -b

attribute [to_additive existing SubNegMonoid.sub'] DivInvMonoid.div'

/-- A `SubNegMonoid` is an `AddMonoid` with unary `-` and binary `-` operations
satisfying `sub_eq_add_neg : ∀ a b, a - b = a + -b`.

The default for `sub` is such that `a - b = a + -b` holds by definition.

Adding `sub` as a field rather than defining `a - b := a + -b` allows us to
avoid certain classes of unification failures, for example:
Let `foo X` be a type with a `∀ X, Sub (Foo X)` instance but no
`∀ X, Neg (Foo X)`. Suppose we also have an instance
`∀ X [Cromulent X], AddGroup (Foo X)`. Then the `(-)` coming from
`AddGroup.sub` cannot be definitionally equal to the `(-)` coming from
`Foo.Sub`.

In the same way, adding a `zsmul` field makes it possible to avoid definitional failures
in diamonds. See the definition of `AddMonoid` and Note [forgetful inheritance] for more
explanations on this.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c44f325c63455b7c02d3240f442277cf4029161f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
