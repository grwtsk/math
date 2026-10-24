# one_half_lt_eulerMascheroniSeq_six

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95f19f85-5d2a-ff4e-02a2-f579e6dab90c",
  "kind": "lemma",
  "lexical_name": "one_half_lt_eulerMascheroniSeq_six",
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
  "slug": "one-half-lt-eulermascheroniseq-six--7b2825cd0ce2a48a3a3e652e",
  "source": {
    "blob": "bfe72fccaa4ec155efd6aa56878868c52dc9064a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b2825cd0ce2a48a3a3e652e56a4468edbd91455b6898fca3f20f7839ab8572a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95f19f85-5d2a-ff4e-02a2-f579e6dab90c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_half_lt_eulerMascheroniSeq_six : 1 / 2 < eulerMascheroniSeq 6 := by
  have : eulerMascheroniSeq 6 = 49 / 20 - log 7 := by
    rw [eulerMascheroniSeq]
    norm_num
  rw [this, lt_sub_iff_add_lt, ← lt_sub_iff_add_lt', log_lt_iff_lt_exp (by positivity)]
  refine lt_of_lt_of_le ?_ (Real.sum_le_exp_of_nonneg (by norm_num) 7)
  simp_rw [Finset.sum_range_succ, Nat.factorial_succ]
  norm_num

end LowerSequence

section UpperSequence

/-- The sequence with `n`-th term `harmonic n - log n`. We use a junk value for `n = 0`, in order
to have the sequence be strictly decreasing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfe72fccaa4ec155efd6aa56878868c52dc9064a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
