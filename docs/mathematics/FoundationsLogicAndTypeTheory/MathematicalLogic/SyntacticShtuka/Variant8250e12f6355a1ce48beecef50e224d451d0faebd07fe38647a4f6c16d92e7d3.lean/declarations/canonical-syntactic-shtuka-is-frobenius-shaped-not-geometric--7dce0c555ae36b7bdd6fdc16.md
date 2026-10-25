# canonical_syntactic_shtuka_is_frobenius_shaped_not_geometric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b674402f25a403ea80b06b047fceb7d01638fc28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b4254e4-db7d-423f-829b-413f893e792e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfcbe139-7a2d-c06e-533d-754df5d423ad",
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
  "slug": "canonical-syntactic-shtuka-is-frobenius-shaped-not-geometric--7dce0c555ae36b7bdd6fdc16",
  "source": {
    "blob": "b674402f25a403ea80b06b047fceb7d01638fc28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dce0c555ae36b7bdd6fdc161869c955dc79990d7446ff6d55f303f0eaeaec94",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfcbe139-7a2d-c06e-533d-754df5d423ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–107.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b674402f25a403ea80b06b047fceb7d01638fc28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
