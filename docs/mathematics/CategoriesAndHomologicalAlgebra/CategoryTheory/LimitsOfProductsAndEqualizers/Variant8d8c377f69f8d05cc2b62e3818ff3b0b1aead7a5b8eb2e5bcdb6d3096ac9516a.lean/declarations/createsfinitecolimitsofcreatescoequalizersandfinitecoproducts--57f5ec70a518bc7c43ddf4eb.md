# createsFiniteColimitsOfCreatesCoequalizersAndFiniteCoproducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6073629d6a1ef3b7f3b0d1ef31b4fde557751cf466bcc86266582391a85f134a",
  "kind": "def",
  "lexical_name": "createsFiniteColimitsOfCreatesCoequalizersAndFiniteCoproducts",
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
  "slug": "createsfinitecolimitsofcreatescoequalizersandfinitecoproducts--57f5ec70a518bc7c43ddf4eb",
  "source": {
    "blob": "0cb07be533ff817a9e71312353f10ec070224669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 522,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant8d8c377f69f8d05cc2b62e3818ff3b0b1aead7a5b8eb2e5bcdb6d3096ac9516a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57f5ec70a518bc7c43ddf4ebddbec029da42c6c3e3dd6f0c9e17ed699b30067f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant8d8c377f69f8d05cc2b62e3818ff3b0b1aead7a5b8eb2e5bcdb6d3096ac9516a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6073629d6a1ef3b7f3b0d1ef31b4fde557751cf466bcc86266582391a85f134a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def createsFiniteColimitsOfCreatesCoequalizersAndFiniteCoproducts [HasCoequalizers D]
    [HasFiniteCoproducts D] (G : C ⥤ D) [G.ReflectsIsomorphisms]
    [CreatesColimitsOfShape WalkingParallelPair G]
    [CreatesFiniteCoproducts G] : CreatesFiniteColimits G where
  createsFiniteColimits _ _ _ := createsColimitsOfShapeOfCreatesCoequalizersAndCoproducts G

/-- If a functor creates coequalizers and coproducts, it creates colimits.

We additionally require the rather strong condition that the functor reflects isomorphisms. It is
unclear whether the statement remains true without this condition. There are various definitions of
"creating colimits" in the literature, and whether or not the condition can be dropped seems to
depend on the specific definition that is used. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant8d8c377f69f8d05cc2b62e3818ff3b0b1aead7a5b8eb2e5bcdb6d3096ac9516a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant8d8c377f69f8d05cc2b62e3818ff3b0b1aead7a5b8eb2e5bcdb6d3096ac9516a.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cb07be533ff817a9e71312353f10ec070224669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
