# from_union_surjective_of_isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81692dda-645e-b5f7-998b-ca5fb26446cd",
  "kind": "theorem",
  "lexical_name": "from_union_surjective_of_isColimit",
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
  "slug": "from-union-surjective-of-iscolimit--0571c82af9a3c308e6e95a20",
  "source": {
    "blob": "69c410916f085e56991cb4c4bba0d99448931472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 129,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0571c82af9a3c308e6e95a20afbcc9c9322ebbf00661b88dfb917857e247abb7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81692dda-645e-b5f7-998b-ca5fb26446cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem from_union_surjective_of_isColimit {D : Cocone F} (hD : IsColimit D) :
    let ff : (Σ j : J, ToType (F.obj j)) → ToType D.pt := fun a => D.ι.app a.1 a.2
    Function.Surjective ff := by
  intro ff x
  let E : Cocone (F ⋙ forget C) := (forget C).mapCocone D
  let hE : IsColimit E := isColimitOfPreserves (forget C) hD
  obtain ⟨j, y, hy⟩ := Types.jointly_surjective_of_isColimit hE x
  exact ⟨⟨j, y⟩, hy⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c410916f085e56991cb4c4bba0d99448931472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
