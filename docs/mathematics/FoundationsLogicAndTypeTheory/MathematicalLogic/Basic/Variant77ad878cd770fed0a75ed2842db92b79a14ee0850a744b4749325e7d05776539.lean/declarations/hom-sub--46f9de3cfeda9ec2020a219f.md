# Hom.sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09ae841a24c0827328fa9c4bd4ca6f1e0c7cb7ff706682e4baf15a0b98ba4be6",
  "kind": "def",
  "lexical_name": "Hom.sub",
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
  "slug": "hom-sub--46f9de3cfeda9ec2020a219f",
  "source": {
    "blob": "46bb87bb1c79545b2527777f455d3a1d32fe6cf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46f9de3cfeda9ec2020a219f43d73da1e6cfed4ddf4c3cd7dc8e7781dfed7397",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09ae841a24c0827328fa9c4bd4ca6f1e0c7cb7ff706682e4baf15a0b98ba4be6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Hom.sub (f g : Hom P P') : P.CotangentSpace →ₗ[S] P'.Cotangent := by
  letI := ((algebraMap S S').comp (algebraMap P.Ring S)).toAlgebra
  haveI : IsScalarTower P.Ring S S' := IsScalarTower.of_algebraMap_eq' rfl
  letI := f.toAlgHom.toAlgebra
  haveI : IsScalarTower P.Ring P'.Ring S' :=
    IsScalarTower.of_algebraMap_eq fun x ↦ (f.algebraMap_toRingHom x).symm
  haveI : IsScalarTower R P.Ring S' :=
    IsScalarTower.of_algebraMap_eq fun x ↦
      show algebraMap R S' x = algebraMap S S' (algebraMap P.Ring S (algebraMap R P.Ring x)) by
        rw [← IsScalarTower.algebraMap_apply R P.Ring S, ← IsScalarTower.algebraMap_apply]
  refine (Derivation.liftKaehlerDifferential ?_).liftBaseChange S
  refine
  { __ := Cotangent.mk.restrictScalars R ∘ₗ f.subToKer g
    map_one_eq_zero' := ?_
    leibniz' := ?_ }
  · ext
    simp [Ideal.toCotangent_eq_zero]
  · intro x y
    ext
    simp only [LinearMap.coe_comp, LinearMap.coe_restrictScalars, Function.comp_apply,
      Cotangent.val_mk, Cotangent.val_add, Cotangent.val_smul''', ← map_smul, ← map_add,
      Ideal.toCotangent_eq]
    exact Hom.sub_aux f g x y

variable [IsScalarTower R S S']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46bb87bb1c79545b2527777f455d3a1d32fe6cf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
