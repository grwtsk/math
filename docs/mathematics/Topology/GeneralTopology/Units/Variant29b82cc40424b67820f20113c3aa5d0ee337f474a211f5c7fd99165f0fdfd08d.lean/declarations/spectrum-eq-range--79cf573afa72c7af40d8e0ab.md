# spectrum_eq_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32b54814-6933-d159-84ef-10739df06867",
  "kind": "theorem",
  "lexical_name": "spectrum_eq_range",
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
  "slug": "spectrum-eq-range--79cf573afa72c7af40d8e0ab",
  "source": {
    "blob": "48f36b02ad5331409f9a76d0f00eddac5c6decf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variant29b82cc40424b67820f20113c3aa5d0ee337f474a211f5c7fd99165f0fdfd08d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79cf573afa72c7af40d8e0ab7bbf7039b211e8f646dd0fcc238ae3a3e6bd15a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variant29b82cc40424b67820f20113c3aa5d0ee337f474a211f5c7fd99165f0fdfd08d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32b54814-6933-d159-84ef-10739df06867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectrum_eq_range (f : C(X, 𝕜)) : spectrum 𝕜 f = Set.range f := by
  ext x
  simp only [spectrum.mem_iff, isUnit_iff_forall_ne_zero, not_forall, coe_sub, Pi.sub_apply,
    algebraMap_apply, Algebra.id.smul_eq_mul, mul_one, Classical.not_not, Set.mem_range,
    sub_eq_zero, @eq_comm _ x _]
#align continuous_map.spectrum_eq_range ContinuousMap.spectrum_eq_range

end NormedField

end ContinuousMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variant29b82cc40424b67820f20113c3aa5d0ee337f474a211f5c7fd99165f0fdfd08d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variant29b82cc40424b67820f20113c3aa5d0ee337f474a211f5c7fd99165f0fdfd08d.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48f36b02ad5331409f9a76d0f00eddac5c6decf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
