# singleton_mem_nhdsWithin_of_mem_discrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f92abe87-f14e-3aaf-da8b-da73c7fdfc27",
  "kind": "theorem",
  "lexical_name": "singleton_mem_nhdsWithin_of_mem_discrete",
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
  "slug": "singleton-mem-nhdswithin-of-mem-discrete--523aa19110c81dc60d5496c4",
  "source": {
    "blob": "0c592c2fa323e46713beb19aa30831ced6a00d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 882,
    "line": 874,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:523aa19110c81dc60d5496c4f650a86faf4b210c8bea1410c1a1423cd8b19058",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f92abe87-f14e-3aaf-da8b-da73c7fdfc27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 874–882.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singleton_mem_nhdsWithin_of_mem_discrete {s : Set X} (hs : IsDiscrete s) {x : X}
    (hx : x ∈ s) : {x} ∈ 𝓝[s] x := by
  rw [isDiscrete_iff_discreteTopology] at hs
  have : ({⟨x, hx⟩} : Set s) ∈ 𝓝 (⟨x, hx⟩ : s) := by simp [nhds_discrete]
  simpa only [nhdsWithin_eq_map_subtype_coe hx, image_singleton] using
    @image_mem_map _ _ _ ((↑) : s → X) _ this

/-- The neighbourhoods filter of `x` within `s`, under the discrete topology, is equal to
the pure `x` filter (which is the principal filter at the singleton `{x}`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean#L874).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c592c2fa323e46713beb19aa30831ced6a00d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
