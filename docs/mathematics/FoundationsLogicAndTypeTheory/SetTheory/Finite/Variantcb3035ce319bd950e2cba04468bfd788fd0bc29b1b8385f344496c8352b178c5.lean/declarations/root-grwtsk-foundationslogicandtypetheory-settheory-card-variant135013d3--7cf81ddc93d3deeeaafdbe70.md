# _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant135013d3bf729504c7b5c3b31d5bb50074c074624ccbef2e067a888643834921.Function.Injective.bijective_of_nat_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:493f1b40-ce7a-e0c8-09ae-2f629dfb2512",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant135013d3bf729504c7b5c3b31d5bb50074c074624ccbef2e067a888643834921.Function.Injective.bijective_of_nat_card_le",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-settheory-card-variant135013d3--7cf81ddc93d3deeeaafdbe70",
  "source": {
    "blob": "1898c39132c00d27ce779ab0b0a67126f2d8d7ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variantcb3035ce319bd950e2cba04468bfd788fd0bc29b1b8385f344496c8352b178c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cf81ddc93d3deeeaafdbe70598db55748f83fcdd5ba253f361aa2e2dce097d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variantcb3035ce319bd950e2cba04468bfd788fd0bc29b1b8385f344496c8352b178c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:493f1b40-ce7a-e0c8-09ae-2f629dfb2512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant135013d3bf729504c7b5c3b31d5bb50074c074624ccbef2e067a888643834921.Function.Injective.bijective_of_nat_card_le [Finite β] {f : α → β}
    (inj : Injective f) (hc : Nat.card β ≤ Nat.card α) : Bijective f :=
  (Nat.bijective_iff_injective_and_card f).mpr
    ⟨inj, hc.antisymm (card_le_card_of_injective f inj) |>.symm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variantcb3035ce319bd950e2cba04468bfd788fd0bc29b1b8385f344496c8352b178c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variantcb3035ce319bd950e2cba04468bfd788fd0bc29b1b8385f344496c8352b178c5.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1898c39132c00d27ce779ab0b0a67126f2d8d7ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
