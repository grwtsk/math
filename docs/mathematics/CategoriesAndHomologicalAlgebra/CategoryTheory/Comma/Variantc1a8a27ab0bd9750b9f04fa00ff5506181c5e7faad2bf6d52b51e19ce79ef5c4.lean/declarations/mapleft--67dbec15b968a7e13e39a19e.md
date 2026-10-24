# mapLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02a731660940a7f69ab42c35cb534423c415a6a743b2ca2191085099e70a3102",
  "kind": "def",
  "lexical_name": "mapLeft",
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
  "slug": "mapleft--67dbec15b968a7e13e39a19e",
  "source": {
    "blob": "5af4fefc01c3536684298fd8e6ad63b6797c1e96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 257,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67dbec15b968a7e13e39a19e903e3c1013af95e4b8cbd5a59ffd0940f71ada23",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02a731660940a7f69ab42c35cb534423c415a6a743b2ca2191085099e70a3102`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapLeft (l : L₁ ⟶ L₂) (hl : ∀ X : P.Comma L₂ R Q W, P (l.app X.left ≫ X.hom)) :
    P.Comma L₂ R Q W ⥤ P.Comma L₁ R Q W :=
  lift (forget _ _ _ _ _ ⋙ CategoryTheory.Comma.mapLeft R l) hl
    (fun f ↦ f.prop_hom_left) (fun f ↦ f.prop_hom_right)

variable (L) in
/-- A natural transformation `R₁ ⟶ R₂` induces a functor `P.Comma L R₁ Q W ⥤ P.Comma L R₂ Q W`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af4fefc01c3536684298fd8e6ad63b6797c1e96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
