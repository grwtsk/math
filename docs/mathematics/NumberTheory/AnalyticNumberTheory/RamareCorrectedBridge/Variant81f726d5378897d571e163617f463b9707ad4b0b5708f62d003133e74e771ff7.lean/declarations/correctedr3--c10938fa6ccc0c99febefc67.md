# correctedR3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13cf25984d3be19373be6d0a36caedae635a174baa611f5d730e495cd65f7e98",
  "kind": "def",
  "lexical_name": "correctedR3",
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
  "slug": "correctedr3--c10938fa6ccc0c99febefc67",
  "source": {
    "blob": "fc5d4f7bddc48e8e02422bac8d7b700317c7436c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 416,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c10938fa6ccc0c99febefc67fe240d0759429179fffecfea4657632f7424af70",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13cf25984d3be19373be6d0a36caedae635a174baa611f5d730e495cd65f7e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def correctedR3 (N : Nat) : Real :=
  let X : Real := N
  let y := Real.sqrt X
  2 * y * |y * firstMertensRemainder y - chebyshevRemainder y| +
    chebyshevRemainder y ^ 2 +
    |chebyshevRemainder X| * Real.log X +
    |∫ t in (1 : Real)..X, chebyshevRemainder t / t|

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc5d4f7bddc48e8e02422bac8d7b700317c7436c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
