# eulerMascheroniSeq'_six_lt_two_thirds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a8b3307-ce98-69af-b3cb-75cdcef52caf",
  "kind": "lemma",
  "lexical_name": "eulerMascheroniSeq'_six_lt_two_thirds",
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
  "slug": "eulermascheroniseq-six-lt-two-thirds--13865b66fb220bb398d26281",
  "source": {
    "blob": "bfe72fccaa4ec155efd6aa56878868c52dc9064a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13865b66fb220bb398d262811fe79451396fe6c1828d935b3c6c4a53e7f3a969",
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

Occurrence: `result:8a8b3307-ce98-69af-b3cb-75cdcef52caf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eulerMascheroniSeq'_six_lt_two_thirds : eulerMascheroniSeq' 6 < 2 / 3 := by
  have h1 : eulerMascheroniSeq' 6 = 49 / 20 - log 6 := by
    rw [eulerMascheroniSeq']
    norm_num
  rw [h1, sub_lt_iff_lt_add, ← sub_lt_iff_lt_add', lt_log_iff_exp_lt (by positivity)]
  norm_num
  have := rpow_lt_rpow (exp_pos _).le exp_one_lt_d9 (by norm_num : (0 : ℝ) < 107 / 60)
  rw [exp_one_rpow] at this
  refine lt_trans this ?_
  rw [← rpow_lt_rpow_iff (z := 60), ← rpow_mul, div_mul_cancel₀, ← Nat.cast_ofNat,
    ← Nat.cast_ofNat, rpow_natCast, Nat.cast_ofNat, ← Nat.cast_ofNat (n := 60), rpow_natCast]
  · norm_num
  all_goals positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfe72fccaa4ec155efd6aa56878868c52dc9064a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
