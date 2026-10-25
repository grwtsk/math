# Iio_subset_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7df729f1-995b-f803-f0ec-8a90b7b8afe1",
  "kind": "theorem",
  "lexical_name": "Iio_subset_Iio",
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
  "slug": "iio-subset-iio--3567ff36a091ad3e9eaac6b8",
  "source": {
    "blob": "de38560156467c13316615eba6ea535fceac51d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 237,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant06adc091d45d93269a94d9b01cbd12118f87fe138a1d855ea71bf35b63abdad7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3567ff36a091ad3e9eaac6b8ea646af35dd39621a598acd3e3a80ca9d9b0dd98",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant06adc091d45d93269a94d9b01cbd12118f87fe138a1d855ea71bf35b63abdad7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7df729f1-995b-f803-f0ec-8a90b7b8afe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iio_subset_Iio (h : a ≤ b) : Iio a ⊆ Iio b := fun _ hx => lt_of_lt_of_le hx h

/-- If `a < b`, then `(-∞, a) ⊂ (-∞, b)`. In preorders, this is just an implication. If you need
the equivalence in linear orders, use `Iio_ssubset_Iio_iff`. -/
@[to_dual (attr := gcongr)
/-- If `a < b`, then `(b, +∞) ⊂ (a, +∞)`. In preorders, this is just an implication. If you need
the equivalence in linear orders, use `Ioi_ssubset_Ioi_iff`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant06adc091d45d93269a94d9b01cbd12118f87fe138a1d855ea71bf35b63abdad7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant06adc091d45d93269a94d9b01cbd12118f87fe138a1d855ea71bf35b63abdad7.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de38560156467c13316615eba6ea535fceac51d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
