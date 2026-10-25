# mul_ediv_le_mul_ediv_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51d8abdb-eb01-ad7d-f4f7-5a61678ec5f7",
  "kind": "theorem",
  "lexical_name": "mul_ediv_le_mul_ediv_assoc",
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
  "slug": "mul-ediv-le-mul-ediv-assoc--63ab3753ebc5d5349c509d93",
  "source": {
    "blob": "ff71f2670286e20f3d8efd5cfb53e29e3737d827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantc6ef0b8f9dcef34dcab17cb14e85a9bd775652c85a8afe807e95f86362446249.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63ab3753ebc5d5349c509d938c74069b95b14ae16b6ffe3916d5342b5bd74a5c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/DivMod/Variantc6ef0b8f9dcef34dcab17cb14e85a9bd775652c85a8afe807e95f86362446249.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51d8abdb-eb01-ad7d-f4f7-5a61678ec5f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_ediv_le_mul_ediv_assoc {a : Int} (ha : 0 ≤ a) (b : Int) {c : Int} (hc : 0 ≤ c) :
    a * (b / c) ≤ a * b / c := by
  obtain rfl | hlt : c = 0 ∨ 0 < c := by lia
  · simp
  · rw [Int.le_ediv_iff_mul_le hlt, Int.mul_assoc]
    exact Int.mul_le_mul_of_nonneg_left (Int.ediv_mul_le b (Int.ne_of_gt hlt)) ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/DivMod/Variantc6ef0b8f9dcef34dcab17cb14e85a9bd775652c85a8afe807e95f86362446249.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantc6ef0b8f9dcef34dcab17cb14e85a9bd775652c85a8afe807e95f86362446249.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff71f2670286e20f3d8efd5cfb53e29e3737d827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
