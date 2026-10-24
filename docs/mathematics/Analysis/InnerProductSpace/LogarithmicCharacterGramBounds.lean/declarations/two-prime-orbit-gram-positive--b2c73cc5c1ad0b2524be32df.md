# two_prime_orbit_gram_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db2cb85bcb679383a4a4b7664fb6fbe644ed2422",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a778f3cd-c587-ad67-958e-5bb5b2049018",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e9d41e0-baa3-d871-e5f2-8259969a262a",
  "kind": "theorem",
  "lexical_name": "two_prime_orbit_gram_positive",
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
  "slug": "two-prime-orbit-gram-positive--b2c73cc5c1ad0b2524be32df",
  "source": {
    "blob": "db2cb85bcb679383a4a4b7664fb6fbe644ed2422",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 171,
    "path": "GRWTSK/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2c73cc5c1ad0b2524be32df091e415086f75c921f4b0eda64c0b0fa41bd9492",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e9d41e0-baa3-d871-e5f2-8259969a262a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_prime_orbit_gram_positive : 0 < logarithmicOrbitGram 2 3 := by
  have hlog : Real.log (3 : ℝ) - Real.log 2 = Real.log ((3 : ℝ) / 2) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
  have hlo : 0 ≤ Real.log ((3 : ℝ) / 2) := Real.log_nonneg (by norm_num)
  have hhi : Real.log ((3 : ℝ) / 2) ≤ 1 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 3 / 2)
    linarith
  have hclose : |Real.log (2 : ℝ) - Real.log 3| ≤ 1 := by
    rw [abs_sub_comm, hlog, abs_of_nonneg hlo]
    exact hhi
  linarith [logarithmic_orbit_gram_lower hclose]

/-- Every integer logarithmic phase inside one dyadic band is a close phase. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db2cb85bcb679383a4a4b7664fb6fbe644ed2422` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
