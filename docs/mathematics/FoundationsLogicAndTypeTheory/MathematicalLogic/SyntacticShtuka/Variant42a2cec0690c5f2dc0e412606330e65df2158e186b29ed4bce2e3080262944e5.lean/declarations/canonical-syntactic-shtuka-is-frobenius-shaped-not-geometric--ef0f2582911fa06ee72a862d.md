# canonical_syntactic_shtuka_is_frobenius_shaped_not_geometric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fd124b4-cc22-fa33-57ea-36582d96ebf3",
  "kind": "theorem",
  "lexical_name": "canonical_syntactic_shtuka_is_frobenius_shaped_not_geometric",
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
  "slug": "canonical-syntactic-shtuka-is-frobenius-shaped-not-geometric--ef0f2582911fa06ee72a862d",
  "source": {
    "blob": "39ce22a08949298cfcdf84374cf27943cd94d92c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant42a2cec0690c5f2dc0e412606330e65df2158e186b29ed4bce2e3080262944e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef0f2582911fa06ee72a862dbccd1538a2db12974cc11831a7cc50e82de0545d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant42a2cec0690c5f2dc0e412606330e65df2158e186b29ed4bce2e3080262944e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fd124b4-cc22-fa33-57ea-36582d96ebf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonical_syntactic_shtuka_is_frobenius_shaped_not_geometric
    {α : Type} (s : CompressedString α) :
    (canonicalSyntacticShtuka s).frobeniusAnalogueLabel =
        "normalize_encode_after_decode" ∧
      (canonicalSyntacticShtuka s).geometricFrobeniusClaim = false ∧
      (canonicalSyntacticShtuka s).drinfeldShtukaClaim = false := by
  exact ⟨rfl, rfl, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant42a2cec0690c5f2dc0e412606330e65df2158e186b29ed4bce2e3080262944e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant42a2cec0690c5f2dc0e412606330e65df2158e186b29ed4bce2e3080262944e5.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39ce22a08949298cfcdf84374cf27943cd94d92c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
