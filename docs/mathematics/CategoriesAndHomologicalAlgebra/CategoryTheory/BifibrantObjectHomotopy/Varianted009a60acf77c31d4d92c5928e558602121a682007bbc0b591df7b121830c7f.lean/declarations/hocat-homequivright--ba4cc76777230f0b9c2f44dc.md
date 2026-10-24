# HoCat.homEquivRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd7e150e3c5017975808d226a2144e94347a9872f095a653de13eeb7999fb0de",
  "kind": "def",
  "lexical_name": "HoCat.homEquivRight",
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
  "slug": "hocat-homequivright--ba4cc76777230f0b9c2f44dc",
  "source": {
    "blob": "a2a2104c2103d2dfd3a95cbb57def638509921c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 147,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba4cc76777230f0b9c2f44dcb038f1e7eca41bb35e617efdb96d8f27d13f2a8f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd7e150e3c5017975808d226a2144e94347a9872f095a653de13eeb7999fb0de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HoCat.homEquivRight :
    RightHomotopyClass X Y ≃ (toHoCat.obj (mk X) ⟶ toHoCat.obj (mk Y)) where
  toFun := Quot.lift (fun f ↦ toHoCat.map (homMk f)) (fun _ _ h ↦ by rwa [toHoCat_map_eq_iff])
  invFun := Quot.lift (fun f ↦ .mk f.hom) (fun _ _ h ↦ by
    simpa [RightHomotopyClass.mk_eq_mk_iff] using! h)
  left_inv := by rintro ⟨f⟩; rfl
  right_inv := by rintro ⟨f⟩; rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a2104c2103d2dfd3a95cbb57def638509921c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
