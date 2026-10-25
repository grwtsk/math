# NamingSquare.topEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6366835b564a1909217177b36dcb997d65745548ef5064a5ecdfc23f7f85d1e6",
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
  "slug": "namingsquare-topedge--cca2b06b0673d2b6a54734e8",
  "source": {
    "blob": "554398a2360fac48f9c860afa438f14d30299d07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/AB48e77fe2fa6d947/Variant0e152ff066d2a808a6622c3c2109b3cac2bfc78052d1958dce0252798a3d9f0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cca2b06b0673d2b6a54734e811cbde335210bba2f1158b40773bb5eee64aff54",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/AB48e77fe2fa6d947/Variant0e152ff066d2a808a6622c3c2109b3cac2bfc78052d1958dce0252798a3d9f0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6366835b564a1909217177b36dcb997d65745548ef5064a5ecdfc23f7f85d1e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

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

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/AB48e77fe2fa6d947/Variant0e152ff066d2a808a6622c3c2109b3cac2bfc78052d1958dce0252798a3d9f0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/AB48e77fe2fa6d947/Variant0e152ff066d2a808a6622c3c2109b3cac2bfc78052d1958dce0252798a3d9f0e.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `554398a2360fac48f9c860afa438f14d30299d07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
