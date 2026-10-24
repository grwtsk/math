# prod_self_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef282d85-a262-e12f-88c5-5a3faf098f35",
  "kind": "theorem",
  "lexical_name": "prod_self_subset",
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
  "slug": "prod-self-subset--e5b420b1cab2cc7f3d354acb",
  "source": {
    "blob": "da83ed6adcef1f61eac4fc81cbf77c126d912cec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5b420b1cab2cc7f3d354acbf93fb026ca218cd789f52438926307e4214e4655",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef282d85-a262-e12f-88c5-5a3faf098f35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_self_subset {U} (hU : U ∈ 𝓝 (1 : G × G)) :
    ∃ V : OpenSubgroup G, (V : Set G) ×ˢ (V : Set G) ⊆ U :=
  let ⟨V, W, h⟩ := prod_subset hU
  ⟨V ⊓ W, by refine Set.Subset.trans (Set.prod_mono ?_ ?_) ‹_› <;> simp⟩

/-- The cartesian product of two nonarchimedean groups is nonarchimedean. -/
@[to_additive "The cartesian product of two nonarchimedean groups is nonarchimedean."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da83ed6adcef1f61eac4fc81cbf77c126d912cec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
