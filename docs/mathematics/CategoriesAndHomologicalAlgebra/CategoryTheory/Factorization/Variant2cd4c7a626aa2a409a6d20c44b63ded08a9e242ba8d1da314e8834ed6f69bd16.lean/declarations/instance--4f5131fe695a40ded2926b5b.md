# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71587974f41f94f51ed89c2814c00b52c1aa53559755d9b49238c90a20533e97",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4f5131fe695a40ded2926b5b",
  "source": {
    "blob": "0c75a4d1f6f27d2e0b151a8ef1c4ba3dce63e408",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 280,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant2cd4c7a626aa2a409a6d20c44b63ded08a9e242ba8d1da314e8834ed6f69bd16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f5131fe695a40ded2926b5b2b295f600e44fb979bf93fd482ec6b407b4df481",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant2cd4c7a626aa2a409a6d20c44b63ded08a9e242ba8d1da314e8834ed6f69bd16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71587974f41f94f51ed89c2814c00b52c1aa53559755d9b49238c90a20533e97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [HasFunctorialFactorization W₁ W₂] (J : Type*) [Category* J] :
    HasFunctorialFactorization (W₁.functorCategory J) (W₂.functorCategory J) :=
  ⟨⟨(functorialFactorizationData W₁ W₂).functorCategory J⟩⟩

set_option backward.defeqAttrib.useBackward true in
variable {W₁ W₂} in
/-- The term in `MapFactorizationData (W₁.inverseImage F) (W₂.inverseImage F) f`
deduced from `h : MapFactorizationData W₁ W₂ (F.map f)` when `F` is an equivalence
of categories and both `W₁` and `W₂` respect isomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant2cd4c7a626aa2a409a6d20c44b63ded08a9e242ba8d1da314e8834ed6f69bd16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant2cd4c7a626aa2a409a6d20c44b63ded08a9e242ba8d1da314e8834ed6f69bd16.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c75a4d1f6f27d2e0b151a8ef1c4ba3dce63e408` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
