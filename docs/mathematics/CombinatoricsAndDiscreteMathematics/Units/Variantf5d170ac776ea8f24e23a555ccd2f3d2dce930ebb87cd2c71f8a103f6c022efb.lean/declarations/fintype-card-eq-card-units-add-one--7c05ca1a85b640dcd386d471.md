# Fintype.card_eq_card_units_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eedb0d2a-502e-7b40-7949-a4530942dcd7",
  "kind": "theorem",
  "lexical_name": "Fintype.card_eq_card_units_add_one",
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
  "slug": "fintype-card-eq-card-units-add-one--7c05ca1a85b640dcd386d471",
  "source": {
    "blob": "5a45bb399b98e1a31ed187bb4238e077feeb06ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 59,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c05ca1a85b640dcd386d471669c8de42e52e77d25a96e9d7d7b2c819d73e66e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eedb0d2a-502e-7b40-7949-a4530942dcd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Fintype.card_eq_card_units_add_one [GroupWithZero α] [Fintype α] [DecidableEq α] :
    Fintype.card α = Fintype.card αˣ + 1 := by
  rw [Fintype.card_units, tsub_add_cancel_of_le Fintype.card_pos]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a45bb399b98e1a31ed187bb4238e077feeb06ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
