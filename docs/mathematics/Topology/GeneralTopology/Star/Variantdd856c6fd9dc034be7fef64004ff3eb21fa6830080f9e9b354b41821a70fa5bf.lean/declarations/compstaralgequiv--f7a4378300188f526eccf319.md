# compStarAlgEquiv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25e8862941cf57e0bc158b219d15f12b88f9f776b708fbd2232b2c585b5d03b5",
  "kind": "def",
  "lexical_name": "compStarAlgEquiv'",
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
  "slug": "compstaralgequiv--f7a4378300188f526eccf319",
  "source": {
    "blob": "93db060648a3419cc805dccda8f52d11a024b60a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7a4378300188f526eccf319cfe21a81c64c09f4c568ff173ce024d7b58abace",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25e8862941cf57e0bc158b219d15f12b88f9f776b708fbd2232b2c585b5d03b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compStarAlgEquiv' (f : X ≃ₜ Y) : C(Y, A) ≃⋆ₐ[𝕜] C(X, A) :=
  { (f : C(X, Y)).compStarAlgHom' 𝕜 A with
    toFun := (f : C(X, Y)).compStarAlgHom' 𝕜 A
    invFun := (f.symm : C(Y, X)).compStarAlgHom' 𝕜 A
    left_inv := fun g => by
      simp only [ContinuousMap.compStarAlgHom'_apply, ContinuousMap.comp_assoc,
        toContinuousMap_comp_symm, ContinuousMap.comp_id]
    right_inv := fun g => by
      simp only [ContinuousMap.compStarAlgHom'_apply, ContinuousMap.comp_assoc,
        symm_comp_toContinuousMap, ContinuousMap.comp_id]
    map_smul' := fun k a => map_smul ((f : C(X, Y)).compStarAlgHom' 𝕜 A) k a }

end Homeomorph

/-! ### Evaluation as a bundled map -/

variable {X : Type*} (S R : Type*) [TopologicalSpace X] [CommSemiring S] [CommSemiring R]
variable [Algebra S R] [TopologicalSpace R] [IsTopologicalSemiring R]

/-- Evaluation of continuous maps at a point, bundled as a star algebra homomorphism. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93db060648a3419cc805dccda8f52d11a024b60a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
