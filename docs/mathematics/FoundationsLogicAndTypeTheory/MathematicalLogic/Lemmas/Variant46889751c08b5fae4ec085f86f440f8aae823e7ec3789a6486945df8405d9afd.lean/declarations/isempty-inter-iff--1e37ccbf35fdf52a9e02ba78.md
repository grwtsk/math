# isEmpty_inter_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce40f476-06af-c781-ea08-2e60319bb4f1",
  "kind": "theorem",
  "lexical_name": "isEmpty_inter_iff",
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
  "slug": "isempty-inter-iff--1e37ccbf35fdf52a9e02ba78",
  "source": {
    "blob": "51d3e129d286bf40f7cd031123074dad833314bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1122,
    "line": 1112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant46889751c08b5fae4ec085f86f440f8aae823e7ec3789a6486945df8405d9afd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e37ccbf35fdf52a9e02ba78041ffb54f6a630e3a7341e9611a997fdcd3e9868",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant46889751c08b5fae4ec085f86f440f8aae823e7ec3789a6486945df8405d9afd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce40f476-06af-c781-ea08-2e60319bb4f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1112–1122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEmpty_inter_iff [EquivBEq α] [LawfulHashable α] :
    (m₁ ∩ m₂).isEmpty ↔ ∀ k, k ∈ m₁ → k ∉ m₂ :=
  @HashMap.isEmpty_inter_iff α _ _ _ m₁.inner m₂.inner _ _

end Inter

section Diff

variable {m₁ m₂ : HashSet α}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant46889751c08b5fae4ec085f86f440f8aae823e7ec3789a6486945df8405d9afd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant46889751c08b5fae4ec085f86f440f8aae823e7ec3789a6486945df8405d9afd.lean#L1112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51d3e129d286bf40f7cd031123074dad833314bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
