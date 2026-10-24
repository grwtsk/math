# isColimitBinaryCofanSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3fd21ec12606d42a8967e976c1175229520ba49df3ffd1190d0ee1bed897a1b8",
  "kind": "def",
  "lexical_name": "isColimitBinaryCofanSum",
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
  "slug": "iscolimitbinarycofansum--66224378d2f91da0530931c3",
  "source": {
    "blob": "00db21af17c26019142eb4df62a1eec13de8ae5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 131,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66224378d2f91da0530931c3f88d3031664bd36f703181bd4282ff46f9238c94",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3fd21ec12606d42a8967e976c1175229520ba49df3ffd1190d0ee1bed897a1b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitBinaryCofanSum : IsColimit (binaryCofanSum c c₁ c₂ hc₁ hc₂) :=
  BinaryCofan.IsColimit.mk _ (fun f₁ f₂ => Cofan.IsColimit.desc hc (fun i => match i with
      | Sum.inl i₁ => c₁.inj i₁ ≫ f₁
      | Sum.inr i₂ => c₂.inj i₂ ≫ f₂))
    (fun f₁ f₂ => Cofan.IsColimit.hom_ext hc₁ _ _ (by simp))
    (fun f₁ f₂ => Cofan.IsColimit.hom_ext hc₂ _ _ (by simp))
    (fun f₁ f₂ m hm₁ hm₂ => by
      apply Cofan.IsColimit.hom_ext hc
      rintro (i₁|i₂) <;> aesop_cat)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00db21af17c26019142eb4df62a1eec13de8ae5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
