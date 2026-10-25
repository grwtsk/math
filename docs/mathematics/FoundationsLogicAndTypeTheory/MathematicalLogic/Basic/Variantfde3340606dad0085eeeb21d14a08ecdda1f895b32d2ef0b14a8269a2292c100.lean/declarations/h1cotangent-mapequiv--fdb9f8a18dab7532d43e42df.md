# H1Cotangent.mapEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26889c35e684e5ee19f208e712b99588f6ecef44319ff699da564aecd136b375",
  "kind": "def",
  "lexical_name": "H1Cotangent.mapEquiv",
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
  "slug": "h1cotangent-mapequiv--fdb9f8a18dab7532d43e42df",
  "source": {
    "blob": "ce1d4e0bae9401d8861b341c5370bebbceb5aa56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 476,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfde3340606dad0085eeeb21d14a08ecdda1f895b32d2ef0b14a8269a2292c100.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdb9f8a18dab7532d43e42df7d1f98cf187e6394d7b8b880e84bf5d44ca488cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfde3340606dad0085eeeb21d14a08ecdda1f895b32d2ef0b14a8269a2292c100.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26889c35e684e5ee19f208e712b99588f6ecef44319ff699da564aecd136b375`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def H1Cotangent.mapEquiv (e : S ≃ₐ[R] S') :
    H1Cotangent R S ≃ₗ[R] H1Cotangent R S' :=
  -- we are constructing data, so we do not use `algebraize`
  letI := e.toRingHom.toAlgebra
  letI := e.symm.toRingHom.toAlgebra
  have : IsScalarTower R S S' := .of_algebraMap_eq' e.toAlgHom.comp_algebraMap.symm
  have : IsScalarTower R S' S := .of_algebraMap_eq' e.symm.toAlgHom.comp_algebraMap.symm
  have : IsScalarTower S S' S := .of_algebraMap_eq fun _ ↦ (e.symm_apply_apply _).symm
  have : IsScalarTower S' S S' := .of_algebraMap_eq fun _ ↦ (e.apply_symm_apply _).symm
  { toFun := map R R S S'
    invFun := map R R S' S
    left_inv x := by
      show ((map R R S' S).restrictScalars S ∘ₗ map R R S S') x = x
      rw [map, map, ← Extension.H1Cotangent.map_comp, Extension.H1Cotangent.map_eq,
        Extension.H1Cotangent.map_id, LinearMap.id_apply]
    right_inv x := by
      show ((map R R S S').restrictScalars S' ∘ₗ map R R S' S) x = x
      rw [map, map, ← Extension.H1Cotangent.map_comp, Extension.H1Cotangent.map_eq,
        Extension.H1Cotangent.map_id, LinearMap.id_apply]
    map_add' := LinearMap.map_add (map R R S S')
    map_smul' := LinearMap.CompatibleSMul.map_smul (map R R S S') }

variable {R S S' T}

/-- `H¹(L_{S/R})` is independent of the presentation chosen. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfde3340606dad0085eeeb21d14a08ecdda1f895b32d2ef0b14a8269a2292c100.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfde3340606dad0085eeeb21d14a08ecdda1f895b32d2ef0b14a8269a2292c100.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce1d4e0bae9401d8861b341c5370bebbceb5aa56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
