# iterateLaw_wasserstein_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "959de951c6fb7a7bef94b113d7566bdc93ee59a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f32e8d5c5bdb66fcdddbf1a2cda79f5ee3704b4fd7563257e860c12ac921c2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:112cd339-02c9-8524-266d-658477f84efd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:183236b4-c423-57c6-aea2-0bb62558e262",
  "kind": "theorem",
  "lexical_name": "iterateLaw_wasserstein_le",
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
  "slug": "iteratelaw-wasserstein-le--27a787ef3a571b3df0ff1cf7",
  "source": {
    "blob": "959de951c6fb7a7bef94b113d7566bdc93ee59a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 144,
    "path": "GRWTSK/Topology/MetricTopology/Dynamics/Variant9f32e8d5c5bdb66fcdddbf1a2cda79f5ee3704b4fd7563257e860c12ac921c2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27a787ef3a571b3df0ff1cf7ba5c93459c8a740df45f0764d7746ef84b41e39a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dynamics/Variant9f32e8d5c5bdb66fcdddbf1a2cda79f5ee3704b4fd7563257e860c12ac921c2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:183236b4-c423-57c6-aea2-0bb62558e262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterateLaw_wasserstein_le
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type*}
    (family :
      ScheduleKernelFamily system carrier Schedule)
    (schedule : Nat → Schedule)
    (depth : Nat)
    (initial : carrier.Law) :
    carrier.wasserstein
        (family.iterateLaw schedule depth initial)
        family.invariantLaw ≤
      family.contraction ^ depth *
        carrier.wasserstein initial family.invariantLaw := by
  simpa
      [iterateLaw, carrier.wasserstein_eq_nndist]
    using
      family.toBoundaryCertificate.nndist_to_boundary_le_pow
        schedule
        (Set.mem_univ initial)
        depth

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dynamics/Variant9f32e8d5c5bdb66fcdddbf1a2cda79f5ee3704b4fd7563257e860c12ac921c2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dynamics/Variant9f32e8d5c5bdb66fcdddbf1a2cda79f5ee3704b4fd7563257e860c12ac921c2d.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959de951c6fb7a7bef94b113d7566bdc93ee59a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
