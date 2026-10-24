# Pos.Splits.mem_toList_left_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ebf5e72-a970-da95-dda5-724a355abe8d",
  "kind": "theorem",
  "lexical_name": "Pos.Splits.mem_toList_left_iff",
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
  "slug": "pos-splits-mem-tolist-left-iff--a2bf21e338a945929e43a8bb",
  "source": {
    "blob": "953350673ac653155f61c00f438b225371907faf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 285,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant29a960f9a516998a110864a150cd948d277367dc9ef432fcb83b15de796e1438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2bf21e338a945929e43a8bb04f494cf3976d2c2f87e2900f5771c7529c35bdc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant29a960f9a516998a110864a150cd948d277367dc9ef432fcb83b15de796e1438.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ebf5e72-a970-da95-dda5-724a355abe8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pos.Splits.mem_toList_left_iff {s : String} {pos : s.Pos} {t u : String} {c : Char}
    (hs : pos.Splits t u) :
    c ∈ t.toList ↔ ∃ pos', ∃ (h : pos' < pos), pos'.get (Pos.ne_endPos_of_lt h) = c := by
  rw [hs.eq_left pos.splits, Slice.mem_toList_copy_iff_exists_get]
  refine ⟨?_, ?_⟩
  · rintro ⟨p, hp, hpget⟩
    have hlt : Pos.ofSliceTo p < pos := by
      simpa using Pos.ofSliceTo_lt_ofSliceTo_iff.mpr ((Slice.Pos.lt_endPos_iff _).mpr hp)
    exact ⟨_, hlt, by rwa [Pos.get_eq_get_ofSliceTo] at hpget⟩
  · rintro ⟨pos', hlt, hget⟩
    exact ⟨pos.sliceTo pos' (Std.le_of_lt hlt),
      fun h => Std.ne_of_lt hlt (by simpa using congrArg Pos.ofSliceTo h),
      by rw [Pos.get_eq_get_ofSliceTo]; simpa using hget⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant29a960f9a516998a110864a150cd948d277367dc9ef432fcb83b15de796e1438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant29a960f9a516998a110864a150cd948d277367dc9ef432fcb83b15de796e1438.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `953350673ac653155f61c00f438b225371907faf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
