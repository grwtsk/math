# Pi.locallyCompactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd3270d825fc6eff253d14c8de55d1edc5eca55c6a0ff23417555dc1626ba60f",
  "kind": "instance",
  "lexical_name": "Pi.locallyCompactSpace",
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
  "slug": "pi-locallycompactspace--8cd7def78651408eaf554deb",
  "source": {
    "blob": "1061572b70778d491c3e7fe9273945f44c588294",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cd7def78651408eaf554debc5486bfd4c05c855f29ac5fb88163d44f33b0178",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd3270d825fc6eff253d14c8de55d1edc5eca55c6a0ff23417555dc1626ba60f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.locallyCompactSpace [∀ i, CompactSpace (X i)] : LocallyCompactSpace (∀ i, X i) :=
  ⟨fun t n hn => by
    rw [nhds_pi, Filter.mem_pi] at hn
    obtain ⟨s, hs, n', hn', hsub⟩ := hn
    choose n'' hn'' hsub' hc using fun i =>
      LocallyCompactSpace.local_compact_nhds (t i) (n' i) (hn' i)
    refine ⟨s.pi n'', ?_, subset_trans (fun _ => ?_) hsub, ?_⟩
    · exact (set_pi_mem_nhds_iff hs _).mpr fun i _ => hn'' i
    · exact forall₂_imp fun i _ hi' => hsub' i hi'
    · classical
      rw [← Set.univ_pi_ite]
      refine isCompact_univ_pi fun i => ?_
      by_cases h : i ∈ s
      · rw [if_pos h]
        exact hc i
      · rw [if_neg h]
        exact CompactSpace.isCompact_univ⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1061572b70778d491c3e7fe9273945f44c588294` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
