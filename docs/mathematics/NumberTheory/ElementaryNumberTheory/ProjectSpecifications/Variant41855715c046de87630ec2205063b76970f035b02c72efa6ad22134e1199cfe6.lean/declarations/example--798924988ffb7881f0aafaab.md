# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3f4c9c3f2f340151ce26a32d893c386146c9197fac3f365769918808161e898",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--798924988ffb7881f0aafaab",
  "source": {
    "blob": "31c5787307ef71c20a3fff22b0ec6776f9d9b836",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 93,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ProjectSpecifications/Variant41855715c046de87630ec2205063b76970f035b02c72efa6ad22134e1199cfe6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:798924988ffb7881f0aafaab7ae20e5ef63b94d7345fc32e8b4a61351d428bdd",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ProjectSpecifications/Variant41855715c046de87630ec2205063b76970f035b02c72efa6ad22134e1199cfe6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3f4c9c3f2f340151ce26a32d893c386146c9197fac3f365769918808161e898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example :
    BitMatrix.Codec.SequentialPrimeSource.sourceState
      BitMatrix.Codec.SequentialPrimeSource.distinguishedCanonicalSource
      (BitMatrix.Codec.SequentialPrimeSource.relationAddress
        (BitMatrix.Carrier.cantorPair 0 0) 2) = true :=
  BitMatrix.Codec.SequentialPrimeSource.sourceState_root_ref _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ProjectSpecifications/Variant41855715c046de87630ec2205063b76970f035b02c72efa6ad22134e1199cfe6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ProjectSpecifications/Variant41855715c046de87630ec2205063b76970f035b02c72efa6ad22134e1199cfe6.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31c5787307ef71c20a3fff22b0ec6776f9d9b836` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
