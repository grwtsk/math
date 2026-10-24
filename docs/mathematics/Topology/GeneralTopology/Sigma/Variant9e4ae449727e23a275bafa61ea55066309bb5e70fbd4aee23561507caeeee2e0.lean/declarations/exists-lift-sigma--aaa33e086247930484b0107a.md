# exists_lift_sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77dfede767bde51c67f24f0c1e4d3ee493dc6446",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca5fe71e-f882-7614-14bb-391c9af19d72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92ae10b3-dd9b-9e4f-5dcb-3234e5da95ba",
  "kind": "theorem",
  "lexical_name": "exists_lift_sigma",
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
  "slug": "exists-lift-sigma--aaa33e086247930484b0107a",
  "source": {
    "blob": "77dfede767bde51c67f24f0c1e4d3ee493dc6446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/Sigma/Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaa33e086247930484b0107a62e146f92c15c8a97bb312c3c703d7857642f1e2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sigma/Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92ae10b3-dd9b-9e4f-5dcb-3234e5da95ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lift_sigma (f : C(X, Σ i, Y i)) : ∃ i g, f = (sigmaMk i).comp g :=
  let ⟨i, g, hg, hfg⟩ := f.continuous.exists_lift_sigma
  ⟨i, ⟨g, hg⟩, FunLike.ext' hfg⟩

variable (X Y)

/-- Homeomorphism between the type `C(X, Σ i, Y i)` of continuous maps from a connected topological
space to the disjoint union of a family of topological spaces and the disjoint union of the types of
continuous maps `C(X, Y i)`.

The inverse map sends `⟨i, g⟩` to `ContinuousMap.comp (ContinuousMap.sigmaMk i) g`. -/
@[simps! symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sigma/Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sigma/Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77dfede767bde51c67f24f0c1e4d3ee493dc6446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
