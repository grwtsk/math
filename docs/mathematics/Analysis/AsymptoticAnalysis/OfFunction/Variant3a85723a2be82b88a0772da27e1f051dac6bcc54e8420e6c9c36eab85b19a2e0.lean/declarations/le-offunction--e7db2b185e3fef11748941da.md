# le_ofFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cffee5de-c154-aa13-12df-64ad1dea906f",
  "kind": "theorem",
  "lexical_name": "le_ofFunction",
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
  "slug": "le-offunction--e7db2b185e3fef11748941da",
  "source": {
    "blob": "8f896a76230c86e4b849d924fcac25c248105b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 146,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7db2b185e3fef11748941da570ed21f2e69014f08ceccabc85f3a24741dc179",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cffee5de-c154-aa13-12df-64ad1dea906f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_ofFunction {μ : OuterMeasure α} :
    μ ≤ OuterMeasure.ofFunction m m_empty ↔ ∀ s, μ s ≤ m s :=
  ⟨fun H s => le_trans (H s) (ofFunction_le s), fun H _ =>
    le_iInf₂ fun f hs => by grw [hs, ← H, ← measure_iUnion_le f]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f896a76230c86e4b849d924fcac25c248105b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
