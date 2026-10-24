# Filter.Tendsto.smul_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9870174c-a0bf-c1d2-2950-1dac8effbb24",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.smul_const",
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
  "slug": "filter-tendsto-smul-const--adaa8e20b607f4b9c9578d8e",
  "source": {
    "blob": "44b42db8a2cfc12b521fbbff55615d9c0a2dc503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adaa8e20b607f4b9c9578d8e467124f8ad1913a4bf8e5897d97108eb49796dfb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9870174c-a0bf-c1d2-2950-1dac8effbb24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.smul_const {f : α → M} {l : Filter α} {c : M} (hf : Tendsto f l (𝓝 c))
    (a : X) : Tendsto (fun x => f x • a) l (𝓝 (c • a)) :=
  hf.smul tendsto_const_nhds
#align filter.tendsto.smul_const Filter.Tendsto.smul_const
#align filter.tendsto.vadd_const Filter.Tendsto.vadd_const

variable {f : Y → M} {g : Y → X} {b : Y} {s : Set Y}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44b42db8a2cfc12b521fbbff55615d9c0a2dc503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
