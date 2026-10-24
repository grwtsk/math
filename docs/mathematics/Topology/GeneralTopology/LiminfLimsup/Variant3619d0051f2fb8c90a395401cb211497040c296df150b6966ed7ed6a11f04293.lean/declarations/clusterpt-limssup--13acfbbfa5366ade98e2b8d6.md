# ClusterPt.limsSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daa354b3-fb43-562f-1edd-82b5c97d336c",
  "kind": "theorem",
  "lexical_name": "ClusterPt.limsSup",
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
  "slug": "clusterpt-limssup--13acfbbfa5366ade98e2b8d6",
  "source": {
    "blob": "5da351eb41598dd43a4bae3aa9e4342b4f16bf27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13acfbbfa5366ade98e2b8d6c1a80a178f0197153746868c1d6b54f872b428c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daa354b3-fb43-562f-1edd-82b5c97d336c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ClusterPt.limsSup {f : Filter α} [NeBot f]
    (hc : f.IsCobounded (· ≤ ·) := by isBoundedDefault)
    (hb : f.IsBounded (· ≤ ·) := by isBoundedDefault) : ClusterPt f.limsSup f := by
  by_cases! hn : Nontrivial α
  · by_cases! htop : ∀ x, x ≤ f.limsSup
    · let : OrderTop α := { top := f.limsSup, le_top := htop }
      exact nhds_top_basis.clusterPt_iff_frequently |>.mpr fun a => frequently_lt_of_lt_limsSup hc
    · by_cases! hbot : ∀ x, f.limsSup ≤ x
      · let : OrderBot α := { bot := f.limsSup, bot_le := hbot }
        refine nhds_bot_basis.clusterPt_iff_frequently |>.mpr fun a h => ?_
        exact lt_mem_sets_of_limsSup_lt hb h |>.frequently
      · refine (nhds_basis_Ioo' hbot htop).clusterPt_iff_frequently |>.mpr fun a ⟨hl, hg⟩ => ?_
        exact frequently_lt_of_lt_limsSup hc hl |>.and_eventually <| lt_mem_sets_of_limsSup_lt hb hg
  · simp_all [ClusterPt, Filter.eq_top_of_neBot]

set_option backward.isDefEq.respectTransparency false in
/-- The `limsInf` of a filter `f` is a cluster point of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5da351eb41598dd43a4bae3aa9e4342b4f16bf27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
