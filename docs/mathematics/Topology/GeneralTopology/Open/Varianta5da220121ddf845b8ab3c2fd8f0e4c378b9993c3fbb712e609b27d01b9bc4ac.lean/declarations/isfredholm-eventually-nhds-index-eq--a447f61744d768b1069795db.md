# IsFredholm.eventually_nhds_index_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b6e7e51-c4d5-9fbe-ab97-911c5e39b29d",
  "kind": "theorem",
  "lexical_name": "IsFredholm.eventually_nhds_index_eq",
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
  "slug": "isfredholm-eventually-nhds-index-eq--a447f61744d768b1069795db",
  "source": {
    "blob": "e76b51f789144339023e96a9c3ec9fa801064c68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/Open/Varianta5da220121ddf845b8ab3c2fd8f0e4c378b9993c3fbb712e609b27d01b9bc4ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a447f61744d768b1069795dbb31bf12939d477089ca041d0e4eb8a0678912904",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Open/Varianta5da220121ddf845b8ab3c2fd8f0e4c378b9993c3fbb712e609b27d01b9bc4ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b6e7e51-c4d5-9fbe-ab97-911c5e39b29d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsFredholm.eventually_nhds_index_eq [CompleteSpace 𝕜]
    {T₀ : E →L[𝕜] F} (hT₀ : T₀.IsFredholm) : ∀ᶠ T in 𝓝 T₀, T.index = T₀.index := by
  obtain ⟨pkg⟩ := hT₀.nonempty_fredholmPackage
  rw [pkg.eventually_nhds_isFredholm_and_index_eq.self_of_nhds.2]
  exact pkg.eventually_nhds_isFredholm_and_index_eq.mono fun _ ⟨_, eq⟩ ↦ eq

/-- If `T₀` is a Fredholm operator between two Banach spaces, then the integer-valued map
`T ↦ T.index` is continuous at `T₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Open/Varianta5da220121ddf845b8ab3c2fd8f0e4c378b9993c3fbb712e609b27d01b9bc4ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Open/Varianta5da220121ddf845b8ab3c2fd8f0e4c378b9993c3fbb712e609b27d01b9bc4ac.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e76b51f789144339023e96a9c3ec9fa801064c68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
