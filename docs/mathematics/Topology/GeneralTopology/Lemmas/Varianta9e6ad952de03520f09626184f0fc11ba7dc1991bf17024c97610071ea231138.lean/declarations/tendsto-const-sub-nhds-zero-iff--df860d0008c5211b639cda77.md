# tendsto_const_sub_nhds_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7110f15-fe91-5e96-3f36-b3fc27d145f3",
  "kind": "theorem",
  "lexical_name": "tendsto_const_sub_nhds_zero_iff",
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
  "slug": "tendsto-const-sub-nhds-zero-iff--df860d0008c5211b639cda77",
  "source": {
    "blob": "d557b7f2be78cd090be4a19db377d02bae98d252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 250,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Varianta9e6ad952de03520f09626184f0fc11ba7dc1991bf17024c97610071ea231138.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df860d0008c5211b639cda772ec4c9b5d23524017dc763e309dc9ebd49d56162",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Varianta9e6ad952de03520f09626184f0fc11ba7dc1991bf17024c97610071ea231138.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7110f15-fe91-5e96-3f36-b3fc27d145f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_const_sub_nhds_zero_iff {l : Filter α} {f : α → ℝ≥0∞} {a : ℝ≥0∞} (ha : a ≠ ∞)
    (hfa : ∀ n, f n ≤ a) :
    Tendsto (fun n ↦ a - f n) l (𝓝 0) ↔ Tendsto (fun n ↦ f n) l (𝓝 a) := by
  rw [ENNReal.tendsto_nhds_zero, ENNReal.tendsto_nhds ha]
  refine ⟨fun h ε hε ↦ ?_, fun h ε hε ↦ ?_⟩
  · filter_upwards [h ε hε] with n hn
    refine ⟨?_, (hfa n).trans (le_add_right le_rfl)⟩
    rw [tsub_le_iff_right] at hn ⊢
    rwa [add_comm]
  · filter_upwards [h ε hε] with n hn
    have hN_left := hn.1
    rw [tsub_le_iff_right] at hN_left ⊢
    rwa [add_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Varianta9e6ad952de03520f09626184f0fc11ba7dc1991bf17024c97610071ea231138.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Varianta9e6ad952de03520f09626184f0fc11ba7dc1991bf17024c97610071ea231138.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d557b7f2be78cd090be4a19db377d02bae98d252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
