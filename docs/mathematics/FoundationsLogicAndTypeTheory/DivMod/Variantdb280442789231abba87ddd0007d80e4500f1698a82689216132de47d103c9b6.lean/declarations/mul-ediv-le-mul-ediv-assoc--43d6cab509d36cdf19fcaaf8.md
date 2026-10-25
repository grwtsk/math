# mul_ediv_le_mul_ediv_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3600ee786c12fccf78c964d3c3fb33806aefb82b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5ae38f8-37d9-f8b3-9a3c-764a6faf6a92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc787928-feb3-0117-6c51-31062ec4e813",
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
  "slug": "mul-ediv-le-mul-ediv-assoc--43d6cab509d36cdf19fcaaf8",
  "source": {
    "blob": "3600ee786c12fccf78c964d3c3fb33806aefb82b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantdb280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43d6cab509d36cdf19fcaaf8a3d7e4ee5ed86183effd1f14a63825d975ad1e4e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/DivMod/Variantdb280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc787928-feb3-0117-6c51-31062ec4e813`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_ediv_le_mul_ediv_assoc {a : Int} (ha : 0 ≤ a) (b : Int) {c : Int} (hc : 0 ≤ c) :
    a * (b / c) ≤ a * b / c := by
  obtain rfl | hlt : c = 0 ∨ 0 < c := by omega
  · simp
  · rw [Int.le_ediv_iff_mul_le hlt, Int.mul_assoc]
    exact Int.mul_le_mul_of_nonneg_left (Int.ediv_mul_le b (Int.ne_of_gt hlt)) ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/DivMod/Variantdb280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantdb280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3600ee786c12fccf78c964d3c3fb33806aefb82b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
