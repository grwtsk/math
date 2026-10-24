# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f436d7869978627d56054704ef133ee38b4b8aec2e65741cadc21b6456e8e07",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--9c08f1e68adec274d18f29fa",
  "source": {
    "blob": "8fd3ec4ae3d2656aff5362a9c1fd7738bc735971",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 199,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c08f1e68adec274d18f29fa98de239cd673162b83c71866fa3f60b290e502b6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f436d7869978627d56054704ef133ee38b4b8aec2e65741cadc21b6456e8e07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : HasStrongEpiMonoFactorisations NonemptyFinLinOrd.{u} :=
  ⟨fun {X Y} f => by
    let I := of (Set.image f ⊤)
    let e : X ⟶ I := ofHom ⟨fun x => ⟨f x, ⟨x, by tauto⟩⟩, fun x₁ x₂ h => f.hom.monotone h⟩
    let m : I ⟶ Y := ofHom ⟨fun y => y.1, by tauto⟩
    haveI : Epi e := by
      rw [epi_iff_surjective]
      rintro ⟨_, y, h, rfl⟩
      exact ⟨y, rfl⟩
    haveI : StrongEpi e := strongEpi_of_epi e
    haveI : Mono m := ConcreteCategory.mono_of_injective _ (fun x y h => Subtype.ext h)
    exact ⟨⟨I, m, e, rfl⟩⟩⟩

end NonemptyFinLinOrd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fd3ec4ae3d2656aff5362a9c1fd7738bc735971` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
