# weylFunction_herglotz_iff_kernelPositive_of_representation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b16ec295-7344-1e64-7b97-78d6acdb1584",
  "kind": "theorem",
  "lexical_name": "weylFunction_herglotz_iff_kernelPositive_of_representation",
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
  "slug": "weylfunction-herglotz-iff-kernelpositive-of-representation--b1a612ea97ab901fe8eb25ad",
  "source": {
    "blob": "ef5e7628b6908754b09cad2b42b690ff55229cba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant5d68e66fa5724f58cad48a09d5eaded1e971a734d2d3781f6049367af73c2eff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1a612ea97ab901fe8eb25ad69598a7fc8d47070d9e7442fbec8d3449771b9aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant5d68e66fa5724f58cad48a09d5eaded1e971a734d2d3781f6049367af73c2eff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b16ec295-7344-1e64-7b97-78d6acdb1584`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weylFunction_herglotz_iff_kernelPositive_of_representation
    (hRepresentation : HerglotzImpliesPositiveNevanlinnaKernel) :
    IsHerglotz conductorThreeWeylFunction ↔
      DifferentiableOn ℂ conductorThreeWeylFunction upperHalfPlane ∧
      HasPositiveNevanlinnaKernel conductorThreeWeylFunction := by
  constructor
  · intro hHerglotz
    exact ⟨hHerglotz.1, hRepresentation _ hHerglotz⟩
  · rintro ⟨hDiff, hKernel⟩
    exact isHerglotz_of_positiveKernel hDiff hKernel

/-- Conditional composition of the proposed GRH/kernel criterion, with both
nontrivial analytic ingredients visible at the call site. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant5d68e66fa5724f58cad48a09d5eaded1e971a734d2d3781f6049367af73c2eff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant5d68e66fa5724f58cad48a09d5eaded1e971a734d2d3781f6049367af73c2eff.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef5e7628b6908754b09cad2b42b690ff55229cba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
