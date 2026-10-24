# actualInitialPrimeMellin_on_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91ce4d10-8cac-ae4a-e77d-c77146e6f368",
  "kind": "theorem",
  "lexical_name": "actualInitialPrimeMellin_on_half",
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
  "slug": "actualinitialprimemellin-on-half--d7f96520ced51302f2d4042c",
  "source": {
    "blob": "7ae5dc212d1ae721de7cc67846d1377b914ec55d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionary/Variant3cf63bd047d1f7c431cd7710a82f52415c7938840d3a83cb70d7b04b86b5231e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7f96520ced51302f2d4042cc3d8194a3cd255997a52ce00aeebb59889feefdf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionary/Variant3cf63bd047d1f7c431cd7710a82f52415c7938840d3a83cb70d7b04b86b5231e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91ce4d10-8cac-ae4a-e77d-c77146e6f368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInitialPrimeMellin_on_half (A t : ℝ) :
    actualInitialPrimeMellin A ((1 / 2 : ℂ) + (t : ℂ) * Complex.I) =
      paperFT (fun u => (sourceCorrelation explicitSecondDerivative A u : ℂ)) (t : ℂ) := by
  rw [actualInitialPrimeMellin_eq_Hfn]
  unfold WeilEF.Hfn
  congr 1
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionary/Variant3cf63bd047d1f7c431cd7710a82f52415c7938840d3a83cb70d7b04b86b5231e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionary/Variant3cf63bd047d1f7c431cd7710a82f52415c7938840d3a83cb70d7b04b86b5231e.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ae5dc212d1ae721de7cc67846d1377b914ec55d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
