# ContinuousOn.tendstoUniformly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac07ee8e-27d1-7a9c-86b3-ad69a6f0b1cc",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.tendstoUniformly",
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
  "slug": "continuouson-tendstouniformly--5830f6b1260a19ab89da37f3",
  "source": {
    "blob": "cde37a29ceafd4c16dfe19bae5085c8e9e7dea6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variant9efeaa72a9bc126d571c4bbbd8ca4fa36938458e3f0dec47e94a0f8d1c58df71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5830f6b1260a19ab89da37f3ae4b10b01f9a735200eec335ecaf66621780c99d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variant9efeaa72a9bc126d571c4bbbd8ca4fa36938458e3f0dec47e94a0f8d1c58df71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac07ee8e-27d1-7a9c-86b3-ad69a6f0b1cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.tendstoUniformly [LocallyCompactSpace α] [CompactSpace β] [UniformSpace γ]
    {f : α → β → γ} {x : α} {U : Set α} (hxU : U ∈ 𝓝 x) (h : ContinuousOn ↿f (U ×ˢ univ)) :
    TendstoUniformly f (f x) (𝓝 x) := by
  rcases LocallyCompactSpace.local_compact_nhds _ _ hxU with ⟨K, hxK, hKU, hK⟩
  have : UniformContinuousOn ↿f (K ×ˢ univ) :=
    IsCompact.uniformContinuousOn_of_continuous (hK.prod isCompact_univ)
      (h.mono <| prod_mono hKU Subset.rfl)
  exact this.tendstoUniformly hxK

/-- A continuous family of functions `α → β → γ` tends uniformly to its value at `x`
if `α` is weakly locally compact and `β` is compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variant9efeaa72a9bc126d571c4bbbd8ca4fa36938458e3f0dec47e94a0f8d1c58df71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variant9efeaa72a9bc126d571c4bbbd8ca4fa36938458e3f0dec47e94a0f8d1c58df71.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cde37a29ceafd4c16dfe19bae5085c8e9e7dea6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
