# comp_hasStrictFDerivAt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8909529f-f819-2e6e-00f2-6bc9fbd748e7",
  "kind": "theorem",
  "lexical_name": "comp_hasStrictFDerivAt_iff",
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
  "slug": "comp-hasstrictfderivat-iff--7dfc2415d89cde4d66ca6a96",
  "source": {
    "blob": "18fdffc1134922d0fe471ae56cdec78fd2355d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 329,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantbaf1e016dc2cfd65c4ec51e9e716d72899f77416221e98126dbe472baf310ec0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dfc2415d89cde4d66ca6a96660bfd31f97308fee4e7631eb4e78952962d6d15",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantbaf1e016dc2cfd65c4ec51e9e716d72899f77416221e98126dbe472baf310ec0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8909529f-f819-2e6e-00f2-6bc9fbd748e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_hasStrictFDerivAt_iff {f : G → E} {x : G} {f' : G →L[𝕜] E} :
    HasStrictFDerivAt (iso ∘ f) ((iso : E →L[𝕜] F).comp f') x ↔ HasStrictFDerivAt f f' x :=
  (iso : E ≃L[𝕜] F).comp_hasStrictFDerivAt_iff
#align linear_isometry_equiv.comp_has_strict_fderiv_at_iff LinearIsometryEquiv.comp_hasStrictFDerivAt_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantbaf1e016dc2cfd65c4ec51e9e716d72899f77416221e98126dbe472baf310ec0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantbaf1e016dc2cfd65c4ec51e9e716d72899f77416221e98126dbe472baf310ec0.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18fdffc1134922d0fe471ae56cdec78fd2355d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
