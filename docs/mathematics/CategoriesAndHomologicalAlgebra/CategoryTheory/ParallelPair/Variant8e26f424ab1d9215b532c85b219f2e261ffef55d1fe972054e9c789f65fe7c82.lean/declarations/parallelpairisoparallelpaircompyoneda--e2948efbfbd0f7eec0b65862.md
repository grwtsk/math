# parallelPairIsoParallelPairCompYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c2bd47233d28b35e167d3cb893e591337685325fe6f15f528cd976b69b1c33b",
  "kind": "def",
  "lexical_name": "parallelPairIsoParallelPairCompYoneda",
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
  "slug": "parallelpairisoparallelpaircompyoneda--e2948efbfbd0f7eec0b65862",
  "source": {
    "blob": "9a04da4b322404eec16d8d5103c752442547690c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variant8e26f424ab1d9215b532c85b219f2e261ffef55d1fe972054e9c789f65fe7c82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2948efbfbd0f7eec0b65862536f862b672adefe17695330aec5b9d01aae0aed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variant8e26f424ab1d9215b532c85b219f2e261ffef55d1fe972054e9c789f65fe7c82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c2bd47233d28b35e167d3cb893e591337685325fe6f15f528cd976b69b1c33b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def parallelPairIsoParallelPairCompYoneda {A B : Cᵒᵖ ⥤ Type v₁} {f g : A ⟶ B}
    (P : IndParallelPairPresentation f g) :
    parallelPair f g ≅ parallelPair P.φ P.ψ ⋙ (whiskeringRight _ _ _).obj yoneda ⋙ colim :=
  parallelPair.ext
    (P.isColimit₁.coconePointUniqueUpToIso (colimit.isColimit _))
    (P.isColimit₂.coconePointUniqueUpToIso (colimit.isColimit _))
    (P.isColimit₁.hom_ext (fun j => by
      simp [P.hf, P.isColimit₁.ι_map_assoc, P.isColimit₁.comp_coconePointUniqueUpToIso_hom_assoc,
        P.isColimit₂.comp_coconePointUniqueUpToIso_hom]))
    (P.isColimit₁.hom_ext (fun j => by
      simp [P.hg, P.isColimit₁.ι_map_assoc, P.isColimit₁.comp_coconePointUniqueUpToIso_hom_assoc,
        P.isColimit₂.comp_coconePointUniqueUpToIso_hom]))

end IndParallelPairPresentation

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variant8e26f424ab1d9215b532c85b219f2e261ffef55d1fe972054e9c789f65fe7c82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variant8e26f424ab1d9215b532c85b219f2e261ffef55d1fe972054e9c789f65fe7c82.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a04da4b322404eec16d8d5103c752442547690c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
