# abs_sub_round_eq_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2eb8fb70ed9e3fa1dc46cfb8f9c9ce67a6be831",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f708f8bd-d751-8b07-9f75-4bc71f97bda6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33c6a0e3-7671-8e2e-42be-aa8396dd87b4",
  "kind": "theorem",
  "lexical_name": "abs_sub_round_eq_min",
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
  "slug": "abs-sub-round-eq-min--2a4d939be2242898812834fa",
  "source": {
    "blob": "a2eb8fb70ed9e3fa1dc46cfb8f9c9ce67a6be831",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 128,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a4d939be2242898812834facabb8b1fc43a079094a929689af205e4b3f8c4a1",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33c6a0e3-7671-8e2e-42be-aa8396dd87b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_sub_round_eq_min (x : α) : |x - round x| = min (fract x) (1 - fract x) := by
  simp_rw [round, min_def_lt, two_mul, ← lt_tsub_iff_left]
  rcases lt_or_ge (fract x) (1 - fract x) with hx | hx
  · rw [if_pos hx, if_pos hx, self_sub_floor, abs_fract]
  · have : 0 < fract x := by
      replace hx : 0 < fract x + fract x := lt_of_lt_of_le zero_lt_one (tsub_le_iff_left.mp hx)
      simpa only [← two_mul, mul_pos_iff_of_pos_left, zero_lt_two] using hx
    rw [if_neg (not_lt.mpr hx), if_neg (not_lt.mpr hx), abs_sub_comm, ceil_sub_self_eq this.ne.symm,
      abs_one_sub_fract]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2eb8fb70ed9e3fa1dc46cfb8f9c9ce67a6be831` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
