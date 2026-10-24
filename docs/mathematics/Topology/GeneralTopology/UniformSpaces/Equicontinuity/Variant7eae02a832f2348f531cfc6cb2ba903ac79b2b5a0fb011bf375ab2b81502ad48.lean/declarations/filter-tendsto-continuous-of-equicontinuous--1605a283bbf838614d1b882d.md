# Filter.Tendsto.continuous_of_equicontinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efde4d80-4251-93f8-5f1e-8e591cd8c812",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.continuous_of_equicontinuous",
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
  "slug": "filter-tendsto-continuous-of-equicontinuous--1605a283bbf838614d1b882d",
  "source": {
    "blob": "edeaa023f7615f9fc86899e670c1d0041a24cd10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 933,
    "line": 928,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant7eae02a832f2348f531cfc6cb2ba903ac79b2b5a0fb011bf375ab2b81502ad48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1605a283bbf838614d1b882d5dcc7f4e0f083387995b71814bf21fa94e1ed828",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant7eae02a832f2348f531cfc6cb2ba903ac79b2b5a0fb011bf375ab2b81502ad48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efde4d80-4251-93f8-5f1e-8e591cd8c812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 928–933.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.continuous_of_equicontinuous {l : Filter ι} [l.NeBot] {F : ι → X → α}
    {f : X → α} (h₁ : Tendsto F l (𝓝 f)) (h₂ : Equicontinuous F) : Continuous f :=
  continuous_iff_continuousAt.mpr fun x => h₁.continuousAt_of_equicontinuousAt (h₂ x)

/-- If `𝓕 : ι → X → α` tends to `f : X → α` *pointwise on `S : Set X`* along some nontrivial
filter, and if the family `𝓕` is equicontinuous, then the limit is continuous on `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant7eae02a832f2348f531cfc6cb2ba903ac79b2b5a0fb011bf375ab2b81502ad48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant7eae02a832f2348f531cfc6cb2ba903ac79b2b5a0fb011bf375ab2b81502ad48.lean#L928).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edeaa023f7615f9fc86899e670c1d0041a24cd10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
