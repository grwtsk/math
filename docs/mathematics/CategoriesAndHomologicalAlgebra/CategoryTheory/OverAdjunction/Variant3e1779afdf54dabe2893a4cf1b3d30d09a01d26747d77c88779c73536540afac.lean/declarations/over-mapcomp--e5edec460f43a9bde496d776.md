# Over.mapComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70ca82b9e53af06cd753bcd73ceaf17c18fb622cd8ea8fb3a675c4caa1391163",
  "kind": "def",
  "lexical_name": "Over.mapComp",
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
  "slug": "over-mapcomp--e5edec460f43a9bde496d776",
  "source": {
    "blob": "07cc869b57174a8d65c1d906b5f226f9045adc4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5edec460f43a9bde496d7760fd955df4008adbebd6f28793dab93901689b5f7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70ca82b9e53af06cd753bcd73ceaf17c18fb622cd8ea8fb3a675c4caa1391163`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Over.mapComp {X Y Z : T} {f : X ⟶ Y} (hf : P f) {g : Y ⟶ Z} (hg : P g) [Q.RespectsIso] :
    map Q (P.comp_mem f g hf hg) ≅ map Q hf ⋙ map Q hg :=
  NatIso.ofComponents (fun X ↦ Over.isoMk (Iso.refl _))

end Map

section Pullback

variable [HasPullbacks T] [P.IsStableUnderBaseChange] [Q.IsStableUnderBaseChange]

/-- If `P` and `Q` are stable under base change and pullbacks exist in `T`,
this is the functor `P.Over Q Y ⥤ P.Over Q X` given by base change along `f`. -/
@[simps! obj_left obj_hom map_left]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07cc869b57174a8d65c1d906b5f226f9045adc4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
