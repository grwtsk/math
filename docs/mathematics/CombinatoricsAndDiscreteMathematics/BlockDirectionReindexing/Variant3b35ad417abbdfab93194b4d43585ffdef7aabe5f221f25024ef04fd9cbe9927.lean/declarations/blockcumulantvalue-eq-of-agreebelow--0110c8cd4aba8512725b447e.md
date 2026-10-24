# blockCumulantValue_eq_of_agreeBelow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8d2b2dcd7da688982808002567756abeb3644e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:734c438b-fce9-7b69-bace-4a58d8920008",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f1065ef-8686-eea2-194a-b5b7f8c4fabe",
  "kind": "theorem",
  "lexical_name": "blockCumulantValue_eq_of_agreeBelow",
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
  "slug": "blockcumulantvalue-eq-of-agreebelow--0110c8cd4aba8512725b447e",
  "source": {
    "blob": "e8d2b2dcd7da688982808002567756abeb3644e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 240,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0110c8cd4aba8512725b447eed78412c278d107c1b901d96c6556ba6b74d4620",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f1065ef-8686-eea2-194a-b5b7f8c4fabe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockCumulantValue_eq_of_agreeBelow
    {n : ℕ}
    {κ₁ κ₂ : DirectionCumulantFamily E R}
    (h : AgreeBelow n κ₁ κ₂)
    (directions : Fin n → E)
    {B : Finset (Fin n)}
    (hcard : B.card < n) :
    blockCumulantValue κ₁ directions B =
      blockCumulantValue κ₂ directions B :=
  h B.card hcard (blockDirections directions B)

/-- Every partition weight of a proper partition depends only on cumulant
orders strictly below n. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8d2b2dcd7da688982808002567756abeb3644e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
