# exists_mem_forall_mem_nhdsWithin_pos_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7bbbfa5-d2f3-e064-43c0-f35035b91396",
  "kind": "theorem",
  "lexical_name": "exists_mem_forall_mem_nhdsWithin_pos_measure",
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
  "slug": "exists-mem-forall-mem-nhdswithin-pos-measure--b64ffd4b67a7453644154e5e",
  "source": {
    "blob": "a3b7ba710e52e268825f1a4105ebcf3e9fb2737c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4b015fbe62a5f07a7b3117d9da563059687da51565aefb0843a76c2b3ef78e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b64ffd4b67a7453644154e5e09563c30eab2729ead773b23c04bd8108aba3fb1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4b015fbe62a5f07a7b3117d9da563059687da51565aefb0843a76c2b3ef78e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7bbbfa5-d2f3-e064-43c0-f35035b91396`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_forall_mem_nhdsWithin_pos_measure [TopologicalSpace α]
    [SecondCountableTopology α] {s : Set α} (hs : μ s ≠ 0) :
    ∃ x ∈ s, ∀ t ∈ 𝓝[s] x, 0 < μ t := by
  contrapose! hs
  simp only [nonpos_iff_eq_zero] at hs
  exact measure_null_of_locally_null s hs

end OuterMeasureClass

namespace OuterMeasure

variable {α : Type*} {m : OuterMeasure α}

/-- If `s : ι → Set α` is a sequence of sets, `S = ⋃ n, s n`, and `m (S \ s n)` tends to zero along
some nontrivial filter (usually `atTop` on `ι = ℕ`), then `m S = ⨆ n, m (s n)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4b015fbe62a5f07a7b3117d9da563059687da51565aefb0843a76c2b3ef78e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4b015fbe62a5f07a7b3117d9da563059687da51565aefb0843a76c2b3ef78e4e.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b7ba710e52e268825f1a4105ebcf3e9fb2737c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
