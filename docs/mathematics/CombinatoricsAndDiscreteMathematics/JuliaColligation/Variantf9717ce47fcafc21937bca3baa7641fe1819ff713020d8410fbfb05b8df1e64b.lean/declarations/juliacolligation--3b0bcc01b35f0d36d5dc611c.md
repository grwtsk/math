# JuliaColligation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e490a3ada87bab3fe05c644c337be53e34ef54787f0a052b7be35ccf274f3201",
  "kind": "structure",
  "lexical_name": "JuliaColligation",
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
  "slug": "juliacolligation--3b0bcc01b35f0d36d5dc611c",
  "source": {
    "blob": "50e95ee545b8b84382d62f2fbedad0be944c0d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 13,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/JuliaColligation/Variantf9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b0bcc01b35f0d36d5dc611c4a1e30f24d40dab8e9938131a260ed41fe16d18b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/JuliaColligation/Variantf9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e490a3ada87bab3fe05c644c337be53e34ef54787f0a052b7be35ccf274f3201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure JuliaColligation
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {capacity :
      PrimeCutDefectCapacity model Prime}
    {canonical :
      CanonicalTransmission capacity}
    {operations :
      OperatorComposition model}
    {cut : Finset Prime}
    {prime : Prime}
    (douglas :
      ReducedDouglasConnector
        canonical operations cut prime) where
  blockOperator : model.Operator
  unitaryOnDeclaredRange : Prop
  unitaryOnDeclaredRangeProof :
    unitaryOnDeclaredRange
  realizesConnector : Prop
  realizesConnectorProof :
    realizesConnector

end Mathematics.SemiLocalDefect.Hardy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/JuliaColligation/Variantf9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/JuliaColligation/Variantf9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50e95ee545b8b84382d62f2fbedad0be944c0d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
