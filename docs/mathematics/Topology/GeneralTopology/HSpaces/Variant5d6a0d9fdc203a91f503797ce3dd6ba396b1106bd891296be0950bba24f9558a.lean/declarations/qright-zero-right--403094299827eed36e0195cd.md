# qRight_zero_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d6da79b-729d-28b9-f846-e0b0dd2cf069",
  "kind": "theorem",
  "lexical_name": "qRight_zero_right",
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
  "slug": "qright-zero-right--403094299827eed36e0195cd",
  "source": {
    "blob": "207c245299bea9fd80a1128e1ae3d2e5a620fd7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:403094299827eed36e0195cdd83b4c55509250d7ad1b75041e40f71694aca6ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d6da79b-729d-28b9-f846-e0b0dd2cf069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem qRight_zero_right (t : I) :
    (qRight (t, 0) : ℝ) = if (t : ℝ) ≤ 1 / 2 then (2 : ℝ) * t else 1 := by
  simp only [qRight, coe_zero, add_zero, div_one]
  split_ifs
  · rw [Set.projIcc_of_mem _ ((mul_pos_mem_iff zero_lt_two).2 _)]
    refine' ⟨t.2.1, _⟩
    tauto
  · rw [(Set.projIcc_eq_right _).2]
    · linarith
    · exact zero_lt_one
#align unit_interval.Q_right_zero_right unitInterval.qRight_zero_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `207c245299bea9fd80a1128e1ae3d2e5a620fd7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
