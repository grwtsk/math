# CochainComplex.homologySuccIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71cd68d3d779c5b1c1e58d34ba4e7c97ccda2b09b1ce6b51f2c7b575c044258d",
  "kind": "def",
  "lexical_name": "CochainComplex.homologySuccIso",
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
  "slug": "cochaincomplex-homologysucciso--9cfa0baecc419c5ee5ca6893",
  "source": {
    "blob": "b22e4e18ade5de3e43e61479d8bf5ab205f79761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 182,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant41d6ec0ed0dfe2f71af3a44837b5f3301c9288a4a9d1e49859d12ad1fd084289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cfa0baecc419c5ee5ca689379b39b132d0298c62af6351525d7ec627c57c38b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant41d6ec0ed0dfe2f71af3a44837b5f3301c9288a4a9d1e49859d12ad1fd084289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71cd68d3d779c5b1c1e58d34ba4e7c97ccda2b09b1ce6b51f2c7b575c044258d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CochainComplex.homologySuccIso [HasKernels V] [HasImages V] [HasCokernels V]
    (C : CochainComplex V ℕ) (n : ℕ) :
    C.homology (n + 1) ≅ homology (C.d n (n + 1)) (C.d (n + 1) (n + 2)) (C.d_comp_d _ _ _) :=
  C.homologyIso rfl rfl
#align cochain_complex.homology_succ_iso CochainComplex.homologySuccIso

open HomologicalComplex

/-! Computing the cycles is functorial. -/


section

variable [HasKernels V]

variable {C₁ C₂ C₃ : HomologicalComplex V c} (f : C₁ ⟶ C₂)

/-- The morphism between cycles induced by a chain map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant41d6ec0ed0dfe2f71af3a44837b5f3301c9288a4a9d1e49859d12ad1fd084289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant41d6ec0ed0dfe2f71af3a44837b5f3301c9288a4a9d1e49859d12ad1fd084289.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22e4e18ade5de3e43e61479d8bf5ab205f79761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
