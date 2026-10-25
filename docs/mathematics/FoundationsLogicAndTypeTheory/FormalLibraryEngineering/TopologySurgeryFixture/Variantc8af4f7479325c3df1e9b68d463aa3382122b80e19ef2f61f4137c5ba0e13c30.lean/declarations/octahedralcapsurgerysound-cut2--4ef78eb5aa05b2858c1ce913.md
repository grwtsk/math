# octahedralCapSurgerySound_cut2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43e6cf0f-ae05-1fcc-fc7f-0974d432f56b",
  "kind": "theorem",
  "lexical_name": "octahedralCapSurgerySound_cut2",
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
  "slug": "octahedralcapsurgerysound-cut2--4ef78eb5aa05b2858c1ce913",
  "source": {
    "blob": "21c2672348818cd471d8c6605adc09f55f926c0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryFixture/Variantc8af4f7479325c3df1e9b68d463aa3382122b80e19ef2f61f4137c5ba0e13c30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ef78eb5aa05b2858c1ce9137d6146225f5b8b57b64b572eb32615a148b1e1f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryFixture/Variantc8af4f7479325c3df1e9b68d463aa3382122b80e19ef2f61f4137c5ba0e13c30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43e6cf0f-ae05-1fcc-fc7f-0974d432f56b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem octahedralCapSurgerySound_cut2 :
    OctahedralCapSurgerySound 2 := by
  constructor
  · rfl
  · intro edge
    cases edge with
    | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
    | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
    | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryFixture/Variantc8af4f7479325c3df1e9b68d463aa3382122b80e19ef2f61f4137c5ba0e13c30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryFixture/Variantc8af4f7479325c3df1e9b68d463aa3382122b80e19ef2f61f4137c5ba0e13c30.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21c2672348818cd471d8c6605adc09f55f926c0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
