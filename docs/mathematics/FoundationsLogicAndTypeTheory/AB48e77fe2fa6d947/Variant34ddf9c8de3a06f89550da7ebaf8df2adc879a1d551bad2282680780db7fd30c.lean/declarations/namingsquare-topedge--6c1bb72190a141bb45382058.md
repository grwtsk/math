# NamingSquare.topEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f13854c0b3a13b007cb0b6ee3cd2dd71cfef4653e4b5b999f8a28a91659bfd2c",
  "kind": "def",
  "lexical_name": "NamingSquare.topEdge",
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
  "slug": "namingsquare-topedge--6c1bb72190a141bb45382058",
  "source": {
    "blob": "66ec6b86c33b6389014f65fb5da971081abab122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/AB48e77fe2fa6d947/Variant34ddf9c8de3a06f89550da7ebaf8df2adc879a1d551bad2282680780db7fd30c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c1bb72190a141bb45382058cb57385b4f94578261c0fbb714b5969d8dc816a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/AB48e77fe2fa6d947/Variant34ddf9c8de3a06f89550da7ebaf8df2adc879a1d551bad2282680780db7fd30c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f13854c0b3a13b007cb0b6ee3cd2dd71cfef4653e4b5b999f8a28a91659bfd2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NamingSquare.topEdge (square : NamingSquare) : NamingEdge where
  source := square.origin
  target := square.afterHorizontal
  kind := square.horizontalKind
  actor := .reconciler
  inputDigest := square.origin.canonicalIrDigest
  outputDigest := square.afterHorizontal.canonicalIrDigest
  recordedDelta := NameFeatureVector.sub square.afterHorizontal.features square.origin.features

end Mathematics.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/AB48e77fe2fa6d947/Variant34ddf9c8de3a06f89550da7ebaf8df2adc879a1d551bad2282680780db7fd30c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/AB48e77fe2fa6d947/Variant34ddf9c8de3a06f89550da7ebaf8df2adc879a1d551bad2282680780db7fd30c.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ec6b86c33b6389014f65fb5da971081abab122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
