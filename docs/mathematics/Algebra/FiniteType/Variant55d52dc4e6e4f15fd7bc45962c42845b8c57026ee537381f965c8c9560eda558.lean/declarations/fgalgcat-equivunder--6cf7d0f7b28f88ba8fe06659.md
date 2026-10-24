# FGAlgCat.equivUnder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:562ffd491860a2ea047b40527d1b6258d9b7c3302938fd5f67e7585eaac83dec",
  "kind": "def",
  "lexical_name": "FGAlgCat.equivUnder",
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
  "slug": "fgalgcat-equivunder--6cf7d0f7b28f88ba8fe06659",
  "source": {
    "blob": "c845cfc156fea8e54cc2e014e75e69fe3248285d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 110,
    "path": "GRWTSK/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cf7d0f7b28f88ba8fe0665921a4f34e179eb003605a7c8b5da3a4942fc49f5a",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:562ffd491860a2ea047b40527d1b6258d9b7c3302938fd5f67e7585eaac83dec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FGAlgCat.equivUnder (R : CommRingCat.{u}) :
    FGAlgCat R ≌ MorphismProperty.Under (toMorphismProperty FiniteType) ⊤ R where
  functor.obj A := ⟨(commAlgCatEquivUnder R).functor.obj A.obj,
    (RingHom.finiteType_algebraMap (A := R) (B := A.obj)).mpr A.2⟩
  functor.map {A B} f := ⟨(commAlgCatEquivUnder R).functor.map f.hom, trivial, trivial⟩
  inverse.obj A := ⟨(commAlgCatEquivUnder R).inverse.obj A.1, A.2⟩
  inverse.map {A B} f := ObjectProperty.homMk ((commAlgCatEquivUnder R).inverse.map f.hom)
  unitIso := NatIso.ofComponents fun A ↦
    ObjectProperty.isoMk _ (CommAlgCat.isoMk { toRingEquiv := .refl A.1, commutes' _ := rfl })
  counitIso := .refl _

variable {Q : MorphismProperty CommRingCat.{u}}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c845cfc156fea8e54cc2e014e75e69fe3248285d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
