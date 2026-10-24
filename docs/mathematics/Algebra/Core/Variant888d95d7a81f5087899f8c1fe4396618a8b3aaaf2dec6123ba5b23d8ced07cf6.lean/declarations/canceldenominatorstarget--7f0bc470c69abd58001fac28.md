# cancelDenominatorsTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcffa9c9eeb3f9a175a7ea9e75bbe8b1ce72050c7969960d2505eb7deb360c84",
  "kind": "def",
  "lexical_name": "cancelDenominatorsTarget",
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
  "slug": "canceldenominatorstarget--7f0bc470c69abd58001fac28",
  "source": {
    "blob": "c4b62d3e2909b97860ec9565c73a4a240756f829",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 340,
    "path": "GRWTSK/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f0bc470c69abd58001fac286bad41de42af559cbe9badde4ce5529eafbfdd9b",
  "verification": {
    "reference": "docs/verification/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcffa9c9eeb3f9a175a7ea9e75bbe8b1ce72050c7969960d2505eb7deb360c84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cancelDenominatorsTarget : TacticM Unit := do
  let (new, eqPrf) ← CancelDenoms.cancelDenominatorsInType (← getMainTarget)
  liftMetaTactic' fun g => g.replaceTargetEq new eqPrf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4b62d3e2909b97860ec9565c73a4a240756f829` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
