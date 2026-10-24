# exists_irrational_btwn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74f84de4-a1d6-04a0-0d86-b1d25313aa17",
  "kind": "theorem",
  "lexical_name": "exists_irrational_btwn",
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
  "slug": "exists-irrational-btwn--4c0dbcac8f655ab179a58114",
  "source": {
    "blob": "c8038b6e21aa94e25d420aac57bf9e9b47d7d9e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 668,
    "path": "GRWTSK/Algebra/Irrational/Variant5641b0990d3f6f538b6e90cfe736131fd030b7b3e692b6173411d3e3f2a09c96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c0dbcac8f655ab179a581149e474c97f37c9a9ea09ad9c1b0a536e071a77273",
  "verification": {
    "reference": "docs/verification/Algebra/Irrational/Variant5641b0990d3f6f538b6e90cfe736131fd030b7b3e692b6173411d3e3f2a09c96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74f84de4-a1d6-04a0-0d86-b1d25313aa17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 668–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_irrational_btwn {x y : ℝ} (h : x < y) : ∃ r, Irrational r ∧ x < r ∧ r < y :=
  let ⟨q, ⟨hq1, hq2⟩⟩ := exists_rat_btwn ((sub_lt_sub_iff_right (Real.sqrt 2)).mpr h)
  ⟨q + Real.sqrt 2, irrational_sqrt_two.rat_add _, sub_lt_iff_lt_add.mp hq1,
    lt_sub_iff_add_lt.mp hq2⟩
#align exists_irrational_btwn exists_irrational_btwn

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Irrational/Variant5641b0990d3f6f538b6e90cfe736131fd030b7b3e692b6173411d3e3f2a09c96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Irrational/Variant5641b0990d3f6f538b6e90cfe736131fd030b7b3e692b6173411d3e3f2a09c96.lean#L668).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8038b6e21aa94e25d420aac57bf9e9b47d7d9e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
