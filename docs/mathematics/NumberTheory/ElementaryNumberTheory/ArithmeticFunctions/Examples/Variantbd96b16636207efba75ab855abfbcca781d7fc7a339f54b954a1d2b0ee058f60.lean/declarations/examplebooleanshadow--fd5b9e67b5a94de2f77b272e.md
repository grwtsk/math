# exampleBooleanShadow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdd671a5a96fb77fab64c2d676c8dfa0767c3bc6e957d169d8df7866771a4d7b",
  "kind": "def",
  "lexical_name": "exampleBooleanShadow",
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
  "slug": "examplebooleanshadow--fd5b9e67b5a94de2f77b272e",
  "source": {
    "blob": "8d2013317ce2251b6279d29fdf574de188279169",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 76,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd5b9e67b5a94de2f77b272e80b85b7fada0930749cb0be790e1bd34bc123d00",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdd671a5a96fb77fab64c2d676c8dfa0767c3bc6e957d169d8df7866771a4d7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleBooleanShadow :
    _root_.Number.Bridge.Boolean.BooleanShadowPayload where
  mobiusWeight := exampleFiniteMobiusWindow.squareFreeWeight
  valuationSupport := exampleFiniteMobiusWindow.valuationSupport
  hasPrimePowerDependence := exampleFiniteMobiusWindow.hasPrimePowerDependence
  determinantCoeffs := [1, -1]
  traceData := [0, 1]
  finiteSound := True
  finiteSoundProof := trivial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d2013317ce2251b6279d29fdf574de188279169` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
