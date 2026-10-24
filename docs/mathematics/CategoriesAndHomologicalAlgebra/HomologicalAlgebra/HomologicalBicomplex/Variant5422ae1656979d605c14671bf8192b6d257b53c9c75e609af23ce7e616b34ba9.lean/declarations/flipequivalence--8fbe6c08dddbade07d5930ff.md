# flipEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63428ca1758390c554876c371e45f0a612a3f4db8b07de2fc27d15fb907d3a00",
  "kind": "def",
  "lexical_name": "flipEquivalence",
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
  "slug": "flipequivalence--8fbe6c08dddbade07d5930ff",
  "source": {
    "blob": "e9f7ce59fdfb94a4286c6503668e36da197012ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 192,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fbe6c08dddbade07d5930ff56713d5fe9e5519332a763707fabb0cf381bdd5a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63428ca1758390c554876c371e45f0a612a3f4db8b07de2fc27d15fb907d3a00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def flipEquivalence :
    HomologicalComplex₂ C c₁ c₂ ≌ HomologicalComplex₂ C c₂ c₁ where
  functor := flipFunctor C c₁ c₂
  inverse := flipFunctor C c₂ c₁
  unitIso := flipEquivalenceUnitIso C c₁ c₂
  counitIso := flipEquivalenceCounitIso C c₁ c₂

variable (K : HomologicalComplex₂ C c₁ c₂)

/-- The obvious isomorphism `(K.X x₁).X x₂ ≅ (K.X y₁).X y₂` when `x₁ = y₁` and `x₂ = y₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f7ce59fdfb94a4286c6503668e36da197012ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
