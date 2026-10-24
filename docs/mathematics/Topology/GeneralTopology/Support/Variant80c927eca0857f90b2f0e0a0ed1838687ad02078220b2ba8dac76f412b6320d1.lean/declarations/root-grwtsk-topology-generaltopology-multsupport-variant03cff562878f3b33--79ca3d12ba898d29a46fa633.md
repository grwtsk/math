# _root_.GRWTSK.Topology.GeneralTopology.MulTSupport.Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.isCompact_range_of_mulSupport_subset_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cd27eaf-79d5-4cb8-e25a-0dda9d583781",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.MulTSupport.Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.isCompact_range_of_mulSupport_subset_isCompact",
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
  "slug": "root-grwtsk-topology-generaltopology-multsupport-variant03cff562878f3b33--79ca3d12ba898d29a46fa633",
  "source": {
    "blob": "f182e29bba1dd35639d3ac2fb35c98f35283f392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79ca3d12ba898d29a46fa633e571436543b247393f1bc4124dfe5484059ed69f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cd27eaf-79d5-4cb8-e25a-0dda9d583781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.MulTSupport.Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.isCompact_range_of_mulSupport_subset_isCompact [TopologicalSpace β]
    (hf : Continuous f) {k : Set α} (hk : IsCompact k) (h'f : mulSupport f ⊆ k) :
    IsCompact (range f) := by
  rcases range_eq_image_or_of_mulSupport_subset h'f with h2 | h2 <;> rw [h2]
  exacts [hk.image hf, (hk.image hf).insert 1]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f182e29bba1dd35639d3ac2fb35c98f35283f392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
