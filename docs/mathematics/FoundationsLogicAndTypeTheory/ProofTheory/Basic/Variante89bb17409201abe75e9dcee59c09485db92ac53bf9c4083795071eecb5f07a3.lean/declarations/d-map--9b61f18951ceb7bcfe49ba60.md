# d_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98ffadc8-355f-c695-edb8-4cf6c8a8c080",
  "kind": "lemma",
  "lexical_name": "d_map",
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
  "slug": "d-map--9b61f18951ceb7bcfe49ba60",
  "source": {
    "blob": "aa44e83ad0f0afccc5ac6719efbe5cb38c3d565a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variante89bb17409201abe75e9dcee59c09485db92ac53bf9c4083795071eecb5f07a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b61f18951ceb7bcfe49ba6099c8a179483f6ca60cb5cb9d883f208c2ce44cb4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variante89bb17409201abe75e9dcee59c09485db92ac53bf9c4083795071eecb5f07a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98ffadc8-355f-c695-edb8-4cf6c8a8c080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma d_map (a : A) : D.d (f a) = 0 :=
  letI := f.hom.toAlgebra
  letI := Module.compHom M f.hom
  D.map_algebraMap a

end Derivation

end ModuleCat

namespace CommRingCat

variable {A B A' B' : CommRingCat.{u}} {f : A ⟶ B} {f' : A' ⟶ B'}
  {g : A ⟶ A'} {g' : B ⟶ B'} (fac : g ≫ f' = f ≫ g')

variable (f) in
/-- The module of differentials of a morphism `f : A ⟶ B` in the category `CommRingCat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variante89bb17409201abe75e9dcee59c09485db92ac53bf9c4083795071eecb5f07a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variante89bb17409201abe75e9dcee59c09485db92ac53bf9c4083795071eecb5f07a3.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa44e83ad0f0afccc5ac6719efbe5cb38c3d565a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
