# m_add_one_div_m_le_one_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a420b7644d456dba8515ea565bb5ca301a691cd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6621b453b766a2cefd99181bbec28533f9ce5b4c5bfaf178e13b9b848c7c28c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:442d81d5-66d6-2f6d-dc4c-01587e2ac053",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:307df679-508b-6a46-3eb8-46472a305110",
  "kind": "theorem",
  "lexical_name": "m_add_one_div_m_le_one_add",
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
  "slug": "m-add-one-div-m-le-one-add--4b557aa85d474a4b11cd8f5b",
  "source": {
    "blob": "a420b7644d456dba8515ea565bb5ca301a691cd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 228,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6621b453b766a2cefd99181bbec28533f9ce5b4c5bfaf178e13b9b848c7c28c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b557aa85d474a4b11cd8f5b4e208a2b9258e981250b1fef6c4119f69c74a215",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6621b453b766a2cefd99181bbec28533f9ce5b4c5bfaf178e13b9b848c7c28c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:307df679-508b-6a46-3eb8-46472a305110`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem m_add_one_div_m_le_one_add [Nonempty α]
    (hPα : #P.parts * 16 ^ #P.parts ≤ card α) (hPε : ↑100 ≤ ↑4 ^ #P.parts * ε ^ 5) (hε₁ : ε ≤ 1) :
    ((m + 1 : ℝ) / m) ^ 2 ≤ ↑1 + ε ^ 5 / 49 := by
  have : 0 ≤ ε := by sz_positivity
  rw [same_add_div (by sz_positivity)]
  calc
    _ ≤ (1 + ε ^ 5 / 100) ^ 2 := by
      gcongr (1 + ?_) ^ 2
      rw [← one_div_div (100 : ℝ)]
      exact one_div_le_one_div_of_le (by sz_positivity) (hundred_div_ε_pow_five_le_m hPα hPε)
    _ = 1 + ε ^ 5 * (50⁻¹ + ε ^ 5 / 10000) := by ring
    _ ≤ 1 + ε ^ 5 * (50⁻¹ + 1 ^ 5 / 10000) := by gcongr
    _ ≤ 1 + ε ^ 5 * 49⁻¹ := by gcongr; norm_num
    _ = 1 + ε ^ 5 / 49 := by rw [div_eq_mul_inv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6621b453b766a2cefd99181bbec28533f9ce5b4c5bfaf178e13b9b848c7c28c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6621b453b766a2cefd99181bbec28533f9ce5b4c5bfaf178e13b9b848c7c28c8.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a420b7644d456dba8515ea565bb5ca301a691cd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
