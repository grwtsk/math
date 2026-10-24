# ContMDiffWithinAt.clm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e6b0e5c-bb02-8106-1781-76524a4b8206",
  "kind": "theorem",
  "lexical_name": "ContMDiffWithinAt.clm_apply",
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
  "slug": "contmdiffwithinat-clm-apply--557ee7afbcc6272dcd2e4d31",
  "source": {
    "blob": "b9ade02ad2a047daf2f3c9ddf8e0a92742e87e90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 190,
    "path": "GRWTSK/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:557ee7afbcc6272dcd2e4d31dff4abda8368cbabc884edde0175781b89a570c6",
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

Occurrence: `result:6e6b0e5c-bb02-8106-1781-76524a4b8206`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffWithinAt.clm_apply {g : M → F₁ →L[𝕜] F₂} {f : M → F₁} {s : Set M} {x : M}
    (hg : ContMDiffWithinAt I 𝓘(𝕜, F₁ →L[𝕜] F₂) n g s x)
    (hf : ContMDiffWithinAt I 𝓘(𝕜, F₁) n f s x) :
    ContMDiffWithinAt I 𝓘(𝕜, F₂) n (fun x => g x (f x)) s x :=
  ContDiffWithinAt.comp_contMDiffWithinAt (t := univ)
    (g := fun x : (F₁ →L[𝕜] F₂) × F₁ => x.1 x.2)
    (by apply ContDiff.contDiffAt; exact contDiff_fst.clm_apply contDiff_snd) (hg.prodMk_space hf)
    (by simp_rw [preimage_univ, subset_univ])

/-- Applying a linear map to a vector is smooth. Version in vector spaces. For a
version in nontrivial vector bundles, see `ContMDiffAt.clm_apply_of_inCoordinates`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/NormedSpace/Variant91d89fcc782de9dca4b4c5432fd8fd2a7beed8679444eb84739e9ee4f025f2cf.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9ade02ad2a047daf2f3c9ddf8e0a92742e87e90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
