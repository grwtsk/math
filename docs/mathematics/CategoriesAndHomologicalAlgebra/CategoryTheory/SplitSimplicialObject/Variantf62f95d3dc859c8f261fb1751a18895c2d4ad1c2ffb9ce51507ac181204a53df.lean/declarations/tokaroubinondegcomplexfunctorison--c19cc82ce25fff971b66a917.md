# toKaroubiNondegComplexFunctorIsoN₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad6a93498831d556388c51186578a94b6fa6320a1cadad7dc272445d502c8761",
  "kind": "def",
  "lexical_name": "toKaroubiNondegComplexFunctorIsoN₁",
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
  "slug": "tokaroubinondegcomplexfunctorison--c19cc82ce25fff971b66a917",
  "source": {
    "blob": "09547c87adbffce2a3f8c9103149b27f8b2e3fa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 248,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c19cc82ce25fff971b66a91781c9b744343b97e3161c2d8d1ffd123fceaa7df0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad6a93498831d556388c51186578a94b6fa6320a1cadad7dc272445d502c8761`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toKaroubiNondegComplexFunctorIsoN₁ :
    nondegComplexFunctor ⋙ toKaroubi (ChainComplex C ℕ) ≅ forget C ⋙ DoldKan.N₁ :=
  NatIso.ofComponents (fun S => S.s.toKaroubiNondegComplexIsoN₁) fun Φ => by
    ext n
    dsimp
    simp only [Karoubi.comp_f, toKaroubi_map_f, HomologicalComplex.comp_f,
      nondegComplexFunctor_map_f, Splitting.toKaroubiNondegComplexIsoN₁_hom_f_f, N₁_map_f,
      AlternatingFaceMapComplex.map_f, assoc, PInfty_f_idem_assoc]
    erw [← Split.cofan_inj_naturality_symm_assoc Φ (Splitting.IndexSet.id (op ⦋n⦌))]
    rw [PInfty_f_naturality]

end Split

end SimplicialObject
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09547c87adbffce2a3f8c9103149b27f8b2e3fa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
