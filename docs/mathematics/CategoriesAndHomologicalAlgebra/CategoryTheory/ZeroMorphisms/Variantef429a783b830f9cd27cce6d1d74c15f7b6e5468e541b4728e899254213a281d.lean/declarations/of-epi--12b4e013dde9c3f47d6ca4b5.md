# of_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8a8efec-9ed6-ce33-5185-f21a8b36c688",
  "kind": "theorem",
  "lexical_name": "of_epi",
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
  "slug": "of-epi--12b4e013dde9c3f47d6ca4b5",
  "source": {
    "blob": "b90347c6d8c78d98276cb55708dfe7355afe4079",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 216,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variantef429a783b830f9cd27cce6d1d74c15f7b6e5468e541b4728e899254213a281d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12b4e013dde9c3f47d6ca4b59482962b5d25ce315bbf45038d4aed59c17695be",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variantef429a783b830f9cd27cce6d1d74c15f7b6e5468e541b4728e899254213a281d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8a8efec-9ed6-ce33-5185-f21a8b36c688`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_epi {X Y : C} (f : X ⟶ Y) [Epi f] (i : IsZero X) : IsZero Y := by
  have hf := i.eq_zero_of_src f
  subst hf
  exact IsZero.of_epi_zero X Y

end IsZero

/-- A category with a zero object has zero morphisms.

    It is rarely a good idea to use this. Many categories that have a zero object have zero
    morphisms for some other reason, for example from additivity. Library code that uses
    `zeroMorphismsOfZeroObject` will then be incompatible with these categories because
    the `HasZeroMorphisms` instances will not be definitionally equal. For this reason library
    code should generally ask for an instance of `HasZeroMorphisms` separately, even if it already
    asks for an instance of `HasZeroObjects`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variantef429a783b830f9cd27cce6d1d74c15f7b6e5468e541b4728e899254213a281d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variantef429a783b830f9cd27cce6d1d74c15f7b6e5468e541b4728e899254213a281d.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90347c6d8c78d98276cb55708dfe7355afe4079` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
