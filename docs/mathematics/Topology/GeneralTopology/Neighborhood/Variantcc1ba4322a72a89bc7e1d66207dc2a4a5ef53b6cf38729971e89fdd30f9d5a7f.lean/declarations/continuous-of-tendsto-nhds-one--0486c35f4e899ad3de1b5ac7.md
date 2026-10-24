# continuous_of_tendsto_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38eed759-4beb-fe62-136d-5f1deb2794df",
  "kind": "theorem",
  "lexical_name": "continuous_of_tendsto_nhds_one",
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
  "slug": "continuous-of-tendsto-nhds-one--0486c35f4e899ad3de1b5ac7",
  "source": {
    "blob": "c699590b3ab696baf28c44478bafdf2d8a450bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0486c35f4e899ad3de1b5ac7eb221250bf223618f116f35d71a2aafb669d1555",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38eed759-4beb-fe62-136d-5f1deb2794df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_of_tendsto_nhds_one {M hom : Type*} [MulOneClass M] [TopologicalSpace M]
    [ContinuousMul M] [FunLike hom G M] [MonoidHomClass hom G M] (f : hom)
    (hf : Tendsto f (𝓝 1) (𝓝 1)) :
    Continuous f :=
  continuous_iff_continuousAt.2 fun x ↦ by
    simpa only [ContinuousAt, ← map_mul_left_nhds_one x, tendsto_map'_iff, Function.comp_def,
      map_mul, mul_one] using hf.const_mul (f x)

/-- A monoid homomorphism (a bundled morphism of a type that implements `MonoidHomClass`) from a
topological group to a topological monoid is continuous provided that it is continuous at one. See
also `uniformContinuous_of_continuousAt_one`. -/
@[to_additive
  /-- An additive monoid homomorphism (a bundled morphism of a type that implements
  `AddMonoidHomClass`) from an additive topological group to an additive topological monoid is
  continuous provided that it is continuous at zero. See also
  `uniformContinuous_of_continuousAt_zero`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c699590b3ab696baf28c44478bafdf2d8a450bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
