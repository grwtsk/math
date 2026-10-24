# dirac_spectrum_realizes_k_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2fcc3b4276efc369161782f0d95479beefe8466",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52dc81fa38e8fbb0b4e219c3a2351b83b92456c0b710774583bd713929e2341f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81501c2e-f3d1-0fce-2f2c-9410156addfa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94635800-6fa8-2935-6867-a786f1d4f775",
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
  "slug": "dirac-spectrum-realizes-k-index--548fd18382eac93a014ed422",
  "source": {
    "blob": "e2fcc3b4276efc369161782f0d95479beefe8466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant52dc81fa38e8fbb0b4e219c3a2351b83b92456c0b710774583bd713929e2341f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:548fd18382eac93a014ed4222268a68704a5df2f158c5e4bfa54203214134e19",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant52dc81fa38e8fbb0b4e219c3a2351b83b92456c0b710774583bd713929e2341f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94635800-6fa8-2935-6867-a786f1d4f775`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–80.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant52dc81fa38e8fbb0b4e219c3a2351b83b92456c0b710774583bd713929e2341f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant52dc81fa38e8fbb0b4e219c3a2351b83b92456c0b710774583bd713929e2341f.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2fcc3b4276efc369161782f0d95479beefe8466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
