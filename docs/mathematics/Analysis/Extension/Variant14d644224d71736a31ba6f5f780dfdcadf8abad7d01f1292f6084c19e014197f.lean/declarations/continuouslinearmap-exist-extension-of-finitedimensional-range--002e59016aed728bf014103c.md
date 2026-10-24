# ContinuousLinearMap.exist_extension_of_finiteDimensional_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97a31806-3fd2-6fbf-4dfe-130cd92e5cff",
  "kind": "lemma",
  "lexical_name": "ContinuousLinearMap.exist_extension_of_finiteDimensional_range",
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
  "slug": "continuouslinearmap-exist-extension-of-finitedimensional-range--002e59016aed728bf014103c",
  "source": {
    "blob": "311621f36dc94b35e1acf4da32ec6bda07b16988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 130,
    "path": "GRWTSK/Analysis/Extension/Variant14d644224d71736a31ba6f5f780dfdcadf8abad7d01f1292f6084c19e014197f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:002e59016aed728bf014103cad425c12fd8733bbfef8e4f188f42126ce40bb66",
  "verification": {
    "reference": "docs/verification/Analysis/Extension/Variant14d644224d71736a31ba6f5f780dfdcadf8abad7d01f1292f6084c19e014197f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97a31806-3fd2-6fbf-4dfe-130cd92e5cff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousLinearMap.exist_extension_of_finiteDimensional_range {p : Submodule 𝕜 E}
    (f : p →L[𝕜] F) [FiniteDimensional 𝕜 (LinearMap.range f)] :
    ∃ g : E →L[𝕜] F, f = g.comp p.subtypeL := by
  letI : RCLike 𝕜 := IsRCLikeNormedField.rclike 𝕜
  set b := Module.finBasis 𝕜 (LinearMap.range f)
  set e := b.equivFunL
  set fi := fun i ↦ (LinearMap.toContinuousLinearMap (b.coord i)).comp
    (f.codRestrict _ <| LinearMap.mem_range_self _)
  choose gi hgf _ using fun i ↦ exists_extension_norm_eq p (fi i)
  use (LinearMap.range f).subtypeL.comp <| e.symm.toContinuousLinearMap.comp (.pi gi)
  ext x
  simp [fi, e, hgf]

/-- A finite dimensional submodule over `ℝ` or `ℂ` is `Submodule.ClosedComplemented`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Extension/Variant14d644224d71736a31ba6f5f780dfdcadf8abad7d01f1292f6084c19e014197f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Extension/Variant14d644224d71736a31ba6f5f780dfdcadf8abad7d01f1292f6084c19e014197f.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `311621f36dc94b35e1acf4da32ec6bda07b16988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
