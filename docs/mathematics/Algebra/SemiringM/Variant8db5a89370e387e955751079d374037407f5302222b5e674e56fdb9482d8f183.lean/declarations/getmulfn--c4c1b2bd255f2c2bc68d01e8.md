# getMulFn'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:742fdad06a1766c6272a39703801304b6ccb9ff5c0342f8089cb8076c6365f2a",
  "kind": "def",
  "lexical_name": "getMulFn'",
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
  "slug": "getmulfn--c4c1b2bd255f2c2bc68d01e8",
  "source": {
    "blob": "ed4228e0441eb758d5567e8455d70469ef17bb57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 102,
    "path": "GRWTSK/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4c1b2bd255f2c2bc68d01e8755c833ea0dac6737091be477c197d4e548843b0",
  "verification": {
    "reference": "docs/verification/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:742fdad06a1766c6272a39703801304b6ccb9ff5c0342f8089cb8076c6365f2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getMulFn' : m Expr := do
  let s ← getSemiring
  if let some mulFn := s.mulFn? then return mulFn
  let expectedInst := mkApp2 (mkConst ``instHMul [s.u]) s.type <| mkApp2 (mkConst ``Grind.Semiring.toMul [s.u]) s.type s.semiringInst
  let mulFn ← mkBinHomoFn s.type s.u ``HMul ``HMul.hMul expectedInst
  modifySemiring fun s => { s with mulFn? := some mulFn }
  return mulFn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed4228e0441eb758d5567e8455d70469ef17bb57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
