# dirac_spectrum_realizes_k_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84e0af97-dc38-5bbe-a221-2cdf8a352dde",
  "kind": "theorem",
  "lexical_name": "dirac_spectrum_realizes_k_index",
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
  "slug": "dirac-spectrum-realizes-k-index--e2de8443a7c49069fc5c162f",
  "source": {
    "blob": "4b2cfd001e8e01140bf8b3690a110c50c9d69b88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant828f6a328cfdae8d777409957063b95d57365d8fb537a9ef57a3cfdc84458d27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2de8443a7c49069fc5c162f844d5c3aad9453090b74e8173f0e8834b39d7930",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant828f6a328cfdae8d777409957063b95d57365d8fb537a9ef57a3cfdc84458d27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84e0af97-dc38-5bbe-a221-2cdf8a352dde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirac_spectrum_realizes_k_index
    {M : Folder.DerivedSheaf.MellKTheory}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (R : Folder.DerivedSheaf.DiracSpectrumRealizesKTheoryIndex M I) :
    R.spectralObjectRepresentsIndex :=
  Folder.DerivedSheaf.dirac_spectrum_realizes_k_index R

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant828f6a328cfdae8d777409957063b95d57365d8fb537a9ef57a3cfdc84458d27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant828f6a328cfdae8d777409957063b95d57365d8fb537a9ef57a3cfdc84458d27.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2cfd001e8e01140bf8b3690a110c50c9d69b88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
