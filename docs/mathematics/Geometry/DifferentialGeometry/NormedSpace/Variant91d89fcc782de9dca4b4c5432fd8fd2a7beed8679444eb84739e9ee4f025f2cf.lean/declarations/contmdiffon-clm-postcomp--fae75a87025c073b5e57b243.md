# ContMDiffOn.clm_postcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89f03671-da86-9f28-279d-1508f97d137f",
  "kind": "theorem",
  "lexical_name": "ContMDiffOn.clm_postcomp",
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
  "slug": "contmdiffon-clm-postcomp--fae75a87025c073b5e57b243",
  "source": {
    "blob": "b9ade02ad2a047daf2f3c9ddf8e0a92742e87e90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 156,
    "path": "GRWTSK/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fae75a87025c073b5e57b243c2aac919d760c3f11ebc643243013e7492c7ee45",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89f03671-da86-9f28-279d-1508f97d137f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem ContMDiffOn.clm_postcomp {f : M → F₂ →L[𝕜] F₃} {s : Set M}
    (hf : ContMDiffOn I 𝓘(𝕜, F₂ →L[𝕜] F₃) n f s) :
    ContMDiffOn I 𝓘(𝕜, (F₁ →L[𝕜] F₂) →L[𝕜] (F₁ →L[𝕜] F₃)) n
      (fun y ↦ (f y).postcomp F₁ : M → (F₁ →L[𝕜] F₂) →L[𝕜] (F₁ →L[𝕜] F₃)) s := fun x hx ↦
  (hf x hx).clm_postcomp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9ade02ad2a047daf2f3c9ddf8e0a92742e87e90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
