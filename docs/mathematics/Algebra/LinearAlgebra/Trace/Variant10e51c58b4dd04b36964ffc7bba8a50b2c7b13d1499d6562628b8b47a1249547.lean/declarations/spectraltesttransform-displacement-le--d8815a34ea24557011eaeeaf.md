# SpectralTestTransform.displacement_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f27cc03d0eeb629db303aa8cac18480a3ba3781e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a495bfff-8687-8360-014b-1f6e5419c2ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14a60665-56a0-2be8-2bf4-46214e975b2e",
  "kind": "theorem",
  "lexical_name": "SpectralTestTransform.displacement_le",
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
  "slug": "spectraltesttransform-displacement-le--d8815a34ea24557011eaeeaf",
  "source": {
    "blob": "f27cc03d0eeb629db303aa8cac18480a3ba3781e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 180,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8815a34ea24557011eaeeafac25ae2e6a68d1b9edb3fd88c7bb2dbbaca3f731",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14a60665-56a0-2be8-2bf4-46214e975b2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SpectralTestTransform.displacement_le
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (registry :
      SpectralTestTransform
        spectral Scale TestFunction)
    (scale : Scale)
    (test : TestFunction)
    (reference perturbed :
      Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ) :
    registry.operatorSize
        (registry.transform scale test perturbed -
          registry.transform scale test reference) ≤
      registry.stabilityConstant scale test *
        registry.operatorSize
          (perturbed - reference) :=
  registry.functionalCalculusStable
    scale test reference perturbed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f27cc03d0eeb629db303aa8cac18480a3ba3781e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
