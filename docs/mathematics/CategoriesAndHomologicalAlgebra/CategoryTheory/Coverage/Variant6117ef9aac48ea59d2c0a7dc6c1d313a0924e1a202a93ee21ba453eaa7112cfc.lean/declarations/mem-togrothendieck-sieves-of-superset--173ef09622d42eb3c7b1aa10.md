# mem_toGrothendieck_sieves_of_superset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9962535-1e88-3a1f-05ee-be65ff93b24f",
  "kind": "theorem",
  "lexical_name": "mem_toGrothendieck_sieves_of_superset",
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
  "slug": "mem-togrothendieck-sieves-of-superset--173ef09622d42eb3c7b1aa10",
  "source": {
    "blob": "c3fec638e7a98836422b4553d968b45db814b5b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 319,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:173ef09622d42eb3c7b1aa10f987b1e0469c3bcb19d29d2f26cf13b28f391bd7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9962535-1e88-3a1f-05ee-be65ff93b24f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_toGrothendieck_sieves_of_superset (K : Coverage C) {X : C} {S : Sieve X}
    {R : Presieve X} (h : R ≤ S) (hR : R ∈ K.covering X) : S ∈ (K.toGrothendieck C) X :=
  K.saturate_of_superset ((Sieve.generate_le_iff _ _).mpr h) (Coverage.Saturate.of X _ hR)

end Coverage

open Coverage

namespace Presieve

/--
The main theorem of this file: Given a coverage `K` on `C`,
a `Type*`-valued presheaf on `C` is a sheaf for `K` if and only if it is a sheaf for
the associated Grothendieck topology.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3fec638e7a98836422b4553d968b45db814b5b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
