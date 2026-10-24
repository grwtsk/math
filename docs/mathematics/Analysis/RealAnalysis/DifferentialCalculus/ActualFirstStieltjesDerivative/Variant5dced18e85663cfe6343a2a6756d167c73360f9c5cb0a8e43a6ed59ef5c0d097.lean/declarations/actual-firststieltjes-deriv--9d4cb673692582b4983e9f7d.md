# actual_firstStieltjes_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f9a9461-ecfc-6d5d-b4a2-0c9c84325fe8",
  "kind": "theorem",
  "lexical_name": "actual_firstStieltjes_deriv",
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
  "slug": "actual-firststieltjes-deriv--9d4cb673692582b4983e9f7d",
  "source": {
    "blob": "fbdb1357a1943c60943a3aba321fc4458659ae92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 22,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstStieltjesDerivative/Variant5dced18e85663cfe6343a2a6756d167c73360f9c5cb0a8e43a6ed59ef5c0d097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d4cb673692582b4983e9f7d4c34c7a19e8e559cbbb9bca529e987b18e10ece3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstStieltjesDerivative/Variant5dced18e85663cfe6343a2a6756d167c73360f9c5cb0a8e43a6ed59ef5c0d097.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f9a9461-ecfc-6d5d-b4a2-0c9c84325fe8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_firstStieltjes_deriv :
    deriv riemannZeta₀ (1 : ℂ) = -(firstStieltjesConstant : ℂ) :=
  ActualStieltjesBoundary.actual_regular_zeta_derivative_of_termTSum
    ActualStieltjesParameter.termTSum_hasDerivAt_one

/-- Genuine complex derivative, stronger than a totalized `deriv` equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstStieltjesDerivative/Variant5dced18e85663cfe6343a2a6756d167c73360f9c5cb0a8e43a6ed59ef5c0d097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstStieltjesDerivative/Variant5dced18e85663cfe6343a2a6756d167c73360f9c5cb0a8e43a6ed59ef5c0d097.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbdb1357a1943c60943a3aba321fc4458659ae92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
