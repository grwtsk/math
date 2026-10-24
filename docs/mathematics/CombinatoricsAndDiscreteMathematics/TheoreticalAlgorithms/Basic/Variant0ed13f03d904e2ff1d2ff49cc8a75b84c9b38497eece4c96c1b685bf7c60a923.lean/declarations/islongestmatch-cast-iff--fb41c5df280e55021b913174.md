# isLongestMatch_cast_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b1d36d4-688f-6cb4-9c67-597f2783a31b",
  "kind": "theorem",
  "lexical_name": "isLongestMatch_cast_iff",
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
  "slug": "islongestmatch-cast-iff--fb41c5df280e55021b913174",
  "source": {
    "blob": "be753e249f36e5d5eccbafe7cbaaa486ecc5eaf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 204,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb41c5df280e55021b913174085dd13bbc307b585c9a0db402daba144b27692c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b1d36d4-688f-6cb4-9c67-597f2783a31b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLongestMatch_cast_iff {pat : ρ} [PatternModel pat] {s t : Slice}
    (hst : s.copy = t.copy) {pos : s.Pos} :
    IsLongestMatch pat (pos.cast hst) ↔ IsLongestMatch pat pos := by
  simp only [isLongestMatch_iff, isMatch_cast_iff, and_congr_right_iff]
  refine fun _ => ⟨fun h p hp => ?_, fun h p hp => ?_⟩
  · rw [← isMatch_cast_iff hst]
    exact h _ (by simpa)
  · have : p = (p.cast hst.symm).cast hst := by simp
    rw [this, isMatch_cast_iff hst]
    exact h _ (by rwa [this, Pos.cast_lt_cast_iff] at hp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be753e249f36e5d5eccbafe7cbaaa486ecc5eaf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
