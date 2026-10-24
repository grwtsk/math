# MorphismProperty.underEquivOfIsTerminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc6463b2af4f72cf34077992649c164c744b4a58c8a01a445cfe7facdfe3c2d1",
  "kind": "def",
  "lexical_name": "MorphismProperty.underEquivOfIsTerminal",
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
  "slug": "morphismproperty-underequivofisterminal--0fe07e716be71e303baecff6",
  "source": {
    "blob": "45735e87bafe5b72634438077c1e9671cae4e9cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 87,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictInitial/Variantae2781cb6c5859e6720163ad3fd9c706d8f2473347389da2cc8058e7b4be0be4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fe07e716be71e303baecff62917312047bfa43bfeefab797143ac7e4e480ca7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictInitial/Variantae2781cb6c5859e6720163ad3fd9c706d8f2473347389da2cc8058e7b4be0be4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc6463b2af4f72cf34077992649c164c744b4a58c8a01a445cfe7facdfe3c2d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MorphismProperty.underEquivOfIsTerminal [HasStrictTerminalObjects C] (X : C)
    (h : IsTerminal X) :
    P.Under Q X ≌ Discrete PUnit.{w + 1} where
  functor := Functor.star _
  inverse := Functor.fromPUnit (.mk _ (𝟙 X) (P.id_mem _))
  counitIso := Iso.refl _
  unitIso := NatIso.ofComponents fun A ↦
    haveI := h.isIso_from A.hom
    Under.isoMk (asIso A.hom).symm

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictInitial/Variantae2781cb6c5859e6720163ad3fd9c706d8f2473347389da2cc8058e7b4be0be4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictInitial/Variantae2781cb6c5859e6720163ad3fd9c706d8f2473347389da2cc8058e7b4be0be4.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45735e87bafe5b72634438077c1e9671cae4e9cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
