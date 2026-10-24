# equivalence₁CounitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8dc92283f8512b8f1f890481480baaa7719945913b5f25bbd7daeacec92a5d80",
  "kind": "def",
  "lexical_name": "equivalence₁CounitIso",
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
  "slug": "equivalence-counitiso--cc3328c69d8f25e57f4374de",
  "source": {
    "blob": "2a33870472448f4f31ddc6dac70c5e600dbe1f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc3328c69d8f25e57f4374dea6920aad2e7f40f02625fbec37dbb4f9f6f59215",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8dc92283f8512b8f1f890481480baaa7719945913b5f25bbd7daeacec92a5d80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalence₁CounitIso : (e'.inverse ⋙ eA.inverse) ⋙ F ≅ 𝟭 B' :=
  calc
    (e'.inverse ⋙ eA.inverse) ⋙ F ≅ (e'.inverse ⋙ eA.inverse) ⋙ eA.functor ⋙ e'.functor :=
      isoWhiskerLeft _ hF.symm
    _ ≅ e'.inverse ⋙ (eA.inverse ⋙ eA.functor) ⋙ e'.functor := Iso.refl _
    _ ≅ e'.inverse ⋙ 𝟭 _ ⋙ e'.functor := isoWhiskerLeft _ (isoWhiskerRight eA.counitIso _)
    _ ≅ e'.inverse ⋙ e'.functor := Iso.refl _
    _ ≅ 𝟭 B' := e'.counitIso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a33870472448f4f31ddc6dac70c5e600dbe1f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
