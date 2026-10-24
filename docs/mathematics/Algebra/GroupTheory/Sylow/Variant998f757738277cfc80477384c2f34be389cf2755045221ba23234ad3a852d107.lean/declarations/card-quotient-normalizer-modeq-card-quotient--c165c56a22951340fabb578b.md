# card_quotient_normalizer_modEq_card_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2cddfbc-58c7-b054-8b20-e42429a50200",
  "kind": "theorem",
  "lexical_name": "card_quotient_normalizer_modEq_card_quotient",
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
  "slug": "card-quotient-normalizer-modeq-card-quotient--c165c56a22951340fabb578b",
  "source": {
    "blob": "50a5f53b4fff7dd361a60d09d5b11fe11c0c7802",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 562,
    "line": 553,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Variant998f757738277cfc80477384c2f34be389cf2755045221ba23234ad3a852d107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c165c56a22951340fabb578b7bed4c8f324aa7382db4471a67afaf32173a1e1e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Variant998f757738277cfc80477384c2f34be389cf2755045221ba23234ad3a852d107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2cddfbc-58c7-b054-8b20-e42429a50200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_quotient_normalizer_modEq_card_quotient [Fintype G] {p : ℕ} {n : ℕ} [hp : Fact p.Prime]
    {H : Subgroup G} (hH : Fintype.card H = p ^ n) :
    Fintype.card (normalizer H ⧸ Subgroup.comap ((normalizer H).subtype : normalizer H →* G) H) ≡
      card (G ⧸ H) [MOD p] := by
  rw [← Fintype.card_congr (fixedPointsMulLeftCosetsEquivQuotient H)]
  exact ((IsPGroup.of_card hH).card_modEq_card_fixedPoints _).symm
#align sylow.card_quotient_normalizer_modeq_card_quotient Sylow.card_quotient_normalizer_modEq_card_quotient

/-- If `H` is a subgroup of `G` of cardinality `p ^ n`, then the cardinality of the
  normalizer of `H` is congruent mod `p ^ (n + 1)` to the cardinality of `G`.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Variant998f757738277cfc80477384c2f34be389cf2755045221ba23234ad3a852d107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Variant998f757738277cfc80477384c2f34be389cf2755045221ba23234ad3a852d107.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50a5f53b4fff7dd361a60d09d5b11fe11c0c7802` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
