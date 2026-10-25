# shiftToTargetExponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1aca8f3b3198be4a83b75902d190b697574c136bbf608818b82acb34bf8d2e8b",
  "kind": "def",
  "lexical_name": "shiftToTargetExponent",
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
  "slug": "shifttotargetexponent--d4101e5393b0f6710850df7e",
  "source": {
    "blob": "48962005722b515b5aada714e5f43d9d25abe339",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 143,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantc61bc3555d22bddc05c77574a2d35934f3c2041c056d938cc0bcde09d152d5fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4101e5393b0f6710850df7e3c1d6535fbfba6999555aa9c795954713814858b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantc61bc3555d22bddc05c77574a2d35934f3c2041c056d938cc0bcde09d152d5fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1aca8f3b3198be4a83b75902d190b697574c136bbf608818b82acb34bf8d2e8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftToTargetExponent (spec : Format) (mantissa : Nat) (exponent : Int)
    (accuracy : Accuracy) : ExtendedMantissa × Int :=
  let targetExponent := spec.targetExponent (totalExponent mantissa exponent)
  shiftToExponent mantissa exponent accuracy targetExponent

/--
Given a finite float represented by a sign, mantissa and exponent, together with an
`Accuracy` datum, round it to conform to the given `Format`.

Important: this function will only drop bits from the mantissa and increase the exponent,
not the other way around. The result will only conform to the given specification if
the exponent was not too large to begin with. If this may be the case, you should call
`round` instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantc61bc3555d22bddc05c77574a2d35934f3c2041c056d938cc0bcde09d152d5fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantc61bc3555d22bddc05c77574a2d35934f3c2041c056d938cc0bcde09d152d5fe.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48962005722b515b5aada714e5f43d9d25abe339` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
