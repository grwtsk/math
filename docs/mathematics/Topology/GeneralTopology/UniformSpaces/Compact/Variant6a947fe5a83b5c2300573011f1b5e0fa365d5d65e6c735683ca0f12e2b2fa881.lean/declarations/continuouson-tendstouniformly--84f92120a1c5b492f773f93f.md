# ContinuousOn.tendstoUniformly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a322bff7-a42d-cefd-2023-09ed6353ce28",
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
  "slug": "continuouson-tendstouniformly--84f92120a1c5b492f773f93f",
  "source": {
    "blob": "97ab3169a8e315499a405b1973150ada5e21b9bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84f92120a1c5b492f773f93f2a9d2497e5ed084bb8f5e8784b91ba6cf6a79851",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a322bff7-a42d-cefd-2023-09ed6353ce28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.tendstoUniformly [LocallyCompactSpace α] [CompactSpace β] [UniformSpace γ]
    {f : α → β → γ} {x : α} {U : Set α} (hxU : U ∈ 𝓝 x) (h : ContinuousOn (↿f) (U ×ˢ univ)) :
    TendstoUniformly f (f x) (𝓝 x) := by
  rcases LocallyCompactSpace.local_compact_nhds _ _ hxU with ⟨K, hxK, hKU, hK⟩
  have : UniformContinuousOn (↿f) (K ×ˢ univ) :=
    IsCompact.uniformContinuousOn_of_continuous (hK.prod isCompact_univ)
      (h.mono <| prod_mono hKU Subset.rfl)
  exact this.tendstoUniformly hxK
#align continuous_on.tendsto_uniformly ContinuousOn.tendstoUniformly

/-- A continuous family of functions `α → β → γ` tends uniformly to its value at `x` if `α` is
locally compact and `β` is compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ab3169a8e315499a405b1973150ada5e21b9bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
