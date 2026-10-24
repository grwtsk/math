# primePowerInventory_filter_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8f8aeff-0fb3-b5fc-a35d-fa9eb7407d36",
  "kind": "theorem",
  "lexical_name": "primePowerInventory_filter_log",
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
  "slug": "primepowerinventory-filter-log--380de2ed59188b0df31e0829",
  "source": {
    "blob": "448aa6eb7b9039da29d505674a0adbfd366b5fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variantf73d31aa71355108c5b4f3fd7bbfb09c6e4206dce79fab98e259cdd607268797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:380de2ed59188b0df31e0829f1e31a29f49cdca152aadc9a58dacea72421f06b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variantf73d31aa71355108c5b4f3fd7bbfb09c6e4206dce79fab98e259cdd607268797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8f8aeff-0fb3-b5fc-a35d-fa9eb7407d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primePowerInventory_filter_log (b t : ℝ) (ht : t ≤ b) :
    (primePowerInventory b).filter (fun n : ℕ => Real.log n ≤ t) =
      primePowerInventory t := by
  ext n
  simp only [primePowerInventory, Finset.mem_filter, Finset.mem_Icc]
  by_cases hn : 2 ≤ n
  · have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
    rw [Real.log_le_iff_le_exp hn0,
      Nat.le_floor_iff (Real.exp_pos b).le, Nat.le_floor_iff (Real.exp_pos t).le]
    constructor
    · exact fun h => ⟨h.1.1, h.2⟩
    · exact fun h => ⟨⟨h.1, h.2.trans (Real.exp_le_exp.mpr ht)⟩, h.2⟩
  · simp [hn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variantf73d31aa71355108c5b4f3fd7bbfb09c6e4206dce79fab98e259cdd607268797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variantf73d31aa71355108c5b4f3fd7bbfb09c6e4206dce79fab98e259cdd607268797.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `448aa6eb7b9039da29d505674a0adbfd366b5fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
