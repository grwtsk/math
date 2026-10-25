# lTensor_cotangentComplex_eq_cotangentComplexBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42c98901b2485eac9cc7ca39d34541979ac3c956",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45306bb5cca99b49e9bfb879abcf56a4a6d7df9f383520fc61a60d93a9ab2f2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1a47cd7-2c06-81d7-807e-65eb0dd01bd6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c75fcaa-471a-1700-6e97-29d98433a107",
  "kind": "lemma",
  "lexical_name": "lTensor_cotangentComplex_eq_cotangentComplexBaseChange",
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
  "slug": "ltensor-cotangentcomplex-eq-cotangentcomplexbasechange--05d720dd889bcecde1c7e347",
  "source": {
    "blob": "42c98901b2485eac9cc7ca39d34541979ac3c956",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant45306bb5cca99b49e9bfb879abcf56a4a6d7df9f383520fc61a60d93a9ab2f2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05d720dd889bcecde1c7e3476e088848fb5d9be59632184b2ffc717698f0395e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant45306bb5cca99b49e9bfb879abcf56a4a6d7df9f383520fc61a60d93a9ab2f2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c75fcaa-471a-1700-6e97-29d98433a107`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lTensor_cotangentComplex_eq_cotangentComplexBaseChange :
  P.cotangentComplex.baseChange A =
    (AlgebraTensorModule.cancelBaseChange P.Ring S A A Ω[P.Ring⁄R]).symm ∘ₗ
      cotangentComplexBaseChange R S P.Ring A ∘ₗ
      ((AlgebraTensorModule.cancelBaseChange P.Ring S A A P.ker).symm ≪≫ₗ
        P.cotangentEquiv.baseChange (A := A)).symm := by
  apply LinearMap.coe_injective
  dsimp
  rw [LinearEquiv.eq_symm_comp, ← LinearEquiv.comp_symm_eq]
  exact congr(($(cotangentComplexBaseChange_eq_lTensor_cotangentComplex P A) : _ → _)).symm

end baseChange

universe w' u' v'

variable {R' : Type u'} {S' : Type v'} [CommRing R'] [CommRing S'] [Algebra R' S']
variable (P' : Extension.{w'} R' S')
variable [Algebra R R'] [Algebra S S'] [Algebra R S'] [IsScalarTower R R' S']

attribute [local instance] SMulCommClass.of_commMonoid

variable {P P'}

universe w'' u'' v''

variable {R'' : Type u''} {S'' : Type v''} [CommRing R''] [CommRing S''] [Algebra R'' S'']
variable {P'' : Extension.{w''} R'' S''}
variable [Algebra R R''] [Algebra S S''] [Algebra R S'']
  [IsScalarTower R R'' S'']
variable [Algebra R' R''] [Algebra S' S''] [Algebra R' S'']
  [IsScalarTower R' R'' S'']
variable [IsScalarTower R R' R''] [IsScalarTower S S' S'']

namespace CotangentSpace

/--
This is the map on the cotangent space associated to a map of presentation.
The matrix associated to this map is the Jacobian matrix. See `CotangentSpace.repr_map`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant45306bb5cca99b49e9bfb879abcf56a4a6d7df9f383520fc61a60d93a9ab2f2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant45306bb5cca99b49e9bfb879abcf56a4a6d7df9f383520fc61a60d93a9ab2f2e.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42c98901b2485eac9cc7ca39d34541979ac3c956` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
