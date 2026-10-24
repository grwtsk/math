# Functor.preimageHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b1e9531b57c4eceabceb21a3c24c1026df0a2436d08bb2ed66c40215bc05753",
  "kind": "def",
  "lexical_name": "Functor.preimageHomotopy",
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
  "slug": "functor-preimagehomotopy--7bef1faeb42fc9ea802ea8fb",
  "source": {
    "blob": "814e1209b603751126bc2e99d57d278d62b0ab03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 306,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant2316e2762d9d83afd89e29e950f454d69e38228cb833e2658d236cdc7d9eddfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bef1faeb42fc9ea802ea8fb76c07b3f512e868e63b29cc882a6ce27298639e1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant2316e2762d9d83afd89e29e950f454d69e38228cb833e2658d236cdc7d9eddfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b1e9531b57c4eceabceb21a3c24c1026df0a2436d08bb2ed66c40215bc05753`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Functor.preimageHomotopy
    (F : V ⥤ W) [F.Additive] [F.Full] [F.Faithful]
    {K L : HomologicalComplex V c} {f₁ f₂ : K ⟶ L}
    (H : Homotopy ((F.mapHomologicalComplex c).map f₁) ((F.mapHomologicalComplex c).map f₂)) :
    Homotopy f₁ f₂ where
  hom i j := F.preimage (H.hom i j)
  zero i j hij := F.map_injective (by simp only [map_preimage, Functor.map_zero, H.zero i j hij])
  comm i := F.map_injective (by simp [dsimp% H.comm i, dNext, prevD])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant2316e2762d9d83afd89e29e950f454d69e38228cb833e2658d236cdc7d9eddfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant2316e2762d9d83afd89e29e950f454d69e38228cb833e2658d236cdc7d9eddfa.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `814e1209b603751126bc2e99d57d278d62b0ab03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
