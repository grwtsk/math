# natTransHσ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79f5d6f8f17419cc35f6c9f1d060472b4aaaf1dcbc327560f218afce47a296e7",
  "kind": "def",
  "lexical_name": "natTransHσ",
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
  "slug": "nattransh--c3ba9ab8b0f6e130aa845843",
  "source": {
    "blob": "9946386fca8917ba31338f141b43358f82fe4d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopies/Variante0c9eb3b6669f6f0e4f9d8da9d1ec3c507882847555f182bfbc5b5d80f97a67c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3ba9ab8b0f6e130aa845843a5fe96a3117ad55aa1e1e1448641df8c0d1b379d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopies/Variante0c9eb3b6669f6f0e4f9d8da9d1ec3c507882847555f182bfbc5b5d80f97a67c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79f5d6f8f17419cc35f6c9f1d060472b4aaaf1dcbc327560f218afce47a296e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def natTransHσ (q : ℕ) : alternatingFaceMapComplex C ⟶ alternatingFaceMapComplex C where
  app X := Hσ q
  naturality _ _ f := by
    unfold Hσ
    rw [nullHomotopicMap'_comp, comp_nullHomotopicMap']
    congr
    ext n m hnm
    simp only [alternatingFaceMapComplex_map_f, hσ'_naturality]
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.nat_trans_Hσ AlgebraicTopology.DoldKan.natTransHσ

/-- The maps `hσ' q n m hnm` are compatible with the application of additive functors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopies/Variante0c9eb3b6669f6f0e4f9d8da9d1ec3c507882847555f182bfbc5b5d80f97a67c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopies/Variante0c9eb3b6669f6f0e4f9d8da9d1ec3c507882847555f182bfbc5b5d80f97a67c.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9946386fca8917ba31338f141b43358f82fe4d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
