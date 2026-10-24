# isCompact_iff_totallyBounded_isComplete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b10ef9d9-7105-67c5-e6b6-ecc4aa0e360d",
  "kind": "theorem",
  "lexical_name": "isCompact_iff_totallyBounded_isComplete",
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
  "slug": "iscompact-iff-totallybounded-iscomplete--413270ceae0a24b1ae13c3ae",
  "source": {
    "blob": "8d844b674942d472920dc2e03d2c80465cc96dfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 609,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:413270ceae0a24b1ae13c3aebe778220bacad40d76a09135c40cc921b018ad9d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b10ef9d9-7105-67c5-e6b6-ecc4aa0e360d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_iff_totallyBounded_isComplete {s : Set α} :
    IsCompact s ↔ TotallyBounded s ∧ IsComplete s :=
  ⟨fun hs =>
    ⟨totallyBounded_iff_ultrafilter.2 fun f hf =>
        let ⟨_, _, fx⟩ := isCompact_iff_ultrafilter_le_nhds.1 hs f hf
        cauchy_nhds.mono fx,
      fun f fc fs =>
      let ⟨a, as, fa⟩ := @hs f fc.1 fs
      ⟨a, as, le_nhds_of_cauchy_adhp fc fa⟩⟩,
    fun ⟨ht, hc⟩ =>
    isCompact_iff_ultrafilter_le_nhds.2 fun f hf =>
      hc _ (totallyBounded_iff_ultrafilter.1 ht f hf) hf⟩
#align is_compact_iff_totally_bounded_is_complete isCompact_iff_totallyBounded_isComplete

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d844b674942d472920dc2e03d2c80465cc96dfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
