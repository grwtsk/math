# getMulFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d2b801b3109e9e986c4748315e3db2164f87aa449e1502bc3326b69707dafec",
  "kind": "def",
  "lexical_name": "getMulFn",
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
  "slug": "getmulfn--be228b74c0da50d4927caf25",
  "source": {
    "blob": "a93ec3f3330244a33cce5182a7a5f1e602c7e3f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 68,
    "path": "GRWTSK/Algebra/Functions/Variantaed5d8cef52ed768129e9ef68ed62e07b23988d40eae4cfcb3f6212fd774b8c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be228b74c0da50d4927caf25165d5ada3adddd9754defcf824e8ff355d388fe2",
  "verification": {
    "reference": "docs/verification/Algebra/Functions/Variantaed5d8cef52ed768129e9ef68ed62e07b23988d40eae4cfcb3f6212fd774b8c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d2b801b3109e9e986c4748315e3db2164f87aa449e1502bc3326b69707dafec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getMulFn : m Expr := do
  let ring ← getRing
  if let some mulFn := ring.mulFn? then return mulFn
  let expectedInst := mkApp2 (mkConst ``instHMul [ring.u]) ring.type <| mkApp2 (mkConst ``Grind.Semiring.toMul [ring.u]) ring.type ring.semiringInst
  let mulFn ← mkBinHomoFn ring.type ring.u ``HMul ``HMul.hMul expectedInst
  modifyRing fun s => { s with mulFn? := some mulFn }
  return mulFn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Functions/Variantaed5d8cef52ed768129e9ef68ed62e07b23988d40eae4cfcb3f6212fd774b8c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Functions/Variantaed5d8cef52ed768129e9ef68ed62e07b23988d40eae4cfcb3f6212fd774b8c6.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a93ec3f3330244a33cce5182a7a5f1e602c7e3f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
