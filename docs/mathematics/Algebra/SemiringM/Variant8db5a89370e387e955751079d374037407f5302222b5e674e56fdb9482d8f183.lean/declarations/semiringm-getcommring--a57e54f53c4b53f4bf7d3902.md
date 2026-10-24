# SemiringM.getCommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f85c418f8cf3a619837a5c685bc16fde89585d14da0117a0db7377c4685f4fc1",
  "kind": "def",
  "lexical_name": "SemiringM.getCommRing",
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
  "slug": "semiringm-getcommring--a57e54f53c4b53f4bf7d3902",
  "source": {
    "blob": "ed4228e0441eb758d5567e8455d70469ef17bb57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 55,
    "path": "GRWTSK/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a57e54f53c4b53f4bf7d3902632d635bc8b9f83488eaf35186f5f66214408418",
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

Occurrence: `declaration:f85c418f8cf3a619837a5c685bc16fde89585d14da0117a0db7377c4685f4fc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def SemiringM.getCommRing : SemiringM CommRing := do
  let s ← get'
  let ringId := (← getCommSemiring).ringId
  if h : ringId < s.rings.size then
    return s.rings[ringId]
  else
    throwError "`grind` internal error, invalid ringId"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed4228e0441eb758d5567e8455d70469ef17bb57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
