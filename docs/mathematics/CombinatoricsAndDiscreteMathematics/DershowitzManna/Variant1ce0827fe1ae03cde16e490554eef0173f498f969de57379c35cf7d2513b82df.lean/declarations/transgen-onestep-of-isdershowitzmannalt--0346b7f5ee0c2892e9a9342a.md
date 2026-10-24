# transGen_oneStep_of_isDershowitzMannaLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d75e9989-f8ec-7deb-b2b5-9bab977221b5",
  "kind": "lemma",
  "lexical_name": "transGen_oneStep_of_isDershowitzMannaLT",
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
  "slug": "transgen-onestep-of-isdershowitzmannalt--0346b7f5ee0c2892e9a9342a",
  "source": {
    "blob": "0267cead749bdb9b001342a2817104e178710e9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0346b7f5ee0c2892e9a9342a78b9c8fdb3d6c0a0905fa61fc0d8417575a9b846",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d75e9989-f8ec-7deb-b2b5-9bab977221b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma transGen_oneStep_of_isDershowitzMannaLT :
    IsDershowitzMannaLT M N → TransGen OneStep M N := by
  classical
  rintro ⟨X, Y, Z, hZ, hM, hN, hYZ⟩
  induction' Z using Multiset.induction_on with z Z ih generalizing X Y M N
  · simp at hZ
  obtain rfl | hZ := eq_or_ne Z 0
  · exact .single ⟨X, Y, z, hM, hN, by simpa using hYZ⟩
  let Y' : Multiset α := Y.filter (· < z)
  refine .tail (b := X + Y' + Z) (ih (X + Y') (Y - Y') hZ ?_ rfl fun y hy ↦ ?_) <|
    ⟨X + Z, Y', z, add_right_comm .., by simp [hN, add_comm (_ + _)], by simp [Y']⟩
  · rw [add_add_tsub_cancel (filter_le ..), hM]
  · simp only [sub_filter_eq_filter_not, mem_filter, Y'] at hy
    simpa [hy.2] using hYZ y (by aesop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0267cead749bdb9b001342a2817104e178710e9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
