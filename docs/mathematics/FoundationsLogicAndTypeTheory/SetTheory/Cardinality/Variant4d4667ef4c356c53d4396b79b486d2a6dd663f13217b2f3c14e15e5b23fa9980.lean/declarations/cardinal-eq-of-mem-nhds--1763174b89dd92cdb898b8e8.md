# cardinal_eq_of_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2db73abd-7d8b-bc89-5f08-5ea35ac36633",
  "kind": "theorem",
  "lexical_name": "cardinal_eq_of_mem_nhds",
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
  "slug": "cardinal-eq-of-mem-nhds--1763174b89dd92cdb898b8e8",
  "source": {
    "blob": "6cdc33df79ecdc692115a2fe89b8d5c68b04758c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1763174b89dd92cdb898b8e87b8aeddef2677c24c8a4fbce6a0753f982f74b8c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2db73abd-7d8b-bc89-5f08-5ea35ac36633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinal_eq_of_mem_nhds
    {E : Type*} (𝕜 : Type*) [NontriviallyNormedField 𝕜] [AddGroup E] [MulActionWithZero 𝕜 E]
    [TopologicalSpace E] [ContinuousAdd E] [ContinuousSMul 𝕜 E]
    {s : Set E} {x : E} (hs : s ∈ 𝓝 x) : #s = #E := by
  let g := Homeomorph.addLeft x
  let t := g ⁻¹' s
  have : t ∈ 𝓝 0 := g.continuous.continuousAt.preimage_mem_nhds (by simpa [g] using hs)
  have A : #t = #E := cardinal_eq_of_mem_nhds_zero 𝕜 this
  have B : #t = #s := Cardinal.mk_subtype_of_equiv s g.toEquiv
  rwa [B] at A

/-- In a topological vector space over a nontrivially normed field, any nonempty open set has
the same cardinality as the whole space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cdc33df79ecdc692115a2fe89b8d5c68b04758c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
