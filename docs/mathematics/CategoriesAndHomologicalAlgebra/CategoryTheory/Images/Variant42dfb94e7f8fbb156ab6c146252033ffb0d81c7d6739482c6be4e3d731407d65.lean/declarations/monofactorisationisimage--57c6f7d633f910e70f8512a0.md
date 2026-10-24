# monoFactorisationIsImage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad007b0647b94f2f09f8eb7c32fc800f514151d2f84f49eea63560ff6e2278a0",
  "kind": "def",
  "lexical_name": "monoFactorisationIsImage",
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
  "slug": "monofactorisationisimage--57c6f7d633f910e70f8512a0",
  "source": {
    "blob": "17dfb700b277a92a437ad635b368562929b6b570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant42dfb94e7f8fbb156ab6c146252033ffb0d81c7d6739482c6be4e3d731407d65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57c6f7d633f910e70f8512a0db73d1c8697d28074b50dd186d0b78096acaca7d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant42dfb94e7f8fbb156ab6c146252033ffb0d81c7d6739482c6be4e3d731407d65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad007b0647b94f2f09f8eb7c32fc800f514151d2f84f49eea63560ff6e2278a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def monoFactorisationIsImage {F G : C ⥤ Type u} (f : F ⟶ G) :
    IsImage <| monoFactorisation f where
  lift H := {
    app X := ↾fun ⟨x, hx⟩ ↦ H.e.app _ hx.choose
    naturality X Y g := by
      ext
      apply injective_of_mono (H.m.app Y)
      simp
      grind }
  lift_fac H := by
    ext
    simp
    grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant42dfb94e7f8fbb156ab6c146252033ffb0d81c7d6739482c6be4e3d731407d65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant42dfb94e7f8fbb156ab6c146252033ffb0d81c7d6739482c6be4e3d731407d65.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17dfb700b277a92a437ad635b368562929b6b570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
