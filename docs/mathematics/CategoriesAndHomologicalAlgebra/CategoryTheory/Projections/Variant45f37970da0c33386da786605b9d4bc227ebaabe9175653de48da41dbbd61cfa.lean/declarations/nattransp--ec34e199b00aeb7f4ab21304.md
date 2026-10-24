# natTransP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65f521b8ac07f6c2e435ad5191bc3ae5ffad2021beed9e40db9920beefc539b6",
  "kind": "def",
  "lexical_name": "natTransP",
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
  "slug": "nattransp--ec34e199b00aeb7f4ab21304",
  "source": {
    "blob": "c0281d97dc8393d05387ec5b68fb28f20042e38a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 154,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant45f37970da0c33386da786605b9d4bc227ebaabe9175653de48da41dbbd61cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec34e199b00aeb7f4ab21304bdbe2194ce57974f7c199e9b9d3740207f4ef34d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant45f37970da0c33386da786605b9d4bc227ebaabe9175653de48da41dbbd61cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65f521b8ac07f6c2e435ad5191bc3ae5ffad2021beed9e40db9920beefc539b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def natTransP (q : ℕ) : alternatingFaceMapComplex C ⟶ alternatingFaceMapComplex C where
  app _ := P q
  naturality _ _ f := by
    induction q with
    | zero =>
      dsimp [alternatingFaceMapComplex]
      simp only [P_zero, id_comp, comp_id]
    | succ q hq =>
      simp only [P_succ, add_comp, comp_add, assoc, comp_id, hq, reassoc_of% hq]
      -- `erw` is needed to see through `natTransHσ q).app = Hσ q`
      erw [(natTransHσ q).naturality f]
      rfl

set_option backward.isDefEq.respectTransparency false in -- This is needed in AlgebraicTopology/DoldKan/Decomposition.lean
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant45f37970da0c33386da786605b9d4bc227ebaabe9175653de48da41dbbd61cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant45f37970da0c33386da786605b9d4bc227ebaabe9175653de48da41dbbd61cfa.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0281d97dc8393d05387ec5b68fb28f20042e38a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
