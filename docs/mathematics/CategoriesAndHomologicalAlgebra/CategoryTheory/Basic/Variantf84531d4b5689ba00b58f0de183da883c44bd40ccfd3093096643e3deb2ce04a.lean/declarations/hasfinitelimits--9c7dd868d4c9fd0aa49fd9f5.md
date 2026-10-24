# hasFiniteLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6b869d17ab03081743b68380e0aa8a2a0e0f24b22732f5b0fa84b4115183017",
  "kind": "instance",
  "lexical_name": "hasFiniteLimits",
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
  "slug": "hasfinitelimits--9c7dd868d4c9fd0aa49fd9f5",
  "source": {
    "blob": "7782b615a3fef054c02742181b218ce519e1d9a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c7dd868d4c9fd0aa49fd9f545acecc24656d69bf6bb29e5362927ce81224d14",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6b869d17ab03081743b68380e0aa8a2a0e0f24b22732f5b0fa84b4115183017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasFiniteLimits {B : C} [HasFiniteWidePullbacks C] : HasFiniteLimits (Over B) := by
  apply @hasFiniteLimits_of_hasEqualizers_and_finite_products _ _ ?_ ?_
  · exact ConstructProducts.over_finiteProducts_of_finiteWidePullbacks
  · apply @hasEqualizers_of_hasPullbacks_and_binary_products _ _ ?_ _
    haveI : HasPullbacks C := ⟨inferInstance⟩
    exact ConstructProducts.over_binaryProduct_of_pullback

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf84531d4b5689ba00b58f0de183da883c44bd40ccfd3093096643e3deb2ce04a.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7782b615a3fef054c02742181b218ce519e1d9a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
