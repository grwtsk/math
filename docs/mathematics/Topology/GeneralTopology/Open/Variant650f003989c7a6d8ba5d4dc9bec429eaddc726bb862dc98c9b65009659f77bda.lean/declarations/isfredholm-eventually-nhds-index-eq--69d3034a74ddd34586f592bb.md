# IsFredholm.eventually_nhds_index_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb52d5d881e9822e3ee5edb1d14b64c3f6643197",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/650f003989c7a6d8ba5d4dc9bec429eaddc726bb862dc98c9b65009659f77bda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74dd4337-e8ef-9357-96df-04481db35878",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcd24075-f452-088d-9f92-92db9a0f98b2",
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
  "slug": "isfredholm-eventually-nhds-index-eq--69d3034a74ddd34586f592bb",
  "source": {
    "blob": "eb52d5d881e9822e3ee5edb1d14b64c3f6643197",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/Open/Variant650f003989c7a6d8ba5d4dc9bec429eaddc726bb862dc98c9b65009659f77bda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69d3034a74ddd34586f592bb0ceae40c52157f037a7e8fac701d7c4d81ab5f0f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Open/Variant650f003989c7a6d8ba5d4dc9bec429eaddc726bb862dc98c9b65009659f77bda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcd24075-f452-088d-9f92-92db9a0f98b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–96.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Open/Variant650f003989c7a6d8ba5d4dc9bec429eaddc726bb862dc98c9b65009659f77bda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Open/Variant650f003989c7a6d8ba5d4dc9bec429eaddc726bb862dc98c9b65009659f77bda.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb52d5d881e9822e3ee5edb1d14b64c3f6643197` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
