# seminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52c7e43f35b062af071e4f65844e0b850e8f4675f2ce1692cc9bf891c2c69e0e",
  "kind": "def",
  "lexical_name": "seminorm",
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
  "slug": "seminorm--fc26b02f555a32fe24929fab",
  "source": {
    "blob": "61febe388136931eb71d1c284fc1506421af93d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 623,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant64362a54f13747963496e52c3e48d0f99f43c5d5124172993f73a5653c6f9ac0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc26b02f555a32fe24929fabd4f328d7fab3a27df51de1b988244121e9d9d9a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant64362a54f13747963496e52c3e48d0f99f43c5d5124172993f73a5653c6f9ac0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52c7e43f35b062af071e4f65844e0b850e8f4675f2ce1692cc9bf891c2c69e0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def seminorm (i : ℕ) : Seminorm 𝕜 𝓓^{n}_{K}(E, F) :=
  (normSeminorm 𝕜 (E →ᵇ (E [×i]→L[ℝ] F))).comp (structureMapLM 𝕜 n i)

-- Note: If these end up conflicting with other seminorms (e.g `SchwartzMap.seminorm`),
-- we may want to put them in a more specific scope.
@[inherit_doc ContDiffMapSupportedIn.seminorm]
scoped[Distributions] notation "N[" 𝕜 "]_{" K ", " n ", " i "}" =>
  ContDiffMapSupportedIn.seminorm 𝕜 _ _ n K i

@[inherit_doc ContDiffMapSupportedIn.seminorm]
scoped[Distributions] notation "N[" 𝕜 "]_{" K ", " i "}" =>
  ContDiffMapSupportedIn.seminorm 𝕜 _ _ ⊤ K i

@[inherit_doc ContDiffMapSupportedIn.seminorm]
scoped[Distributions] notation "N[" 𝕜 "; " F "]_{" K ", " n ", " i "}" =>
  ContDiffMapSupportedIn.seminorm 𝕜 _ F n K i

@[inherit_doc ContDiffMapSupportedIn.seminorm]
scoped[Distributions] notation "N[" 𝕜 "; " F "]_{" K ", " i "}" =>
  ContDiffMapSupportedIn.seminorm 𝕜 _ F ⊤ K i

/-- The seminorms on the space `𝓓^{n}_{K}(E, F)` given by sup of the
`ContDiffMapSupportedIn.seminorm k`for `k ≤ i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant64362a54f13747963496e52c3e48d0f99f43c5d5124172993f73a5653c6f9ac0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant64362a54f13747963496e52c3e48d0f99f43c5d5124172993f73a5653c6f9ac0.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61febe388136931eb71d1c284fc1506421af93d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
