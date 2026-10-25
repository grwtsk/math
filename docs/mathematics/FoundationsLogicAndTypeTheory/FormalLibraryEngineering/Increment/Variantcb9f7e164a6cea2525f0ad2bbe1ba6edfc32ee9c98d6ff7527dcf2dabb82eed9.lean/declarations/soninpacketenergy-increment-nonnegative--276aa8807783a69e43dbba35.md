# soninPacketEnergy_increment_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb02b332-da8c-8a69-76ca-1225d0c99b0c",
  "kind": "theorem",
  "lexical_name": "soninPacketEnergy_increment_nonnegative",
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
  "slug": "soninpacketenergy-increment-nonnegative--276aa8807783a69e43dbba35",
  "source": {
    "blob": "838ea727025b1db7da24f25e8c7b3cc7f278dade",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Increment/Variantcb9f7e164a6cea2525f0ad2bbe1ba6edfc32ee9c98d6ff7527dcf2dabb82eed9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:276aa8807783a69e43dbba353622ef475a1004bdf300bb4adc48632e7428c13c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Increment/Variantcb9f7e164a6cea2525f0ad2bbe1ba6edfc32ee9c98d6ff7527dcf2dabb82eed9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb02b332-da8c-8a69-76ca-1225d0c99b0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem soninPacketEnergy_increment_nonnegative
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S)
    (g : W.Test) :
    0 ≤
      soninPacketEnergy
        W P (insert p S) g
      -
      soninPacketEnergy
        W P S g := by
  rw [
    soninPacketEnergy_increment_eq_normSq
      W P cert S p hp g
  ]
  exact
    W.projectedNormSq_nonnegative
      (soninIncrement P S p)
      g

end Mathematics.SemiLocalDefect.SoninCore
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Increment/Variantcb9f7e164a6cea2525f0ad2bbe1ba6edfc32ee9c98d6ff7527dcf2dabb82eed9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Increment/Variantcb9f7e164a6cea2525f0ad2bbe1ba6edfc32ee9c98d6ff7527dcf2dabb82eed9.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `838ea727025b1db7da24f25e8c7b3cc7f278dade` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
