# shiftToTargetExponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a510aee888e47e8bdcd3b22a595043ca9b9d2ac99a976246e8f3bc4ae5c20ae",
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
  "slug": "shifttotargetexponent--254b505a4ad8db16e9384be3",
  "source": {
    "blob": "5c27140e69aaff44afe25ff197ece264ef6e2319",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:254b505a4ad8db16e9384be379030dc2c33db518a56a42f355dd78016c0c03e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a510aee888e47e8bdcd3b22a595043ca9b9d2ac99a976246e8f3bc4ae5c20ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–148.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c27140e69aaff44afe25ff197ece264ef6e2319` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
