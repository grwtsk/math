# ResidueInvariantTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f8953829ffe04674de82630c9b493326552e71782fa2feb40dc92f5179f217e",
  "kind": "structure",
  "lexical_name": "ResidueInvariantTrace",
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
  "slug": "residueinvarianttrace--6ef0d7b68f850eb62932b01b",
  "source": {
    "blob": "38430e2eabf6df2f3602cf73f627a45f71bb9731",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 236,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variantf701f06d40802b1c280f692f99f97c1eaeb4b005465f05e23b8cab55f84c7dcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ef0d7b68f850eb62932b01b4cf122664d276a140247cd5c6c44e8ddb6cc81dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variantf701f06d40802b1c280f692f99f97c1eaeb4b005465f05e23b8cab55f84c7dcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f8953829ffe04674de82630c9b493326552e71782fa2feb40dc92f5179f217e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ResidueInvariantTrace (Artifact : Type u) where
  atoms : List ResidueAtom
  extractor : ResidueExtractor Artifact
  canonicalEnds : Artifact -> List Artifact
  sound :
    ∀ artifact : Artifact,
      ∀ atom : ResidueAtom,
        atom ∈ atoms ->
          atomSurvivesEvery extractor canonicalEnds artifact atom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variantf701f06d40802b1c280f692f99f97c1eaeb4b005465f05e23b8cab55f84c7dcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variantf701f06d40802b1c280f692f99f97c1eaeb4b005465f05e23b8cab55f84c7dcc.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38430e2eabf6df2f3602cf73f627a45f71bb9731` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
