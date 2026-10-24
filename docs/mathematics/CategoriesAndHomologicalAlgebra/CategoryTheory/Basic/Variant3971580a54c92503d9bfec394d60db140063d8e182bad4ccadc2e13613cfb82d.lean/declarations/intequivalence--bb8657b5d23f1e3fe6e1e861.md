# intEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f794b14861a0b63106f431a3b899d415fa517570acfc267a715bdc9f43196306",
  "kind": "def",
  "lexical_name": "intEquivalence",
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
  "slug": "intequivalence--bb8657b5d23f1e3fe6e1e861",
  "source": {
    "blob": "ad0e65a171a27cdfccdd7d2cd7fd505b6497de0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 326,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3971580a54c92503d9bfec394d60db140063d8e182bad4ccadc2e13613cfb82d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb8657b5d23f1e3fe6e1e861c48d0fcfa42d73fbe07eafcb0a0c85f72c48c943",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3971580a54c92503d9bfec394d60db140063d8e182bad4ccadc2e13613cfb82d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f794b14861a0b63106f431a3b899d415fa517570acfc267a715bdc9f43196306`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def intEquivalence : AlgCat.{u} ℤ ≌ RingCat.{u} where
  functor := forget₂ _ _
  inverse.obj A := ↧A
  inverse.map f := AlgCat.ofHom f.hom.toIntAlgHom
  unitIso := NatIso.ofComponents
    fun A ↦ AlgEquiv.toAlgebraIso (@.ofRingEquiv (f := RingEquiv.refl _)
      _ _ _ _ _ _ _ (Ring.toIntAlgebra _) fun _ ↦ by simp)
  counitIso := Iso.refl _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3971580a54c92503d9bfec394d60db140063d8e182bad4ccadc2e13613cfb82d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3971580a54c92503d9bfec394d60db140063d8e182bad4ccadc2e13613cfb82d.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad0e65a171a27cdfccdd7d2cd7fd505b6497de0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
