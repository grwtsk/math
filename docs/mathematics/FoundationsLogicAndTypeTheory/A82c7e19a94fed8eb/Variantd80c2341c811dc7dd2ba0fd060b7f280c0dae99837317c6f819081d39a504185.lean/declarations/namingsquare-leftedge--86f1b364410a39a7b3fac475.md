# NamingSquare.leftEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:561a369672643c5998c64d488e51fec94777305c987169218137fb696fa387bb",
  "kind": "def",
  "lexical_name": "NamingSquare.leftEdge",
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
  "slug": "namingsquare-leftedge--86f1b364410a39a7b3fac475",
  "source": {
    "blob": "e9c3955b302e54489b1325ffb0625321a2d5e294",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86f1b364410a39a7b3fac475af758584dca99808fbf5a9107a7a0a224d5205c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:561a369672643c5998c64d488e51fec94777305c987169218137fb696fa387bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NamingSquare.leftEdge (square : NamingSquare) : NamingEdge where
  source := square.origin
  target := square.afterVertical
  kind := square.verticalKind
  actor := .reconciler
  inputDigest := square.origin.canonicalIrDigest
  outputDigest := square.afterVertical.canonicalIrDigest
  recordedDelta := NameFeatureVector.sub square.afterVertical.features square.origin.features

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9c3955b302e54489b1325ffb0625321a2d5e294` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
