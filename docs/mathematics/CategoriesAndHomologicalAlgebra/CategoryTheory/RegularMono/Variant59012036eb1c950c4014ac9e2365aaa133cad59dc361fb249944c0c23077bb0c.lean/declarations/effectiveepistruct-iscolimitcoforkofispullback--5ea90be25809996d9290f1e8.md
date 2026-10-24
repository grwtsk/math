# EffectiveEpiStruct.isColimitCoforkOfIsPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d95cbd37835dc4ba3f31e6bf501550f6d5fe52baf49431361c466eed09e0ed82",
  "kind": "def",
  "lexical_name": "EffectiveEpiStruct.isColimitCoforkOfIsPullback",
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
  "slug": "effectiveepistruct-iscolimitcoforkofispullback--5ea90be25809996d9290f1e8",
  "source": {
    "blob": "224c3ae61f1772c8991abfefee0c4e681dc5b75b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 538,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ea90be25809996d9290f1e8fea981e0c857dd58616ee6b8a2b8f5eca6f6fd99",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d95cbd37835dc4ba3f31e6bf501550f6d5fe52baf49431361c466eed09e0ed82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def EffectiveEpiStruct.isColimitCoforkOfIsPullback
    {X Y Z : C} {p : Y ⟶ X} (hp : EffectiveEpiStruct p) {p₁ p₂ : Z ⟶ Y}
    (sq : IsPullback p₁ p₂ p p) :
    IsColimit (Cofork.ofπ p sq.w) :=
  Cofork.IsColimit.mk _ (fun s ↦ hp.desc s.π (fun {T} g₁ g₂ h ↦ by
      obtain ⟨l, rfl, rfl⟩ := sq.exists_lift g₁ g₂ h
      simp [s.condition]))
    (fun s ↦ hp.fac _ _)
    (fun s m hm ↦ hp.uniq _ _ _ hm)

/-- Every split epimorphism is a regular epimorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224c3ae61f1772c8991abfefee0c4e681dc5b75b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
