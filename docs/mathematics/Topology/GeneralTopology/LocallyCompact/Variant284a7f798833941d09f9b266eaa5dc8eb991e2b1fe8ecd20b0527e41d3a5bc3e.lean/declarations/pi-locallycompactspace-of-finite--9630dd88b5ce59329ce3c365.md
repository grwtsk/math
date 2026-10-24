# Pi.locallyCompactSpace_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1424f94e7eef14067d0cc1c0ad352dc9f7ef7cf7eb69f5485beedf1643a2ea63",
  "kind": "instance",
  "lexical_name": "Pi.locallyCompactSpace_of_finite",
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
  "slug": "pi-locallycompactspace-of-finite--9630dd88b5ce59329ce3c365",
  "source": {
    "blob": "5e21cdfc86a9ba8f5606e257466cd71cc5d3cff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9630dd88b5ce59329ce3c3655217df94b265afeaa9e1501b1b6aade29c46165e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1424f94e7eef14067d0cc1c0ad352dc9f7ef7cf7eb69f5485beedf1643a2ea63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.locallyCompactSpace_of_finite [Finite ι] : LocallyCompactSpace (∀ i, X i) :=
  ⟨fun t n hn => by
    rw [nhds_pi, Filter.mem_pi] at hn
    obtain ⟨s, -, n', hn', hsub⟩ := hn
    choose n'' hn'' hsub' hc using fun i =>
      LocallyCompactSpace.local_compact_nhds (t i) (n' i) (hn' i)
    refine ⟨(Set.univ : Set ι).pi n'', ?_, subset_trans (fun _ h => ?_) hsub, isCompact_univ_pi hc⟩
    · exact (set_pi_mem_nhds_iff (@Set.finite_univ ι _) _).mpr fun i _ => hn'' i
    · exact fun i _ => hsub' i (h i trivial)⟩

/-- For spaces that are not Hausdorff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e21cdfc86a9ba8f5606e257466cd71cc5d3cff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
