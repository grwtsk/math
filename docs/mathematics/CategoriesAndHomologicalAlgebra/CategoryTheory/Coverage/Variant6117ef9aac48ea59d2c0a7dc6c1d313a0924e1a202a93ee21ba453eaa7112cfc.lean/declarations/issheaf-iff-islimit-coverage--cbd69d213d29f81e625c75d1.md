# isSheaf_iff_isLimit_coverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df113658-acb8-ddb9-377e-e44c3eb98e17",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_isLimit_coverage",
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
  "slug": "issheaf-iff-islimit-coverage--cbd69d213d29f81e625c75d1",
  "source": {
    "blob": "c3fec638e7a98836422b4553d968b45db814b5b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 424,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbd69d213d29f81e625c75d15b270c5df766f12a598ba9846d4416b70b432011",
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

Occurrence: `result:df113658-acb8-ddb9-377e-e44c3eb98e17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_isLimit_coverage (K : Coverage C) (P : Cᵒᵖ ⥤ D) :
    Presheaf.IsSheaf (toGrothendieck _ K) P ↔ ∀ ⦃X : C⦄ (R : Presieve X),
      R ∈ K.covering X →
        Nonempty (IsLimit (P.mapCone (Sieve.generate R).arrows.cocone.op)) := by
  simp only [Presheaf.IsSheaf, Presieve.isSheaf_coverage, isLimit_iff_isSheafFor,
    ← Presieve.isSheafFor_iff_generate]
  aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3fec638e7a98836422b4553d968b45db814b5b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
