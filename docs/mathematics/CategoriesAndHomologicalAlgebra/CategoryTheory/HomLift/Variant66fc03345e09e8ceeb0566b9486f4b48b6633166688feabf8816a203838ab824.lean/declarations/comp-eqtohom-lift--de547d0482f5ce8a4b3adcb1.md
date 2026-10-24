# comp_eqToHom_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13a5edd3a4a90444978e54c584eb6fcbdf0d5506780a04157ed81986c7defeb8",
  "kind": "instance",
  "lexical_name": "comp_eqToHom_lift",
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
  "slug": "comp-eqtohom-lift--de547d0482f5ce8a4b3adcb1",
  "source": {
    "blob": "5e89f8280f5716ad796037a65bacc0c4a3eeeb61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de547d0482f5ce8a4b3adcb1d36a381cd2f505599a60a1831bfaeb18c9cd481a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13a5edd3a4a90444978e54c584eb6fcbdf0d5506780a04157ed81986c7defeb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance comp_eqToHom_lift {R S : 𝒮} {a' a b : 𝒳} (f : R ⟶ S) (φ : a ⟶ b) (h : a' = a)
    [p.IsHomLift f φ] : p.IsHomLift f (eqToHom h ≫ φ) := by
  subst h; simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e89f8280f5716ad796037a65bacc0c4a3eeeb61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
