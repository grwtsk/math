# continuous_ultrafilter_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94caa897-1721-8cf2-48e1-545b08a50eb5",
  "kind": "theorem",
  "lexical_name": "continuous_ultrafilter_extend",
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
  "slug": "continuous-ultrafilter-extend--6f676ce175fdcd0993c156d2",
  "source": {
    "blob": "abbaa476aba7139389c6225e698dfc7832dfad97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 195,
    "path": "GRWTSK/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f676ce175fdcd0993c156d2768bbf249bae85fc95aa439729e9f9ddfd9a2870",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94caa897-1721-8cf2-48e1-545b08a50eb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_ultrafilter_extend (f : α → γ) : Continuous (Ultrafilter.extend f) := by
  have h : ∀ b : Ultrafilter α, ∃ c, Tendsto f (comap pure (𝓝 b)) (𝓝 c) := fun b =>
    -- b.map f is an ultrafilter on γ, which is compact, so it converges to some c in γ.
    let ⟨c, _, h'⟩ :=
      isCompact_univ.ultrafilter_le_nhds (b.map f) (by rw [le_principal_iff]; exact univ_mem)
    ⟨c, le_trans (map_mono (ultrafilter_comap_pure_nhds _)) h'⟩
  letI : TopologicalSpace α := ⊥
  haveI : NormalSpace γ := normalOfCompactT2
  exact denseInducing_pure.continuous_extend h
#align continuous_ultrafilter_extend continuous_ultrafilter_extend

/-- The value of `Ultrafilter.extend f` on an ultrafilter `b` is the
  unique limit of the ultrafilter `b.map f` in `γ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abbaa476aba7139389c6225e698dfc7832dfad97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
