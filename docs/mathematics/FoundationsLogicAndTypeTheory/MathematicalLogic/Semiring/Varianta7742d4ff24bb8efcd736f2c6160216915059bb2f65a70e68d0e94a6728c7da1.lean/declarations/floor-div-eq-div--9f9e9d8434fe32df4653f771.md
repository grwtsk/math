# floor_div_eq_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb14cdd1b7a2f5d5ae3e9e83049adfeec2a58690",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 420,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7742d4ff24bb8efcd736f2c6160216915059bb2f65a70e68d0e94a6728c7da1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7ab09cc-e91a-9725-4786-ccca4a2fb19d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3115e27d-db40-6eb3-ddef-ba88fdc2bbbc",
  "kind": "theorem",
  "lexical_name": "floor_div_eq_div",
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
  "slug": "floor-div-eq-div--9f9e9d8434fe32df4653f771",
  "source": {
    "blob": "fb14cdd1b7a2f5d5ae3e9e83049adfeec2a58690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 420,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiring/Varianta7742d4ff24bb8efcd736f2c6160216915059bb2f65a70e68d0e94a6728c7da1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f9e9d8434fe32df4653f771ccd7f6f92d00db6e10e8f8a104797a756bd87d04",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiring/Varianta7742d4ff24bb8efcd736f2c6160216915059bb2f65a70e68d0e94a6728c7da1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3115e27d-db40-6eb3-ddef-ba88fdc2bbbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem floor_div_eq_div (m n : ℕ) : ⌊(m : K) / n⌋₊ = m / n := by
  convert floor_div_natCast (m : K) n
  rw [m.floor_natCast]

end LinearOrderedSemifield

section LinearOrderedField
variable [Field K] [LinearOrder K] [IsStrictOrderedRing K] [FloorSemiring K] {a b : K}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiring/Varianta7742d4ff24bb8efcd736f2c6160216915059bb2f65a70e68d0e94a6728c7da1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiring/Varianta7742d4ff24bb8efcd736f2c6160216915059bb2f65a70e68d0e94a6728c7da1.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb14cdd1b7a2f5d5ae3e9e83049adfeec2a58690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
